-- Path of Building
--
-- Module: Mod Parser for 3.0
-- Parser function for modifier names
--
local launch=...
local pairs = pairs
local ipairs = ipairs
local t_insert = table.insert
local band = bit.band
local bor = bit.bor
local bnot = bit.bnot

-- List of modifier forms
local formList = {
	--【中文化程序额外添加开始】
	["延长 (%d+)%%"] = "INC", --备注：^(%d+)%% increased
	["扩大 (%d+)%%"] = "INC", --备注：^(%d+)%% increased
	["提高 %+([%d%.]+)%%"] = "BASE", 	
	["获得 ([%+%-][%d%.]+)%%?"] = "BASE",
	["附加 ([%+%-][%d%.]+)%%?"] = "BASE",
	["有 ([%+%-]?%d+)%% 几率"] = "CHANCE", --备注：^([%+%-]?%d+)%% chance
	["([%+%-][%d%.]+)%%?"] = "BASE",
	["([%+%-]?[%d%.]+)%%? 额外"] = "BASE", 
	["([%+%-]?[%d%.]+)%%? 的"] = "BASE", 
	["可以穿透? (%d+)%%"] = "PEN", --备注：penetrates? (%d+)%%
	["有额外 ([%+%-]?%d+)%% 几率"] = "CHANCE", --备注：^([%+%-]?%d+)%% chance
	["穿透敌人? (%d+)%% 的"] = "PEN", --备注：penetrates? (%d+)%%
	["缩短 (%d+)%%"] = "RED",
	["缩小 (%d+)%%"] = "RED",
	["穿透其 (%d+)%%"] = "PEN", --备注：penetrates? (%d+)%%
	["攻击和法术附加 (%d+)%-(%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGBOTH", --备注：adds (%d+) to (%d+) (%a+) damage to attacks and spells
	["附加 (%d+)%-(%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMG",
	["额外造成 (%d+) %- (%d+) ([^\\x00-\\xff]*)伤害"] = "DMG",
	["造成 (%d+) %- (%d+) ([^\\x00-\\xff]*)伤害"] = "DMG",
	["法术附加 (%d+) %- (%d+) ([^\\x00-\\xff]*)伤害"] = "DMGSPELLS", --备注：adds (%d+)%-(%d+) (%a+) spell damage
	["增加 (%d+)%%"] = "INC",
	["附加 (%d+) %- (%d+) ([^\\x00-\\xff]*)伤害"] = "DMG",
	--【中文化程序额外添加结束】
	["提高 (%d+)%%"] = "INC", --备注：^(%d+)%% increased
	["比平常快 (%d+)%%"] = "INC", --备注：^(%d+)%% faster
	["降低 (%d+)%%"] = "RED", --备注：^(%d+)%% reduced
	["延后 (%d+)%%"] = "RED", --备注：^(%d+)%% slower
	["([^\\x00-\\xff]*)总([^\\x00-\\xff]*)额外提高 (%d+)%%"] = "MORE", --备注：^(%d+)%% more
	["([^\\x00-\\xff]*)总([^\\x00-\\xff]*)额外降低 (%d+)%%"] = "LESS", --备注：^(%d+)%% less
	["^([%+%-][%d%.]+)%%?"] = "BASE",
	["^([%+%-][%d%.]+)%%? to"] = "BASE",
	["^([%+%-]?[%d%.]+)%%? of"] = "BASE",
	["([%+%-][%d%.]+)%%? 点"] = "BASE", --备注：^([%+%-][%d%.]+)%%? base
	["额外(.*) ([%+%-]?[%d%.]+)%%? (.*)"] = "BASE", --备注：^([%+%-]?[%d%.]+)%%? additional
	["你获得 ([%d%.]+)"] = "BASE", --备注：^you gain ([%d%.]+)
	["^gains? ([%d%.]+)%% of"] = "BASE",
	["([%+%-]?%d+)%% 几率"] = "CHANCE", --备注：^([%+%-]?%d+)%% chance
	["^([%+%-]?%d+)%% additional chance"] = "CHANCE",
	["穿透? (%d+)%%"] = "PEN", --备注：penetrates? (%d+)%%
	["penetrates (%d+)%% of"] = "PEN",
	["penetrates (%d+)%% of enemy"] = "PEN",
	["^([%d%.]+) (.+) regenerated per second"] = "REGENFLAT",
	["^([%d%.]+)%% (.+) regenerated per second"] = "REGENPERCENT",
	["每秒回复 ([%d%.]+)%% ([^\\x00-\\xff]*)"] = "REGENPERCENT", --备注：^([%d%.]+)%% of (.+) regenerated per second
	["^regenerate ([%d%.]+) (.+) per second"] = "REGENFLAT",
	["^regenerate ([%d%.]+)%% (.+) per second"] = "REGENPERCENT",
	["^regenerate ([%d%.]+)%% of (.+) per second"] = "REGENPERCENT",
	["^regenerate ([%d%.]+)%% of your (.+) per second"] = "REGENPERCENT",
	["每秒受到 ([%d%.]+) (%a+)伤害"] = "DEGEN", --备注：^([%d%.]+) (%a+) damage taken per second
	["^([%d%.]+) (%a+) damage per second"] = "DEGEN",
	["(%d+) to (%d+) added (%a+) damage"] = "DMG",
	["(%d+)%-(%d+) added (%a+) damage"] = "DMG",
	["(%d+) to (%d+) additional (%a+) damage"] = "DMG",
	["(%d+)%-(%d+) additional (%a+) damage"] = "DMG",
	["^(%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMG", --备注：^(%d+) to (%d+) (%a+) damage
	["附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMG", --备注：adds (%d+) to (%d+) (%a+) damage
	["附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMG", --备注：adds (%d+)%-(%d+) (%a+) damage
	["攻击附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGATTACKS", --备注：adds (%d+) to (%d+) (%a+) damage to attacks
	["攻击附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGATTACKS", --备注：adds (%d+)%-(%d+) (%a+) damage to attacks
	["攻击附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGATTACKS", --备注：adds (%d+) to (%d+) (%a+) attack damage
	["攻击附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGATTACKS", --备注：adds (%d+)%-(%d+) (%a+) attack damage
	["法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGSPELLS", --备注：adds (%d+) to (%d+) (%a+) damage to spells
	["法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGSPELLS", --备注：adds (%d+)%-(%d+) (%a+) damage to spells
	["法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGSPELLS", --备注：adds (%d+) to (%d+) (%a+) spell damage
	["法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGSPELLS", --备注：adds (%d+)%-(%d+) (%a+) spell damage
	["攻击和法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGBOTH", --备注：adds (%d+) to (%d+) (%a+) damage to attacks and spells
	["攻击和法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGBOTH", --备注：adds (%d+)%-(%d+) (%a+) damage to attacks and spells
	["攻击和法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGBOTH", -- o_O --备注：adds (%d+) to (%d+) (%a+) damage to spells and attacks
	["攻击和法术附加 (%d+) %- (%d+) 基础([^\\x00-\\xff]*)伤害"] = "DMGBOTH", -- o_O --备注：adds (%d+)%-(%d+) (%a+) damage to spells and attacks
	["adds (%d+) to (%d+) (%a+) damage to hits"] = "DMGBOTH",
	["adds (%d+)%-(%d+) (%a+) damage to hits"] = "DMGBOTH",
}

-- Map of modifier names
local modNameList = {
	--【中文化程序额外添加开始】
	["不被攻击击中"] = "AttackDodgeChance", 
	["攻击和法术暴击伤害加成"] = {"CritMultiplier"}, --备注：critical strike multiplier -- 这个需要提到前面来
	["攻击和法术基础暴击伤害加成"] = {"CritMultiplier", ModFlag.Hit}, --备注：critical strike multiplier -- 
	["攻击和法术暴击伤害"] = {"CritMultiplier", ModFlag.Hit}, --备注：critical strike multiplier -- 
	["攻击与法术暴击率"] = { "CritChance" , tag = { type = "Global" }},
	["攻击和法术暴击率"] = { "CritChance" , tag = { type = "Global" }},
	["总魔力保留"] = "ManaReserved",
	["药剂持续期间间"] = "FlaskDuration",-- 官网的sx翻译
	["闪电伤害击中时有 ([%+%-]?%d+)%% 几率使敌人受到感电效果影响"] = "EnemyShockChance", --备注：to shock
	["法杖攻击伤害"] = {"Damage",  flags = ModFlag.Wand }, 
	["诅咒范围扩大"] = function(num) return {  mod("AreaOfEffect", "INC", num,nil, KeywordFlag.Curse)  } end,
	["冰冻"] = "EnemyFreezeChance", --备注：to freeze
	["攻击与施法速度"] = "Speed", --备注：attack and cast speed
	["攻击造成的物理伤害"] = { "PhysicalDamage", flags = ModFlag.Attack }, --备注：physical attack damage
	["物理伤害减伤"] = "PhysicalDamageReduction", --备注：physical damage reduction
	["造成流血"] = "BleedChance",
	["元素抗性"] = "ElementalResist", --备注：all elemental resistances
	["范围效果的"] = "AreaOfEffect", --备注：area of effect
	["火焰、冰霜、闪电伤害的"] = "ElementalDamage", --备注：elemental damage
	["火焰伤害的"] = "FireDamage", --备注：fire damage
	["其伤害的"] = "Damage", --备注：damage
	["受到的火焰、冰霜、闪电伤害"] = "ElementalDamageTaken", --备注：damage taken
	["攻击和法术基础暴击率"] = "CritChance", --备注：critical strike chance
	["受到的伤害"] = "DamageTaken", --备注：damage taken
	["躲避法术伤害击中"] = "SpellDodgeChance", --备注：to dodge spells
	["最大能力护盾"] = "EnergyShield", --备注：maximum energy shield fuck国服翻译
	["受到的持续性伤害"] ="DamageTakenOverTime", --备注：damage over time
	["中毒持续时间便"] = { "EnemyPoisonDuration" }, --备注：poison duration
	["造成流血"] = "BleedChance", --备注：to cause bleeding
	["造成中毒"] = "PoisonChance",
	["所有属性"] = { "Str", "Dex", "Int" }, --备注：all attributes
	["造成冰冻、感电与点燃效果"] = { "EnemyFreezeChance", "EnemyShockChance", "EnemyIgniteChance" }, --备注：to freeze, shock and ignite
	["能量护盾回复速度"] = "EnergyShieldRecharge", --备注：energy shield recharge rate
	["晕眩和格挡回复"] = "StunRecovery", --备注：stun recovery
	["获得的充能数"] = "FlaskChargesGained", --备注：flask charges gained
	["武器攻击范围"] = "WeaponRange",
	["该装备的闪避与能量护盾"] = "EvasionAndEnergyShield", --备注：evasion and energy shield
	["闪避与能量护盾"] = "EvasionAndEnergyShield",
	["该装备的护甲与能量护盾"] = "ArmourAndEnergyShield", 
	["护甲与能量护盾"] = "ArmourAndEnergyShield", 
	["该装备的护甲与闪避"] = "ArmourAndEvasion",
	["护甲与闪避"] = "ArmourAndEvasion",
	["护甲、闪避和能量护盾"] = "Defences",
	["该装备的护甲、闪避和能量护盾"] = "Defences",
	["该装备的护甲"] = "Armour", --备注：armour
	["该装备的闪避值"] = "Evasion",
	["该装备的能量护盾"] = "EnergyShield", 
	["火焰与冰霜抗性"] = { "FireResist", "ColdResist" }, --备注：fire and cold resistances
	["火焰与闪电抗性"] = { "FireResist", "LightningResist" }, --备注：fire and lightning resistances
	["冰霜与闪电抗性"] = { "ColdResist", "LightningResist" }, --备注：cold and lightning resistances
	["对敌人的感电效果持续时间"] = "EnemyShockDuration", --备注：shock duration
	["的攻击格挡率套用于法术格挡"] = "BlockChanceConv",
	["格挡法术"] = "SpellBlockChance", --备注：to block spells
	["法术伤害格挡几率"] = "SpellBlockChance", --备注：to block spells
	["格挡法术伤害"] = "SpellBlockChance",
	["格挡攻击"] = "BlockChance", --备注：block chance
	["攻击伤害格挡几率"] = "BlockChance", --备注：block chance
	["基础暴击伤害加成"] = "CritMultiplier", --备注：critical strike multiplier
	["全部抗性上限"] = { "FireResistMax", "ColdResistMax", "LightningResistMax", "ChaosResistMax" }, --备注：all maximum resistances
	["火焰、冰霜、闪电伤害"] = "ElementalDamage", --备注：elemental damage
	["武器物理伤害"] = { "PhysicalDamage", flags = ModFlag.Weapon }, --备注：physical weapon damage
	["攻击造成的投射物伤害"] = { "Damage", flags = bor(ModFlag.Projectile, ModFlag.Attack) },
	["最大闪避值"] = "Evasion",
	["击中伤害和异常状态伤害"] = { "Damage",  keywordFlags = bor(KeywordFlag.Hit, KeywordFlag.Ailment)}, --备注：attack damage
	["【闪电之捷】的增益效果"] = { "BuffEffect", tag = { type = "SkillName", skillName = "闪电之捷" } },
	["你造成的中毒持续时间"] = { "EnemyPoisonDuration" }, --备注：duration of poisons you inflict
	["物品数量"] = "LootQuantity",
	["持续伤害"] = { "Damage", flags = ModFlag.Dot }, 
	["生效期间，"] = "FlaskDuration",
	["瓦尔技能的伤害"] = { "Damage",keywordFlags = KeywordFlag.Vaal },
	["法术格挡几率"] = "SpellBlockChance", --备注：to block spells
	["护甲值"] = "Armour", --备注：armour
	["免疫流血"] = "AvoidBleed", 
	["被击中后中毒"] = "PoisonChance", --备注：to poison on hit
	["持续性物理伤害"] = { "PhysicalDamage", flags = ModFlag.Dot },
	["基础暴击率"] = "CritChance", --备注：critical strike chance
	["攻击基础暴击率"] = { "CritChance", flags = ModFlag.Attack },
	["投射物的攻击伤害"] = { "Damage", flags = bor(ModFlag.Projectile, ModFlag.Attack) },
	["受到的混沌伤害"] = "ChaosDamageTaken",
	["物品掉落稀有度"] = "LootRarity", --备注：rarity of items found
	["近战武器范围"] = "MeleeWeaponRange",
	["法术伤害"] = {"Damage",  flags = ModFlag.Spell }, 
	["点燃敌人"] = "EnemyIgniteChance", --备注：to ignite
	["力量与敏捷"] = { "Str", "Dex" }, --备注：strength and dexterity
	["力量与智慧"] = { "Str", "Int" }, --备注：strength and intelligence
	["敏捷与智慧"] = { "Dex", "Int" }, --备注：dexterity and intelligence
	["攻击和法术伤害格挡几率上限"] = "BlockChanceMax", 
	["混沌技能的范围"] = { "AreaOfEffect", keywordFlags = KeywordFlag.Chaos },
	["格挡法术伤害"] = "SpellBlockChance", --备注：to block spells
	["攻击及法术伤害格挡几率"] = { "BlockChance", "SpellBlockChance" },
	--【中文化程序额外添加结束】
	-- Attributes
	["力量"] = "Str", --备注：strength
	["敏捷"] = "Dex", --备注：dexterity
	["智慧"] = "Int", --备注：intelligence
	["力量和敏捷"] = { "Str", "Dex" }, --备注：strength and dexterity
	["力量和智慧"] = { "Str", "Int" }, --备注：strength and intelligence
	["敏捷和智慧"] = { "Dex", "Int" }, --备注：dexterity and intelligence
	["属性"] = { "Str", "Dex", "Int" }, --备注：attributes
	["全属性"] = { "Str", "Dex", "Int" }, --备注：all attributes
	-- Life/mana
	["生命"] = "Life", --备注：life
	["最大生命"] = "Life", --备注：maximum life
	["魔力"] = "Mana", --备注：mana
	["最大魔力"] = "Mana", --备注：maximum mana
	["魔力回复"] = "ManaRegen", --备注：mana regeneration
	["魔力回复速度"] = "ManaRegen", --备注：mana regeneration rate
	["魔力消耗"] = "ManaCost", --备注：mana cost
	["魔力消耗"] = "ManaCost", --备注：mana cost of
	["技能魔力消耗"] = "ManaCost", --备注：mana cost of skills
	["技能的总魔力消耗"] = "ManaCost", --备注：total mana cost of skills
	["魔力保留"] = "ManaReserved", --备注：mana reserved
	["魔力保留"] = "ManaReserved", --备注：mana reservation
	["^技能的魔力保留"] = "ManaReserved", --备注：mana reservation of skills
	-- Primary defences
	["最大能量护盾"] = "EnergyShield", --备注：maximum energy shield
	["能量护盾的回复速度"] = "EnergyShieldRecharge", --备注：energy shield recharge rate
	["能量护盾启动回复"] = "EnergyShieldRechargeFaster", --备注：start of energy shield recharge
	["护甲"] = "Armour", --备注：armour
	["evasion"] = "Evasion",
	["闪避值"] = "Evasion", --备注：evasion rating
	["能量护盾"] = "EnergyShield", --备注：energy shield
	["护甲和闪避"] = "ArmourAndEvasion", --备注：armour and evasion
	["护甲和闪避值"] = "ArmourAndEvasion", --备注：armour and evasion rating
	["闪避值与护甲"] = "ArmourAndEvasion", --备注：evasion rating and armour
	["护甲与能量护盾"] = "ArmourAndEnergyShield", --备注：armour and energy shield
	["闪避值和能量护盾"] = "EvasionAndEnergyShield", --备注：evasion rating and energy shield
	["闪避和能量护盾"] = "EvasionAndEnergyShield", --备注：evasion and energy shield
	["护甲、闪避和能量护盾"] = "Defences", --备注：armour, evasion and energy shield
	["防御"] = "Defences", --备注：defences
	["to evade"] = "EvadeChance",
	["chance to evade"] = "EvadeChance",
	["to evade attacks"] = "EvadeChance",
	["闪避攻击"] = "EvadeChance", --备注：chance to evade attacks
	["chance to evade projectile attacks"] = "ProjectileEvadeChance",
	["chance to evade melee attacks"] = "MeleeEvadeChance",
	-- Resistances
	["物理伤害减免"] = "PhysicalDamageReduction", --备注：physical damage reduction
	["physical damage reduction from hits"] = "PhysicalDamageReductionWhenHit",
	["火焰抗性"] = "FireResist", --备注：fire resistance
	["火焰抗性上限"] = "FireResistMax", --备注：maximum fire resistance
	["冰霜抗性"] = "ColdResist", --备注：cold resistance
	["冰霜抗性上限"] = "ColdResistMax", --备注：maximum cold resistance
	["闪电抗性"] = "LightningResist", --备注：lightning resistance
	["闪电抗性上限"] = "LightningResistMax", --备注：maximum lightning resistance
	["混沌抗性"] = "ChaosResist", --备注：chaos resistance
	["火焰和冰霜抗性"] = { "FireResist", "ColdResist" }, --备注：fire and cold resistances
	["火焰和闪电抗性"] = { "FireResist", "LightningResist" }, --备注：fire and lightning resistances
	["冰霜和闪电抗性"] = { "ColdResist", "LightningResist" }, --备注：cold and lightning resistances
	["获得 ([%+%-]?%d+)%% 火焰、冰霜、闪电抗性"] = "ElementalResist", --备注：elemental resistances
	["火焰、冰霜、闪电抗性"] = "ElementalResist", --备注：all elemental resistances
	["所有抗性"] = { "ElementalResist", "ChaosResist" }, --备注：all resistances
	["火焰、冰霜、闪电抗性上限"] = { "FireResistMax", "ColdResistMax", "LightningResistMax" }, --备注：all maximum elemental resistances
	["所有属性的最大抗性上限"] = { "FireResistMax", "ColdResistMax", "LightningResistMax", "ChaosResistMax" }, --备注：all maximum resistances
	-- Damage taken
	["承受的伤害"] = "DamageTaken", --备注：damage taken
	["被击中时承受额外"] = "DamageTakenWhenHit", --备注：damage taken when hit
	["damage taken from damage over time"] = "DamageTakenOverTime",
	["受到的物理伤害"] = "PhysicalDamageTaken", --备注：physical damage taken
	["受到击中物理伤害的"] = "PhysicalDamageTaken", --备注：physical damage from hits taken
	["physical damage taken when hit"] = "PhysicalDamageTakenWhenHit",
	["physical damage taken over time"] = "PhysicalDamageTakenOverTime",
	["承受的闪电伤害"] = "LightningDamageTaken", --备注：lightning damage taken
	["lightning damage from hits taken"] = "LightningDamageTaken",
	["lightning damage taken when hit"] = "LightningDamageTakenWhenHit",
	["lightning damage taken over time"] = "LightningDamageTakenOverTime",
	["承受的冰霜伤害"] = "ColdDamageTaken", --备注：cold damage taken
	["cold damage from hits taken"] = "ColdDamageTaken",
	["cold damage taken when hit"] = "ColdDamageTakenWhenHit",
	["cold damage taken over time"] = "ColdDamageTakenOverTime",
	["受到的火焰伤害"] = "FireDamageTaken", --备注：fire damage taken
	["fire damage from hits taken"] = "FireDamageTaken",
	["fire damage taken when hit"] = "FireDamageTakenWhenHit",
	["fire damage taken over time"] = "FireDamageTakenOverTime",
	["承受的混沌伤害"] = "ChaosDamageTaken", --备注：chaos damage taken
	["chaos damage from hits taken"] = "ChaosDamageTaken",
	["chaos damage taken when hit"] = "ChaosDamageTakenWhenHit",
	["受到的持续性混沌伤害"] = "ChaosDamageTakenOverTime", --备注：chaos damage taken over time
	["承受的元素伤害"] = "ElementalDamageTaken", --备注：elemental damage taken
	["被击中时受到的火焰、冰霜、闪电伤害"] = "ElementalDamageTakenWhenHit", --备注：elemental damage taken when hit
	["elemental damage taken over time"] = "ElementalDamageTakenOverTime",
	-- Other defences
	["to dodge attacks"] = "AttackDodgeChance",
	["躲避攻击击中"] = "AttackDodgeChance", --备注：to dodge attack hits
	["躲避法术击中"] = "SpellDodgeChance", --备注：to dodge spells
	["to dodge spell hits"] = "SpellDodgeChance",
	["to dodge spell damage"] = "SpellDodgeChance",
	["躲避攻击和法术击中"] = { "AttackDodgeChance", "SpellDodgeChance" }, --备注：to dodge attacks and spells
	["to dodge attacks and spell damage"] = { "AttackDodgeChance", "SpellDodgeChance" },
	["to dodge attack and spell hits"] = { "AttackDodgeChance", "SpellDodgeChance" },
	["to block"] = "BlockChance",
	["to block attacks"] = "BlockChance",
	["to block attack damage"] = "BlockChance",
	["攻击格挡率"] = "BlockChance", --备注：block chance
	["block chance with staves"] = { "BlockChance", tag = { type = "Condition", var = "UsingStaff" } },
	["to block with staves"] = { "BlockChance", tag = { type = "Condition", var = "UsingStaff" } },
	["spell block chance"] = "SpellBlockChance",
	["法术格挡率"] = "SpellBlockChance", --备注：to block spells
	["to block spell damage"] = "SpellBlockChance",
	["攻击及法术格挡率"] = { "BlockChance", "SpellBlockChance" }, --备注：chance to block attacks and spells
	["攻击和法术格挡率上限"] = "BlockChanceMax", --备注：maximum block chance
	["maximum chance to block attack damage"] = "BlockChanceMax",
	["maximum chance to block spell damage"] = "SpellBlockChanceMax",
	["避免被晕眩"] = "AvoidStun", --备注：to avoid being stunned
	["避免被感电"] = "AvoidShock", --备注：to avoid being shocked
	["避免被冰冻"] = "AvoidFrozen", --备注：to avoid being frozen
	["避免被冰缓"] = "AvoidChilled", --备注：to avoid being chilled
	["避免被点燃"] = "AvoidIgnite", --备注：to avoid being ignited
	["避免元素异常状态"] = { "AvoidShock", "AvoidFrozen", "AvoidChilled", "AvoidIgnite" }, --备注：to avoid elemental ailments
	["to avoid elemental status ailments"] = { "AvoidShock", "AvoidFrozen", "AvoidChilled", "AvoidIgnite" },
	["避免被流血"] = "AvoidBleed", --备注：to avoid bleeding
	["的伤害优先从魔力扣除"] = "DamageTakenFromManaBeforeLife", --备注：damage is taken from mana before life
	["damage taken from mana before life"] = "DamageTakenFromManaBeforeLife",
	["你受到的诅咒效果"] = "CurseEffectOnSelf", --备注：effect of curses on you
	["生命回复速度"] = "LifeRecoveryRate", --备注：life recovery rate
	["mana recovery rate"] = "ManaRecoveryRate",
	["energy shield recovery rate"] = "EnergyShieldRecoveryRate",
	["recovery rate of life, mana and energy shield"] = { "LifeRecoveryRate", "ManaRecoveryRate", "EnergyShieldRecoveryRate" },
	-- Stun/knockback modifiers
	["晕眩回复和格挡回复"] = "StunRecovery", --备注：stun recovery
	["stun and block recovery"] = "StunRecovery",
	["block and stun recovery"] = "StunRecovery",
	["晕眩门槛"] = "StunThreshold", --备注：stun threshold
	["格挡回复"] = "BlockRecovery", --备注：block recovery
	["敌人晕眩门槛"] = "EnemyStunThreshold", --备注：enemy stun threshold
	["敌人被晕眩时间"] = "EnemyStunDuration", --备注：stun duration on enemies
	["晕眩时间"] = "EnemyStunDuration", --备注：stun duration
	["to knock enemies back on hit"] = "EnemyKnockbackChance",
	["击退距离"] = "EnemyKnockbackDistance", --备注：knockback distance
	-- Auras/curses/buffs
	["非诅咒类光环的效果"] = "AuraEffect", --备注：aura effect
	["effect of non-curse auras you cast"] = "AuraEffect",
	["effect of non-curse auras from your skills"] = "AuraEffect",
	["你所施放诅咒的效果"] = "CurseEffect", --备注：effect of your curses
	["你身上的光环效果"] = "AuraEffectOnSelf", --备注：effect of auras on you
	["召唤生物身上的光环效果"] = { "AuraEffectOnSelf", addToMinion = true }, --备注：effect of auras on your minions
	["curse effect"] = "CurseEffect",
	["诅咒持续时间"] = { "Duration", keywordFlags = KeywordFlag.Curse }, --备注：curse duration
	["radius of auras"] = { "AreaOfEffect", keywordFlags = KeywordFlag.Aura },
	["诅咒范围"] = { "AreaOfEffect", keywordFlags = KeywordFlag.Curse }, --备注：radius of curses
	["buff effect"] = "BuffEffect",
	["你身上的增益效果"] = "BuffEffectOnSelf", --备注：effect of buffs on you
	["魔像的增益效果"] = { "BuffEffect", tag = { type = "SkillType", skillType = SkillType.Golem } }, --备注：effect of buffs granted by your golems
	["effect of buffs granted by socketed golem skills"] = { "BuffEffect", addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "golem" } },
	["effect of the buff granted by your stone golems"] = { "BuffEffect", tag = { type = "SkillName", skillName = "召唤巨石魔像" } },
	["effect of the buff granted by your lightning golems"] = { "BuffEffect", tag = { type = "SkillName", skillName = "召唤闪电魔像" } },
	["effect of the buff granted by your ice golems"] = { "BuffEffect", tag = { type = "SkillName", skillName = "召唤寒冰魔像" } },
	["effect of the buff granted by your flame golems"] = { "BuffEffect", tag = { type = "SkillName", skillName = "召唤烈焰魔像" } },
	["effect of the buff granted by your chaos golems"] = { "BuffEffect", tag = { type = "SkillName", skillName = "召唤混沌魔像" } },
	["effect of offering spells"] = { "BuffEffect", tag = { type = "SkillName", skillNameList = { "Bone Offering", "Flesh Offering", "Spirit Offering" } } },
	["你身上的捷效果"] = { "BuffEffect", tag = { type = "SkillType", skillType = SkillType.Herald } }, --备注：effect of heralds on you
	["战吼的增益效果"] = { "BuffEffect", keywordFlags = KeywordFlag.Warcry }, --备注：warcry effect
	["【鸟之势】增益效果"] = { "BuffEffect", tag = { type = "SkillName", skillName = "鸟之势" } }, --备注：aspect of the avian buff effect
	-- Charges
	["暴击球数量上限"] = "PowerChargesMax", --备注：maximum power charge
	["暴击球数量上限"] = "PowerChargesMax", --备注：maximum power charges
	["暴击球的持续时间"] = "PowerChargesDuration", --备注：power charge duration
	["狂怒球数量上限"] = "FrenzyChargesMax", --备注：maximum frenzy charge
	["狂怒球数量上限"] = "FrenzyChargesMax", --备注：maximum frenzy charges
	["狂怒球持续时间"] = "FrenzyChargesDuration", --备注：frenzy charge duration
	["耐力球数量上限"] = "EnduranceChargesMax", --备注：maximum endurance charge
	["耐力球数量上限"] = "EnduranceChargesMax", --备注：maximum endurance charges
	["耐力球持续时间"] = "EnduranceChargesDuration", --备注：endurance charge duration
	["狂怒球和暴击球数量上限"] = { "FrenzyChargesMax", "PowerChargesMax" }, --备注：maximum frenzy charges and maximum power charges
	["耐力球，狂怒球，以及暴击球的持续时间"] = { "PowerChargesDuration", "FrenzyChargesDuration", "EnduranceChargesDuration" }, --备注：endurance, frenzy and power charge duration
	["最大轮回球"] = "SiphoningChargesMax", --备注：maximum siphoning charge
	["最大轮回球"] = "SiphoningChargesMax", --备注：maximum siphoning charges
	["【深海屏障】数量上限"] = "CrabBarriersMax", --备注：maximum number of crab barriers
	-- On hit/kill/leech effects
	["life gained on kill"] = "LifeOnKill",
	["mana gained on kill"] = "ManaOnKill",
	["life gained for each enemy hit"] = { "LifeOnHit" },
	["life gained for each enemy hit by attacks"] = { "LifeOnHit", flags = ModFlag.Attack },
	["life gained for each enemy hit by your attacks"] = { "LifeOnHit", flags = ModFlag.Attack },
	["life gained for each enemy hit by spells"] = { "LifeOnHit", flags = ModFlag.Spell },
	["life gained for each enemy hit by your spells"] = { "LifeOnHit", flags = ModFlag.Spell },
	["mana gained for each enemy hit by attacks"] = { "ManaOnHit", flags = ModFlag.Attack },
	["mana gained for each enemy hit by your attacks"] = { "ManaOnHit", flags = ModFlag.Attack },
	["energy shield gained for each enemy hit"] = { "EnergyShieldOnHit" },
	["energy shield gained for each enemy hit by attacks"] = { "EnergyShieldOnHit", flags = ModFlag.Attack },
	["energy shield gained for each enemy hit by your attacks"] = { "EnergyShieldOnHit", flags = ModFlag.Attack },
	["life and mana gained for each enemy hit"] = { "LifeOnHit", "ManaOnHit", flags = ModFlag.Attack },
	["damage as life"] = "DamageLifeLeech",
	["每秒生命偷取"] = "LifeLeechRate", --备注：life leeched per second
	["每秒魔力偷取"] = "ManaLeechRate", --备注：mana leeched per second
	["最大生命偷取率"] = "MaxLifeLeechRate", --备注：maximum life per second to maximum life leech rate
	["最大魔力偷取率"] = "MaxManaLeechRate", --备注：maximum mana per second to maximum mana leech rate
	-- Projectile modifiers
	["投射物"] = "ProjectileCount", --备注：projectile
	["投射物"] = "ProjectileCount", --备注：projectiles
	["投射物速度"] = "ProjectileSpeed", --备注：projectile speed
	["箭矢速度"] = { "ProjectileSpeed", flags = ModFlag.Bow }, --备注：arrow speed
	-- Totem/trap/mine modifiers
	["图腾放置速度"] = "TotemPlacementSpeed", --备注：totem placement speed
	["图腾的生命"] = "TotemLife", --备注：totem life
	["图腾的持续时间"] = "TotemDuration", --备注：totem duration
	["陷阱投掷速度"] = "TrapThrowingSpeed", --备注：trap throwing speed
	["陷阱触发范围"] = "TrapTriggerAreaOfEffect", --备注：trap trigger area of effect
	["陷阱持续时间"] = "TrapDuration", --备注：trap duration
	["陷阱冷却回复速度"] = { "CooldownRecovery", keywordFlags = KeywordFlag.Trap }, --备注：cooldown recovery speed for throwing traps
	["地雷放置速度"] = "MineLayingSpeed", --备注：mine laying speed
	["地雷引爆范围"] = "MineDetonationAreaOfEffect", --备注：mine detonation area of effect
	["地雷持续时间"] = "MineDuration", --备注：mine duration
	-- Minion modifiers
	["魔侍数量上限"] = "ActiveSkeletonLimit", --备注：maximum number of skeletons
	["魔卫数量上限"] = "ActiveZombieLimit", --备注：maximum number of zombies
	["魔卫数量上限"] = "ActiveZombieLimit", --备注：number of zombies allowed
	["灵体数量上限"] = "ActiveSpectreLimit", --备注：maximum number of spectres
	["魔像数量上限"] = "ActiveGolemLimit", --备注：maximum number of golems
	["maximum number of summoned golems"] = "ActiveGolemLimit",
	["召唤愤怒狂灵的最大数量"] = "ActiveRagingSpiritLimit", --备注：maximum number of summoned raging spirits
	["召唤生物持续时间"] = { "Duration", tag = { type = "SkillType", skillType = SkillType.CreateMinion } }, --备注：minion duration
	["魔侍的持续时间"] = { "Duration", tag = { type = "SkillName", skillName = "召唤魔侍" } }, --备注：skeleton duration
	-- Other skill modifiers
	["半径"] = "AreaOfEffect", --备注：radius
	["radius of area skills"] = "AreaOfEffect",
	["area of effect radius"] = "AreaOfEffect",
	["范围效果"] = "AreaOfEffect", --备注：area of effect
	["area of effect of skills"] = "AreaOfEffect",
	["光环技能范围"] = "AreaOfEffect", --备注：area of effect of area skills
	["【蛛之势】的范围效果"] = { "AreaOfEffect", tag = { type = "SkillName", skillName = "蛛之势" } }, --备注：aspect of the spider area of effect
	["firestorm explosion area of effect"] = { "AreaOfEffectSecondary", tag = { type = "SkillName", skillName = "烈炎风暴" } },
	["持续时间"] = "Duration", --备注：duration
	["技能效果持续时间"] = "Duration", --备注：skill effect duration
	["混沌技能效果持续时间"] = { "Duration", keywordFlags = KeywordFlag.Chaos }, --备注：chaos skill effect duration
	["【蛛之势】的减益持续时间"] = { "Duration", tag = { type = "SkillName", skillName = "蛛之势" } }, --备注：aspect of the spider debuff duration
	["fire trap burning ground duration"] = { "Duration", tag = { type = "SkillName", skillName = "火焰陷阱" } },
	["冷却速度"] = "CooldownRecovery", --备注：cooldown recovery
	["冷却回复速度"] = "CooldownRecovery", --备注：cooldown recovery speed
	["weapon range"] = "WeaponRange",
	["近战攻击范围"] = "MeleeWeaponRange", --备注：melee weapon range
	["近战与空手范围"] = { "MeleeWeaponRange", "UnarmedRange" }, --备注：melee weapon and unarmed range
	["近战与空手攻击范围"] = { "MeleeWeaponRange", "UnarmedRange" }, --备注：melee weapon and unarmed attack range
	["to deal double damage"] = "DoubleDamageChance",
	-- Buffs
	["【猛攻】效果"] = "OnslaughtEffect", --备注：onslaught effect
	["护体效果持续时间"] = "FortifyDuration", --备注：fortify duration
	["你身上的护体效果"] = "FortifyEffectOnSelf", --备注：effect of fortify on you
	["effect of tailwind on you"] = "TailwindEffectOnSelf",
	-- Basic damage types
	["伤害"] = "Damage", --备注：damage
	["物理伤害"] = "PhysicalDamage", --备注：physical damage
	["闪电伤害"] = "LightningDamage", --备注：lightning damage
	["冰霜伤害"] = "ColdDamage", --备注：cold damage
	["火焰伤害"] = "FireDamage", --备注：fire damage
	["混沌伤害"] = "ChaosDamage", --备注：chaos damage
	["非混沌伤害"] = "NonChaosDamage", --备注：non-chaos damage
	["火焰、冰霜、闪电伤害"] = "ElementalDamage", --备注：elemental damage
	-- Other damage forms
	["攻击伤害"] = { "Damage", flags = ModFlag.Attack }, --备注：attack damage
	["攻击物理伤害"] = { "PhysicalDamage", flags = ModFlag.Attack }, --备注：attack physical damage
	["物理攻击伤害"] = { "PhysicalDamage", flags = ModFlag.Attack }, --备注：physical attack damage
	["武器的物理伤害"] = { "PhysicalDamage", flags = ModFlag.Weapon }, --备注：physical weapon damage
	["武器上的*+物理伤害"] = { "PhysicalDamage", flags = ModFlag.Weapon }, --备注：physical damage with weapons
	["物理近战伤害"] = { "PhysicalDamage", flags = ModFlag.Melee }, --备注：physical melee damage
	["近战物理伤害"] = { "PhysicalDamage", flags = ModFlag.Melee }, --备注：melee physical damage
	["投射物伤害"] = { "Damage", flags = ModFlag.Projectile }, --备注：projectile damage
	["投射物攻击伤害"] = { "Damage", flags = bor(ModFlag.Projectile, ModFlag.Attack) }, --备注：projectile attack damage
	["bow damage"] = { "Damage", flags = ModFlag.Bow },
	["damage with arrow hits"] = { "Damage", flags = bor(ModFlag.Bow, ModFlag.Hit) },
	["wand damage"] = { "Damage", flags = ModFlag.Wand },
	["法杖物理伤害"] = { "PhysicalDamage", flags = ModFlag.Wand }, --备注：wand physical damage
	["爪物理伤害"] = { "PhysicalDamage", flags = ModFlag.Claw }, --备注：claw physical damage
	["sword physical damage"] = { "PhysicalDamage", flags = ModFlag.Sword },
	["持续伤害效果"] = { "Damage", flags = ModFlag.Dot }, --备注：damage over time
	["物理持续伤害"] = { "PhysicalDamage", keywordFlags = KeywordFlag.PhysicalDot }, --备注：physical damage over time
	["燃烧伤害"] = { "FireDamage", keywordFlags = KeywordFlag.FireDot }, --备注：burning damage
	["点燃伤害"] = { "Damage", keywordFlags = KeywordFlag.Ignite }, --备注：damage with ignite
	["damage with ignites"] = { "Damage", keywordFlags = KeywordFlag.Ignite },
	["incinerate damage for each stage"] = { "Damage", tagList = { { type = "Multiplier", var = "IncinerateStage" }, { type = "SkillName", skillName = "烧毁" } } },
	-- Crit/accuracy/speed modifiers
	["暴击率"] = "CritChance", --备注：critical strike chance
	["攻击暴击率"] = { "CritChance", flags = ModFlag.Attack }, --备注：attack critical strike chance
	["暴击伤害加成"] = "CritMultiplier", --备注：critical strike multiplier
	["命中值"] = "Accuracy", --备注：accuracy
	["攻击命中值"] = "Accuracy", --备注：accuracy rating
	["minion accuracy rating"] = { "Accuracy", addToMinion = true },
	["攻击速度"] = { "Speed", flags = ModFlag.Attack }, --备注：attack speed
	["施法速度"] = { "Speed", flags = ModFlag.Cast }, --备注：cast speed
	["攻击和施法速度"] = "Speed", --备注：attack and cast speed
	-- Elemental ailments
	["闪电伤害击中时有 ([%+%-]?%d+)%% 几率使敌人受到感电效果影响"] = "EnemyShockChance", --备注：to shock
	["shock chance"] = "EnemyShockChance",
	["使用冰霜伤害击中时冰冻敌人"] = "EnemyFreezeChance", --备注：to freeze
	["freeze chance"] = "EnemyFreezeChance",
	["点燃"] = "EnemyIgniteChance", --备注：to ignite
	["ignite chance"] = "EnemyIgniteChance",
	["使敌人受到冰冻，感电与点燃"] = { "EnemyFreezeChance", "EnemyShockChance", "EnemyIgniteChance" }, --备注：to freeze, shock and ignite
	["感电效果"] = "EnemyShockEffect", --备注：effect of shock
	["冰缓效果"] = "EnemyChillEffect", --备注：effect of chill
	["你受到的冰缓效果"] = "SelfChillEffect", --备注：effect of chill on you
	["对敌人施加的非伤害性异常状态效果的伤害"] = { "EnemyShockEffect", "EnemyChillEffect", "EnemyFreezeEffech" }, --备注：effect of non-damaging ailments
	["敌人的感电持续时间"] = "EnemyShockDuration", --备注：shock duration
	["敌人被冰冻的持续时间"] = "EnemyFreezeDuration", --备注：freeze duration
	["敌人被冰缓的持续时间"] = "EnemyChillDuration", --备注：chill duration
	["敌人被点燃的持续时间"] = "EnemyIgniteDuration", --备注：ignite duration
	["敌人受到的元素异常状态时间"] = { "EnemyShockDuration", "EnemyFreezeDuration", "EnemyChillDuration", "EnemyIgniteDuration" }, --备注：duration of elemental ailments
	["duration of elemental status ailments"] = { "EnemyShockDuration", "EnemyFreezeDuration", "EnemyChillDuration", "EnemyIgniteDuration" },
	["duration of ailments"] = { "EnemyShockDuration", "EnemyFreezeDuration", "EnemyChillDuration", "EnemyIgniteDuration", "EnemyPoisonDuration", "EnemyBleedDuration" },
	-- Other ailments
	["to poison"] = "PoisonChance",
	["to cause poison"] = "PoisonChance",
	["使敌人中毒"] = "PoisonChance", --备注：to poison on hit
	["中毒持续时间"] = { "EnemyPoisonDuration" }, --备注：poison duration
	["duration of poisons you inflict"] = { "EnemyPoisonDuration" },
	["使敌人流血"] = "BleedChance", --备注：to cause bleeding
	["to inflict bleeding"] = "BleedChance",
	["to cause bleeding on hit"] = "BleedChance",
	["流血持续时间"] = { "EnemyBleedDuration" }, --备注：bleed duration
	["bleeding duration"] = { "EnemyBleedDuration" },
	-- Misc modifiers
	["移动速度"] = "MovementSpeed", --备注：movement speed
	["攻击，施法和移动速度"] = { "Speed", "MovementSpeed" }, --备注：attack, cast and movement speed
	["照亮范围"] = "LightRadius", --备注：light radius
	["物品稀有度"] = "LootRarity", --备注：rarity of items found
	["物品掉落数量"] = "LootQuantity", --备注：quantity of items found
	["item quantity"] = "LootQuantity",
	["力量需求"] = "StrRequirement", --备注：strength requirement
	["dexterity requirement"] = "DexRequirement",
	["智慧需求"] = "IntRequirement", --备注：intelligence requirement
	["属性需求"] = { "StrRequirement", "DexRequirement", "IntRequirement" }, --备注：attribute requirements
	["插槽内的珠宝效果"] = "SocketedJewelEffect", --备注：effect of socketed jewels
	-- Flask modifiers
	["效果"] = "FlaskEffect", --备注：effect
	["effect of flasks"] = "FlaskEffect",
	["药剂效果"] = "FlaskEffect", --备注：effect of flasks on you
	["回复量"] = "FlaskRecovery", --备注：amount recovered
	["life recovered"] = "FlaskRecovery",
	["mana recovered"] = "FlaskRecovery",
	["药剂回复的生命"] = "FlaskLifeRecovery", --备注：life recovery from flasks
	["药剂回复的魔力"] = "FlaskManaRecovery", --备注：mana recovery from flasks
	["药剂持续时间"] = "FlaskDuration", --备注：flask effect duration
	["回复速度"] = "FlaskRecoveryRate", --备注：recovery speed
	["recovery rate"] = "FlaskRecoveryRate",
	["flask recovery rate"] = "FlaskRecoveryRate",
	["药剂的回复速度"] = "FlaskRecoveryRate", --备注：flask recovery speed
	["药剂生命回复速度"] = "FlaskLifeRecoveryRate", --备注：flask life recovery rate
	["药剂魔力回复速度"] = "FlaskManaRecoveryRate", --备注：flask mana recovery rate
	["extra charges"] = "FlaskCharges",
	["maximum charges"] = "FlaskCharges",
	["药剂充能消耗"] = "FlaskChargesUsed", --备注：charges used
	["药剂充能使用"] = "FlaskChargesUsed", --备注：flask charges used
	["药剂充能获取"] = "FlaskChargesGained", --备注：flask charges gained
	["充能回复"] = "FlaskChargeRecovery", --备注：charge recovery
}

-- List of modifier flags
local modFlagList = {
	--【中文化程序额外添加开始】
	["混沌技能的"] = { keywordFlags = KeywordFlag.Chaos },
	["单手武器攻击的"] = { flags = ModFlag.Weapon1H }, --备注：with one handed weapons
	["斧类攻击"] = { flags = ModFlag.Axe }, 
	["弓类攻击"] = { flags = ModFlag.Bow },
	["弓类技能的"] = { keywordFlags = KeywordFlag.Bow },
	["爪类攻击"] = { flags = ModFlag.Claw },
	["匕首攻击"] = { flags = ModFlag.Dagger },
	["锤类攻击"] = { flags = ModFlag.Mace },
	["长杖攻击"] = { flags = ModFlag.Staff },
	["剑类攻击"] = { flags = ModFlag.Sword },
	["法杖攻击"] = { flags = ModFlag.Wand }, 
	["攻击类技能"] = { keywordFlags = KeywordFlag.Attack },
	["攻击类技能造成的异常状态"] = { flags = ModFlag.Ailment, keywordFlags = KeywordFlag.Attack }, --备注：with ailments from attack skills
	["双手近战武器攻击造成的"] = { flags = bor(ModFlag.Weapon2H, ModFlag.WeaponMelee) }, --备注：with two handed melee weapons
	["双手近战武器的"] = { flags = bor(ModFlag.Weapon2H, ModFlag.WeaponMelee) }, --备注：with two handed melee weapons
	["攻击技能的"] = { keywordFlags = KeywordFlag.Attack },
	["攻击技能可使"] = { keywordFlags = KeywordFlag.Attack },
	["图腾施放的技能"] = { keywordFlags = KeywordFlag.Totem }, --备注：with totem skills
	["近战攻击"] = { flags = ModFlag.Melee }, --备注：melee
	["近战单手武器的"] = { flags = bor(ModFlag.Weapon1H, ModFlag.WeaponMelee) }, --备注：with one handed melee weapons
	["弓类攻击造成的"] = { flags = ModFlag.Bow },
	["攻击技能造成的"] = { keywordFlags = KeywordFlag.Attack },
	["持续吟唱技能"] = { tag = { type = "SkillType", skillType = SkillType.Channelled } },
	["该装备 "] = { },
	["低血时，"] = { tag = { type = "Condition", var = "LowLife" } }, --备注：wh[ie][ln]e? on low life
	["击中和异常状态的"] = { keywordFlags = bor(KeywordFlag.Hit, KeywordFlag.Ailment) }, --备注：with hits and ailments
	["持弓"] = { flags = ModFlag.Bow },
	["攻击技能可以"] = { keywordFlags = KeywordFlag.Attack }, --备注：with attack skills
	["魔卫"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "魔卫复苏" } }, --备注：zombie
	["魔侍的"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤魔侍" } }, --备注：skeleton
	["移动技能的"] = { keywordFlags = KeywordFlag.Movement }, --备注：with movement skills
	["弓"] = { flags = ModFlag.Bow }, --备注：to bow attacks
	["攻击"] = { flags = ModFlag.Attack }, 
	["剑"] = { flags = ModFlag.Sword }, 
	["匕首"] = { flags = ModFlag.Dagger },
	["长杖"] = { flags = ModFlag.Staff },
	["法杖"] = { flags = ModFlag.Wand }, 
	["锤"] = { flags = ModFlag.Mace },
	["爪"] = { flags = ModFlag.Claw },
	["斧"] = { flags = ModFlag.Axe }, 
	["捷技能的"] = { tag = { type = "SkillType", skillType = SkillType.Herald } }, 
	["近战单手武器攻击"] = { flags = bor(ModFlag.Weapon1H, ModFlag.WeaponMelee) }, 
	["双手近战武器的攻击"] = { flags = bor(ModFlag.Weapon2H, ModFlag.WeaponMelee) },
	["火焰、冰霜、闪电技能的"] = { keywordFlags = bor(KeywordFlag.Lightning, KeywordFlag.Cold, KeywordFlag.Fire) },
	--【中文化程序额外添加结束】
	-- Weapon types
	["斧类攻击的"] = { flags = ModFlag.Axe }, --备注：with axes
	["to axe attacks"] = { flags = ModFlag.Axe },
	["弓类攻击的"] = { flags = ModFlag.Bow }, --备注：with bows
	["弓攻击"] = { flags = ModFlag.Bow }, --备注：to bow attacks
	["爪类攻击的"] = { flags = ModFlag.Claw }, --备注：with claws
	["to claw attacks"] = { flags = ModFlag.Claw },
	["dealt with claws"] = { flags = ModFlag.Claw },
	["匕首攻击的"] = { flags = ModFlag.Dagger }, --备注：with daggers
	["to dagger attacks"] = { flags = ModFlag.Dagger },
	["锤类攻击的"] = { flags = ModFlag.Mace }, --备注：with maces
	["to mace attacks"] = { flags = ModFlag.Mace },
	["长杖攻击的"] = { flags = ModFlag.Staff }, --备注：with staves
	["to staff attacks"] = { flags = ModFlag.Staff },
	["剑类攻击的"] = { flags = ModFlag.Sword }, --备注：with swords
	["to sword attacks"] = { flags = ModFlag.Sword },
	["法杖攻击的"] = { flags = ModFlag.Wand }, --备注：with wands
	["to wand attacks"] = { flags = ModFlag.Wand },
	["空手攻击时"] = { flags = ModFlag.Unarmed }, --备注：unarmed
	["空手攻击时的"] = { flags = ModFlag.Unarmed }, --备注：with unarmed attacks
	["to unarmed attacks"] = { flags = ModFlag.Unarmed },
	["单手武器的"] = { flags = ModFlag.Weapon1H }, --备注：with one handed weapons
	["近战单手武器攻击的"] = { flags = bor(ModFlag.Weapon1H, ModFlag.WeaponMelee) }, --备注：with one handed melee weapons
	["双手武器的"] = { flags = ModFlag.Weapon2H }, --备注：with two handed weapons
	["双手近战武器攻击的"] = { flags = bor(ModFlag.Weapon2H, ModFlag.WeaponMelee) }, --备注：with two handed melee weapons
	["远程武器攻击的"] = { flags = ModFlag.WeaponRanged }, --备注：with ranged weapons
	-- Skill types
	["法术"] = { flags = ModFlag.Spell }, --备注：spell
	["with spells"] = { flags = ModFlag.Spell },
	["for spells"] = { flags = ModFlag.Spell },
	["with attacks"] = { keywordFlags = KeywordFlag.Attack },
	["攻击技能"] = { keywordFlags = KeywordFlag.Attack }, --备注：with attack skills
	["for attacks"] = { flags = ModFlag.Attack },
	["武器"] = { flags = ModFlag.Weapon }, --备注：weapon
	["武器造成的"] = { flags = ModFlag.Weapon }, --备注：with weapons
	["近战"] = { flags = ModFlag.Melee }, --备注：melee
	["with melee attacks"] = { flags = ModFlag.Melee },
	["with melee critical strikes"] = { flags = ModFlag.Melee, tag = { type = "Condition", var = "CriticalStrike" } },
	["with bow skills"] = { keywordFlags = KeywordFlag.Bow },
	["近战攻击击中后"] = { flags = ModFlag.Melee }, --备注：on melee hit
	["击中"] = { keywordFlags = KeywordFlag.Hit }, --备注：with hits
	["击中和异常状态"] = { keywordFlags = bor(KeywordFlag.Hit, KeywordFlag.Ailment) }, --备注：with hits and ailments
	["with ailments"] = { flags = ModFlag.Ailment },
	["攻击技能造成的异常状态"] = { flags = ModFlag.Ailment, keywordFlags = KeywordFlag.Attack }, --备注：with ailments from attack skills
	["中毒"] = { keywordFlags = KeywordFlag.Poison }, --备注：with poison
	["流血"] = { keywordFlags = KeywordFlag.Bleed }, --备注：with bleeding
	["范围"] = { flags = ModFlag.Area }, --备注：area
	["地雷"] = { keywordFlags = KeywordFlag.Mine }, --备注：mine
	["with mines"] = { keywordFlags = KeywordFlag.Mine },
	["陷阱"] = { keywordFlags = KeywordFlag.Trap }, --备注：trap
	["with traps"] = { keywordFlags = KeywordFlag.Trap },
	["for traps"] = { keywordFlags = KeywordFlag.Trap },
	["放置地雷或投掷陷阱类技能的"] = { keywordFlags = bor(KeywordFlag.Mine, KeywordFlag.Trap) }, --备注：that place mines or throw traps
	["图腾"] = { keywordFlags = KeywordFlag.Totem }, --备注：totem
	["图腾技能"] = { keywordFlags = KeywordFlag.Totem }, --备注：with totem skills
	["图腾使用技能的"] = { keywordFlags = KeywordFlag.Totem }, --备注：for skills used by totems
	["光环技能"] = { tag = { type = "SkillType", skillType = SkillType.Aura } }, --备注：of aura skills
	["诅咒技能"] = { keywordFlags = KeywordFlag.Curse }, --备注：of curse skills
	["捷技能"] = { tag = { type = "SkillType", skillType = SkillType.Herald } }, --备注：of herald skills
	["召唤生物技能"] = { tag = { type = "SkillType", skillType = SkillType.Minion } }, --备注：of minion skills
	["诅咒"] = { keywordFlags = KeywordFlag.Curse }, --备注：for curses
	["战吼"] = { keywordFlags = KeywordFlag.Warcry }, --备注：warcry
	["瓦尔"] = { keywordFlags = KeywordFlag.Vaal }, --备注：vaal
	["瓦尔技能"] = { keywordFlags = KeywordFlag.Vaal }, --备注：vaal skill
	["移动技能"] = { keywordFlags = KeywordFlag.Movement }, --备注：with movement skills
	["闪电技能"] = { keywordFlags = KeywordFlag.Lightning }, --备注：with lightning skills
	["冰霜技能"] = { keywordFlags = KeywordFlag.Cold }, --备注：with cold skills
	["火焰技能"] = { keywordFlags = KeywordFlag.Fire }, --备注：with fire skills
	["火焰、冰霜、闪电技能"] = { keywordFlags = bor(KeywordFlag.Lightning, KeywordFlag.Cold, KeywordFlag.Fire) }, --备注：with elemental skills
	["混沌技能"] = { keywordFlags = KeywordFlag.Chaos }, --备注：with chaos skills
	["引导技能"] = { tag = { type = "SkillType", skillType = SkillType.Channelled } }, --备注：with channelling skills
	["魔卫"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "魔卫复苏" } }, --备注：zombie
	["raised zombie"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "魔卫复苏" } },
	["魔侍的"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤魔侍" } }, --备注：skeleton
	["spectre"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤灵体" } },
	["raised spectre"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤灵体" } },
	["golem"] = { },
	["chaos golem"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤混沌魔像" } },
	["flame golem"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤烈焰魔像" } },
	["increased flame golem"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤烈焰魔像" } },
	["ice golem"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤寒冰魔像" } },
	["lightning golem"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤闪电魔像" } },
	["stone golem"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤巨石魔像" } },
	["animated guardian"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "幻化守卫" } },
	-- Other
	["全局"] = { tag = { type = "Global" } }, --备注：global
	["从盾牌获取的"] = { tag = { type = "SlotName", slotName = "Weapon 2" } }, --备注：from equipped shield
}

-- List of modifier flags/tags that appear at the start of a line
local preFlagList = {
	--【中文化程序额外添加开始】
	["^召唤生物有 "] = { addToMinion = true }, --备注：^minions [hd][ae][va][el] 
	["^攻击击中有"] = { flags = ModFlag.Attack },
	["^图腾有"] = { keywordFlags = KeywordFlag.Totem },
	["^【魔侍】造成的"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤魔侍" } },
	["召唤生物的"] = { addToMinion = true },
	["召唤生物"] = { addToMinion = true },
	["周围友军的"] = { newAura = true, newAuraOnlyAllies = true },
	["^你和队友的"] = { newAura = true },
	["^该装备的"] = { },
	["此武器攻击造成的"] = { tag = { type = "Condition", var = "{Hand}Attack" } }, --备注：^attacks with this weapon [hd][ae][va][el] 
	["灵体的"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤灵体" } }, --备注：^spectres [hd][ae][va][el] 
		["灵体的"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤灵体" } },
	["魔像"] = { addToMinion = true, addToMinionTag = { type = "SkillType", skillType = SkillType.Golem } }, 
	["可使该武器的"] = { tag = { type = "Condition", var = "{Hand}Attack" } }, 
	--【中文化程序额外添加结束】
	["^hits deal "] = { keywordFlags = KeywordFlag.Hit },
	["^critical strikes deal "] = { tag = { type = "Condition", var = "CriticalStrike" } },
	["^minions "] = { addToMinion = true },
	["^召唤生物的"] = { addToMinion = true }, --备注：^minions [hd][ae][va][el] 
	["召唤生物获得"] = { addToMinion = true }, --备注：^minions leech 
	["^minions' attacks deal "] = { addToMinion = true, flags = ModFlag.Attack },
	["魔像的"] = { addToMinion = true, addToMinionTag = { type = "SkillType", skillType = SkillType.Golem } }, --备注：^golems [hd][ae][va][el] 
	["魔像施放技能的"] = { tag = { type = "SkillType", skillType = SkillType.Golem } }, --备注：^golem skills have 
	["^zombies [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "魔卫复苏" } },
	["【魔侍造成】的"] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤魔侍" } }, --备注：^skeletons [hd][ae][va][el] 
	["^raging spirits [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤愤怒狂灵" } },
	["^spectres [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤灵体" } },
	["^chaos golems [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤混沌魔像" } },
	["^flame golems [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤烈焰魔像" } },
	["^ice golems [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤寒冰魔像" } },
	["^lightning golems [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤闪电魔像" } },
	["^stone golems [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "召唤巨石魔像" } },
	["^blink arrow and blink arrow clones [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "闪现射击" } },
	["^mirror arrow and mirror arrow clones [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "魅影射击" } },
	["^animated weapons [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "幻化武器" } },
	["^animated guardians [hd][ae][va][el] "] = { addToMinion = true, addToMinionTag = { type = "SkillName", skillName = "幻化守卫" } },
	["^【复苏的魔卫】打出重击攻击时，"] = { addToMinion = true, tag = { type = "SkillId", skillId = "ZombieSlam" } }, --备注：^raised zombies' slam attack has 
	["^图腾所使用攻击的"] = { keywordFlags = KeywordFlag.Totem }, --备注：^attacks used by totems have 
	["^图腾所使用法术的"] = { keywordFlags = KeywordFlag.Totem }, --备注：^spells cast by totems have 
	["此武器攻击击中"] = { tag = { type = "Condition", var = "{Hand}Attack" } }, --备注：^attacks with this weapon 
	["此武器的攻击"] = { tag = { type = "Condition", var = "{Hand}Attack" } }, --备注：^attacks with this weapon [hd][ae][va][el] 
	["^该武器对"] = { flags = ModFlag.Hit, tag = { type = "Condition", var = "{Hand}Attack" } }, --备注：^hits with this weapon [hd][ae][va][el] 
	["^attacks [hd][ae][va][el] "] = { flags = ModFlag.Attack },
	["^attack skills [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Attack },
	["^spells [hd][ae][va][el] "] = { flags = ModFlag.Spell },
	["投射物攻击技能的"] = { tagList = { { type = "SkillType", skillType = SkillType.Attack }, { type = "SkillType", skillType = SkillType.Projectile } } }, --备注：^projectile attack skills [hd][ae][va][el] 
	["^arrows [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Bow },
	["^bow attacks [hdf][aei][var][el] "] = { keywordFlags = KeywordFlag.Bow },
	["^projectiles [hdf][aei][var][el] "] = { flags = ModFlag.Projectile },
	["^melee attacks have "] = { flags = ModFlag.Melee },
	["^movement attack skills have "] = { flags = ModFlag.Attack, keywordFlags = KeywordFlag.Movement },
	["^trap and mine damage "] = { keywordFlags = bor(KeywordFlag.Trap, KeywordFlag.Mine) },
	["陷阱所使用的技能"] = { keywordFlags = KeywordFlag.Trap }, --备注：^skills used by traps [hd][ae][va][el] 
	["^lightning skills [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Lightning },
	["^cold skills [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Cold },
	["^fire skills [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Fire },
	["^chaos skills [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Chaos },
	["^vaal skills [hd][ae][va][el] "] = { keywordFlags = KeywordFlag.Vaal },
	["^skills [hdfg][aei][vari][eln] "] = { },
	["^左戒指栏位："] = { tag = { type = "SlotNumber", num = 1 } }, --备注：^left ring slot: 
	["^右戒指栏位："] = { tag = { type = "SlotNumber", num = 2 } }, --备注：^right ring slot: 
	["^此物品上的技能石"] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}" } }, --备注：^socketed gems [hgd][ae][via][enl] 
	["插槽内的攻击技能获得"] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "attack" } }, --备注：^socketed attacks [hgd][ae][via][enl] 
	["插槽内的法术获得"] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "spell" } }, --备注：^socketed spells [hgd][ae][via][enl] 
	["此物品上的诅咒技能石"] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "curse" } }, --备注：^socketed curse gems [hgd][ae][via][enl] 
	["插槽内的的近战技能石"] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "melee" } }, --备注：^socketed melee gems [hgd][ae][via][enl] 
	["^socketed golem gems [hgd][ae][via][enl] "] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "golem" } },
	["^socketed golem skills [hgd][ae][via][enl] "] = { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "golem" } },
	["^your flasks grant "] = { },
	["^when hit, "] = { },
	["^you and allies [hgd][ae][via][enl] "] = { },
	["^auras from your skills grant "] = { addToAura = true },
	["你和周围队友的"] = { newAura = true }, --备注：^you and nearby allies [hgd][ae][via][enl] 
	["周围友军获得"] = { newAura = true, newAuraOnlyAllies = true }, --备注：^nearby allies [hgd][ae][via][enl] 
	["你和友军受你的光环技能影响时，"] = { affectedByAura = true }, --备注：^you and allies affected by your aura skills [hgd][ae][via][enl] 
	["^承受"] = { modSuffix = "Taken" }, --备注：^take 
	["^marauder: melee skills have "] = { flags = ModFlag.Melee, tag = { type = "Condition", var = "ConnectedToMarauderStart" } },
	["^duelist: "] = { tag = { type = "Condition", var = "ConnectedToDuelistStart" } },
	["^ranger: "] = { tag = { type = "Condition", var = "ConnectedToRangerStart" } },
	["^shadow: "] = { tag = { type = "Condition", var = "ConnectedToShadowStart" } },
	["^witch: "] = { tag = { type = "Condition", var = "ConnectedToWitchStart" } },
	["^templar: "] = { tag = { type = "Condition", var = "ConnectedToTemplarStart" } },
	["^scion: "] = { tag = { type = "Condition", var = "ConnectedToScionStart" } },
}

-- List of modifier tags
local modTagList = {
	--【中文化程序额外添加开始】
	["每 (%d+)%% 的攻击格挡率会使"] = function(num) return { tag = { type = "PerStat", stat = "BlockChance", div = num } } end,
	["持盾牌时，"] = { tag = { type = "Condition", var = "UsingShield" } }, --备注：while holding a shield
		["你的副手未装备武器时，"] = { tag = { type = "Condition", var = "OffHandIsEmpty" } }, --备注：while your off hand is empty
		["双持时，"] = { tag = { type = "Condition", var = "DualWielding" } }, --备注：while dual wielding
		["双持攻击时"] = { tag = { type = "Condition", var = "DualWielding" } }, --备注：while dual wielding
		["双持攻击的"] = { tag = { type = "Condition", var = "DualWielding" } }, --备注：while dual wielding
		["双持爪时，"] = { tag = { type = "Condition", var = "DualWieldingClaws" } }, --备注：while dual wielding claws
		["持斧时，"] = { tag = { type = "Condition", var = "UsingAxe" } }, --备注：while wielding an axe
		["持弓时，"] = { tag = { type = "Condition", var = "UsingBow" } }, --备注：while wielding a bow
		["持爪时，"] = { tag = { type = "Condition", var = "UsingClaw" } }, --备注：while wielding a claw
		["持匕时，"] = { tag = { type = "Condition", var = "UsingDagger" } }, --备注：while wielding a dagger
		["持锤时，"] = { tag = { type = "Condition", var = "UsingMace" } }, --备注：while wielding a mace
		["持长杖时，"] = { tag = { type = "Condition", var = "UsingStaff" } }, --备注：while wielding a staff
		["持剑时，"] = { tag = { type = "Condition", var = "UsingSword" } }, --备注：while wielding a sword
		["持近战武器时，"] = { tag = { type = "Condition", var = "UsingMeleeWeapon" } }, --备注：while wielding a melee weapon
		["持单手武器时，"] = { tag = { type = "Condition", var = "UsingOneHandedWeapon" } }, --备注：while wielding a one handed weapon
		["持双手武器时，"] = { tag = { type = "Condition", var = "UsingTwoHandedWeapon" } }, --备注：while wielding a two handed weapon
		["双持或持盾牌时，"] = { tag = { type = "Condition", varList = { "DualWielding", "UsingShield" } } }, --备注：while dual wielding or holding a shield
		["持法杖时，"] = { tag = { type = "Condition", var = "UsingWand" } }, --备注：while wielding a wand
		["空手时，"] = { tag = { type = "Condition", var = "Unarmed" } }, --备注：while unarmed
		["静止时，"] = { tag = { type = "Condition", var = "Stationary" } }, --备注：while stationary
		["移动时，"] = { tag = { type = "Condition", var = "Moving" } }, --备注：while moving
		["当你没有暴击球时，"] = { tag = { type = "StatThreshold", stat = "PowerCharges", threshold = 0, upper = true } }, --备注：while you have no power charges
		["当你没有狂怒球时，"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", threshold = 0, upper = true } }, --备注：while you have no frenzy charges
		["当你身上没有狂怒球时，"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", threshold = 0, upper = true } }, 
		["当你没有耐力球时，"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", threshold = 0, upper = true } }, --备注：while you have no endurance charges
		["你拥有暴击球时，"] = { tag = { type = "StatThreshold", stat = "PowerCharges", threshold = 1 } }, --备注：while you have a power charge
		["你拥有狂怒球时，"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", threshold = 1 } }, --备注：while you have a frenzy charge
		["你拥有耐力球时，"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", threshold = 1 } },
		["当暴击球达到上限时，"] = { tag = { type = "StatThreshold", stat = "PowerCharges", thresholdStat = "PowerChargesMax" } }, --备注：while at maximum power charges
		["当狂怒球达到上限时，"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" } }, --备注：while at maximum frenzy charges
		["当耐力球达到上限时，"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" } }, --备注：while at maximum endurance charges
		["当你有图腾存在时，"] = { tag = { type = "Condition", var = "HaveTotem" } }, --备注：while you have a totem
		["当你拥有护体时，"] = { tag = { type = "Condition", var = "Fortify" } }, --备注：while you have fortify	
		["【迷踪】状态时，"] = { tag = { type = "Condition", var = "Phasing" } }, --备注：while phasing
		["拥有【提速尾流】时，"] = { tag = { type = "Condition", var = "Tailwind" } }, --备注：while you have tailwind
		["拥有【猫之隐匿】时，"] = { tag = { type = "Condition", var = "AffectedByCat'sStealth" } }, --备注：while you have cat's stealth
		["拥有【鸟之力量】时，"] = { tag = { type = "Condition", var = "AffectedByAvian'sMight" } }, --备注：while you have avian's might
		["拥有【鸟之斗魄】时，"] = { tag = { type = "Condition", var = "AffectedByAvian'sFlight" } }, --备注：while you have avian's flight	
		["偷取时，"] = { tag = { type = "Condition", var = "Leeching" } }, --备注：while leeching
		["使用药剂时，"] = { tag = { type = "Condition", var = "UsingFlask" } }, --备注：while using a flask	
		["在奉献地面上时，"] = { tag = { type = "Condition", var = "OnConsecratedGround" } }, --备注：while on consecrated ground
		["被点燃时，"] = { tag = { type = "Condition", var = "Ignited" } }, --备注：while ignited
		["冰冻时，"] = { tag = { type = "Condition", var = "Frozen" } }, --备注：while frozen
		["被感电时，"] = { tag = { type = "Condition", var = "Shocked" } }, --备注：while shocked	
		["流血时，"] = { tag = { type = "Condition", var = "Bleeding" } }, --备注：while bleeding
		["中毒时，"] = { tag = { type = "Condition", var = "Poisoned" } }, --备注：while poisoned
		["被诅咒时，"] = { tag = { type = "Condition", var = "Cursed" } }, --备注：while cursed
		["未被诅咒时，"] = { tag = { type = "Condition", var = "Cursed", neg = true } }, --备注：while not cursed
		["持长杖时 "] = { tag = { type = "Condition", var = "UsingStaff" } }, --备注：while wielding a staff
		["获得护体时，"] = { tag = { type = "Condition", var = "Fortify" } }, --备注：while you have fortify
	["受到你光环影响时，"] = { affectedByAura = true }, --备注：while affected by auras you cast	
	["你和友军"] = { }, --备注：to you and allies
	["你和周围友军的"] = { }, --备注：to you and allies
	["每个耐力球附加"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每个狂怒球可使"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, --备注：per frenzy charge
	["每个耐力球可使"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每个狂怒球附加"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, --备注：per frenzy charge
	["每拥有 1 个狂怒球，"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, --备注：per frenzy charge
	["每个狂怒球会使"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, --备注：per frenzy charge
	["若过去 8 秒内你打出过暴击，则"] = { tag = { type = "Condition", var = "CritInPast8Sec" } },
	["每有 1 个耐力球，便获得"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 	
	["耐力球达到上限时，"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" } }, --备注：while at maximum endurance charges
	["护体时"] = { tag = { type = "Condition", var = "Fortify" } }, --备注：while you have fortify	
	["护体状态下，"] = { tag = { type = "Condition", var = "Fortify" } }, --备注：while you have fortify	
	["近期内你若使用过移动技能，则"] = { tag = { type = "Condition", var = "UsedMovementSkillRecently" } }, --备注：if you[' ]h?a?ve used a movement skill recently
	["每个暴击球"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, --备注：per power charge
	["每个暴击球造成"] = { tag = { type = "Multiplier", var = "PowerCharge" } },
	["流血敌人时"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Bleeding" }, keywordFlags = KeywordFlag.Hit }, --备注：against bleeding enemies
	["被点燃敌人时"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Ignited" }, keywordFlags = KeywordFlag.Hit }, --备注：to ignited enemies
	["被点燃的敌人时，"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Ignited" }, keywordFlags = KeywordFlag.Hit }, --备注：to ignited enemies
	["对中毒敌人"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Poisoned" }, keywordFlags = KeywordFlag.Hit },
	["药剂持续期间，"] = { tag = { type = "Condition", var = "UsingFlask" } }, --备注：while using a flask	
	["感电时"] = { tag = { type = "Condition", var = "Shocked" } }, --备注：while shocked	
	["每一级为你的"] = { tag = { type = "Multiplier", var = "Level" } },
	["每一级在"] = { tag = { type = "Multiplier", var = "Level" } },
	["每 (%d+) 点敏捷可使"] = function(num) return { tag = { type = "PerStat", stat = "Dex", div = num } } end, 
	["拥有最大数量的狂怒球时，"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" } }, --备注：while at maximum frenzy charges
	["每 1 个耐力球可使"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每个耐力球会使"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 	
	["近期内你若有打出过暴击，则"] = { tag = { type = "Condition", var = "CritRecently" } }, --备注：if you[' ]h?a?ve dealt a critical strike recently
	["当不拥有耐力球时，"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", threshold = 0, upper = true } },
	["中毒时 "] = { tag = { type = "Condition", var = "Poisoned" } }, 
	["近期内你若有使用战吼，则"] = { tag = { type = "Condition", var = "UsedWarcryRecently" } }, --备注：if you[' ]h?a?ve used a warcry recently
	["近期内你若有使用战吼，"] = { tag = { type = "Condition", var = "UsedWarcryRecently" } }, --备注：if you[' ]h?a?ve used a warcry recently
	["每 (%d+) 点智慧会使"] = function(num) return { tag = { type = "PerStat", stat = "Int", div = num } } end, --备注：per (%d+) intelligence
	["每 (%d+) 点敏捷会使"] = function(num) return { tag = { type = "PerStat", stat = "Dex", div = num } } end, 
	["每 (%d+) 点力量会使 "] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength
	["每 (%d+) 点力量会使"] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength
	["近期若打出过暴击，则"] = { tag = { type = "Condition", var = "CritRecently" } },
	["近期内你若被击中过，则"] = { tag = { type = "Condition", var = "BeenHitRecently" } },
	["近期内你若有过格挡，则"] = { tag = { type = "Condition", var = "BlockedRecently" } }, 
	["每个轮回球可使"] = { tag = { type = "Multiplier", var = "SiphoningCharge" } }, 
	["每 (%d+) 命中值可使"] = function(num) return { tag = { type = "PerStat", stat = "Accuracy", div = num } } end, 
	["对致盲的敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Blinded" }, keywordFlags = KeywordFlag.Hit }, --备注：against blinded enemies
	["每拥有 1 个暴击球，有 "] = { tag = { type = "Multiplier", var = "PowerCharge" } }, --备注：per power charge
	["低血时，"] = { tag = { type = "Condition", var = "LowLife" } },
	["移动时获得"] = { tag = { type = "Condition", var = "Moving" } }, --备注：while moving
	["每 (%d+) 点智慧可使"] = function(num) return { tag = { type = "PerStat", stat = "Int", div = num } } end, --备注：per (%d+) intelligence
	["每 (%d+) 点智慧可以为"] = function(num) return { tag = { type = "PerStat", stat = "Int", div = num } } end, --备注：per (%d+) intelligence
	["每 (%d+) 点敏捷可以为"] = function(num) return { tag = { type = "PerStat", stat = "Dex", div = num } } end, 
	["每 (%d+) 点力量可以为 "] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength
	["对冰缓的目标的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" }, keywordFlags = KeywordFlag.Hit },
	["对致盲的敌人时，"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Blinded" }, keywordFlags = KeywordFlag.Hit },
	["每个暴击球为"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, --备注：per power charge
	["狂怒球达到上限时，"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" } }, --备注：while at maximum frenzy charges
	["近期内你若被击中，"] = { tag = { type = "Condition", var = "BeenHitRecently" } },	
	["对冰缓敌人造成的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" }, keywordFlags = KeywordFlag.Hit },
	["在主手时，"] = { tag = { type = "SlotNumber", num = 1 } }, --备注：when in main hand
	["每个耐力球增加"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每有 1 个耐力球，就会"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["击中冰缓敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" }, keywordFlags = KeywordFlag.Hit }, --备注：against chilled  
	["对被点燃敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Ignited" }, keywordFlags = KeywordFlag.Hit }, 
	["每 (%d+) 点力量可使"] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength
	["你获得【猫之隐匿】时"] = { tag = { type = "Condition", var = "AffectedByCat'sStealth" } }, --备注：while you have cat's stealth
	["每 (%d+) 点力量使"] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength		
	["若你有至少 (%d+) 点敏捷，则"] = function(num) return { tag = { type = "StatThreshold", stat = "Dex", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) strength
	["若你有至少 (%d+) 点智慧，则"] = function(num) return { tag = { type = "StatThreshold", stat = "Int", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) dexterity
	["若你有至少 (%d+) 点力量，则"] = function(num) return { tag = { type = "StatThreshold", stat = "Str", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) intelligence
	["近期内你若被击中，则"] = { tag = { type = "Condition", var = "BeenHitRecently" } },
	["击中点燃敌人时"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Ignited" }, keywordFlags = KeywordFlag.Hit }, 
	["在主手时，"] = { tag = { type = "SlotNumber", num = 1 } }, --备注：when in main hand
	["在副手时，"] = { tag = { type = "SlotNumber", num = 2 } }, --备注：when in off hand
	["每 (%d+) 力量 "] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength
	["使用此武器攻击时，"] = { tag = { type = "Condition", var = "{Hand}Attack" } }, 
	["近期内你若击败过敌人，"] = { tag = { type = "Condition", var = "KilledRecently" } }, 
	["药剂持续期间，获得"] = { tag = { type = "Condition", var = "UsingFlask" } },
	["双持时的"] = { tag = { type = "Condition", var = "DualWielding" } }, 
	["当移动时，"] = { tag = { type = "Condition", var = "Moving" } },
	["持盾时的"] = { tag = { type = "Condition", var = "UsingShield" } }, --备注：with shields
	["持盾牌时的"] = { tag = { type = "Condition", var = "UsingShield" } }, --备注：with shields
	["近期内你若受到伤害，则"] = { tag = { type = "Condition", var = "BeenHitRecently"} },
	["近期内你若被击中，则"] = { tag = { type = "Condition", var = "BeenHitRecently" } },
	["近期内你若没有击败过敌人，则"] = { tag = { type = "Condition", var = "KilledRecently" } }, 
	["盾牌装备上每有 (%d+) 点护甲值，便 "] = function(num) return { tag = { type = "PerStat", stat = "ArmourOnWeapon 2", div = num } } end, 
	["盾牌装备上每有 (%d+) 点闪避值，便 "] = function(num) return { tag = { type = "PerStat", stat = "EvasionOnWeapon 2", div = num } } end, 
	["盾牌装备上每有 (%d+) 点能量护盾，便 "] = function(num) return { tag = { type = "PerStat", stat = "EnergyShieldOnWeapon 2", div = num } } end, 
	["近期内你若没被击中后受到伤害，则"] = { tag = { type = "Condition", var = "BeenHitRecently", neg = true } }, 
	["近期内你若格挡过攻击伤害，则"] = { tag = { type = "Condition", var = "BlockedAttackRecently" } }, --备注：if you[' ]h?a?ve blocked an attack recently
	["近期内你若格挡过法术，"] = { tag = { type = "Condition", var = "BlockedSpellRecently" } }, --备注：if you[' ]h?a?ve blocked a spell recently
	["装备的护盾上每有 (%d+) 点护甲，便 "] = function(num) return { tag = { type = "PerStat", stat = "ArmourOnWeapon 2", div = num } } end, 
	["装备的护盾上每有 (%d+) 点闪避值，便 "] = function(num) return { tag = { type = "PerStat", stat = "EvasionOnWeapon 2", div = num } } end, 
	["装备的护盾上每有 (%d+) 点最大能量护盾，便 "] = function(num) return { tag = { type = "PerStat", stat = "EnergyShieldOnWeapon 2", div = num } } end, 
	["近期内你每吞噬过 1 个灵柩，"] = { tag = { type = "Condition", var = "ConsumedCorpseRecently" } }, --备注：if you[' ]h?a?ve 
	["每有一个狂怒球，可使你"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, 
	["每有一个耐力球，可使你"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每有一个暴击球，可使你"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, 
	["每有一个狂怒球，"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, 
	["每有一个耐力球，"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每有一个暴击球，"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, 
	["每有一个狂怒球，便"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, 
	["每有一个耐力球，便"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每有一个暴击球，便"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, 
	["每有一个狂怒求，"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, 
	["每有一个耐力求，"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, 
	["每有一个暴击求，"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, 
	--【中文化程序额外添加结束】
	["on enemies"] = { },
	["while active"] = { },
	["暴击时"] = { tag = { type = "Condition", var = "CriticalStrike" } }, --备注： on critical strike
	["你和友军受你的光环影响时"] = { affectedByAura = true }, --备注：while affected by auras you cast
	["for you and nearby allies"] = { newAura = true },
	-- Multipliers
	["每个暴击球可使"] = { tag = { type = "Multiplier", var = "PowerCharge" } }, --备注：per power charge
	["每个狂怒球"] = { tag = { type = "Multiplier", var = "FrenzyCharge" } }, --备注：per frenzy charge
	["每个耐力球"] = { tag = { type = "Multiplier", var = "EnduranceCharge" } }, --备注：per endurance charge
	["每有 1 个轮回球，便获得"] = { tag = { type = "Multiplier", var = "SiphoningCharge" } }, --备注：per siphoning charge
	["每个【深海屏障】可使"] = { tag = { type = "Multiplier", var = "CrabBarrier" } }, --备注：per crab barrier
	["每级"] = { tag = { type = "Multiplier", var = "Level" } }, --备注：per level
	["per (%d+) player levels"] = function(num) return { tag = { type = "Multiplier", var = "Level", div = num } } end,
	["for each normal item you have equipped"] = { tag = { type = "Multiplier", var = "NormalItem" } },
	["for each equipped normal item"] = { tag = { type = "Multiplier", var = "NormalItem" } },
	["for each magic item you have equipped"] = { tag = { type = "Multiplier", var = "MagicItem" } },
	["每装备一个魔法物品，"] = { tag = { type = "Multiplier", var = "MagicItem" } }, --备注：for each equipped magic item
	["for each rare item you have equipped"] = { tag = { type = "Multiplier", var = "RareItem" } },
	["for each equipped rare item"] = { tag = { type = "Multiplier", var = "RareItem" } },
	["你每装备一个传奇装备，"] = { tag = { type = "Multiplier", var = "UniqueItem" } }, --备注：for each unique item you have equipped
	["for each equipped unique item"] = { tag = { type = "Multiplier", var = "UniqueItem" } },
	["每装备 1 个【裂界之器】，"] = { tag = { type = "Multiplier", var = "ElderItem" } }, --备注：per elder item equipped
	["per shaper item equipped"] = { tag = { type = "Multiplier", var = "ShaperItem" } },
	["每装备 1 个【裂界之器】或【塑界之器】，便"] = { tag = { type = "Multiplier", varList = { "ElderItem", "ShaperItem" } } }, --备注：per elder or shaper item equipped
	["每装备 1 个被腐化的物品，"] = { tag = { type = "Multiplier", var = "CorruptedItem" } }, --备注：for each equipped corrupted item
	["每个影响你的【深渊珠宝】可使"] = { tag = { type = "Multiplier", var = "AbyssJewel" } }, --备注：per abyssa?l? jewel affecting you
	["每种影响你的【深渊珠宝】可使"] = { tag = { type = "Multiplier", var = "AbyssJewelType" } }, --备注：for each type of abyssa?l? jewel affecting you
	["自身的每个增益会为"] = { tag = { type = "Multiplier", var = "BuffOnSelf" } }, --备注：per buff on you
	["敌人身上每个诅咒可使"] = { tag = { type = "Multiplier", var = "CurseOnEnemy" } }, --备注：per curse on enemy
	["自身的每个诅咒会使"] = { tag = { type = "Multiplier", var = "CurseOnSelf" } }, --备注：per curse on you
	["你身上的每层中毒状态使你获得"] = { tag = { type = "Multiplier", var = "PoisonStack" } }, --备注：per poison on you
	["per poison on you, up to (%d+) per second"] = function(num) return { tag = { type = "Multiplier", var = "PoisonStack", limit = tonumber(num), limitTotal = true } } end,
	["for each poison you have inflicted recently"] = { tag = { type = "Multiplier", var = "PoisonAppliedRecently" } },
	["近期内你每击败 1 个感电敌人，则"] = { tag = { type = "Multiplier", var = "ShockedEnemyKilledRecently" } }, --备注：for each shocked enemy you've killed recently
	["per enemy killed recently, up to (%d+)%%"] = function(num) return { tag = { type = "Multiplier", var = "EnemyKilledRecently", limit = tonumber(num), limitTotal = true } } end,
	["近期内，你或你的召唤生物每击败一个敌人，则每秒回复你 1%% 能量护盾，最多 (%d+)%%"] = function(num) return { tag = { type = "Multiplier", varList = {"EnemyKilledRecently","EnemyKilledByMinionsRecently"}, limit = tonumber(num), limitTotal = true } } end, --备注：for each enemy you or your minions have killed recently, up to (%d+)%%
	["近期你或你的图腾若有击败过敌人，则每击败 1 个，"] = { tag = { type = "Multiplier", varList = {"EnemyKilledRecently","EnemyKilledByTotemsRecently"} } }, --备注：per enemy killed by you or your totems recently
	["你和周围友方的"] = { }, --备注：to you and allies
	["每个红色插槽"] = { tag = { type = "Multiplier", var = "RedSocketIn{SlotName}" } }, --备注：per red socket
	["每个绿色插槽"] = { tag = { type = "Multiplier", var = "GreenSocketIn{SlotName}" } }, --备注：per green socket
	["每个蓝色插槽"] = { tag = { type = "Multiplier", var = "BlueSocketIn{SlotName}" } }, --备注：per blue socket
	["每个白色插槽会使"] = { tag = { type = "Multiplier", var = "WhiteSocketIn{SlotName}" } }, --备注：per white socket
	-- Per stat
	["每 (%d+) 点力量 "] = function(num) return { tag = { type = "PerStat", stat = "Str", div = num } } end, --备注：per (%d+) strength
	["每 (%d+) 点敏捷 "] = function(num) return { tag = { type = "PerStat", stat = "Dex", div = num } } end, --备注：per (%d+) dexterity
	["每 (%d+) 点智慧 "] = function(num) return { tag = { type = "PerStat", stat = "Int", div = num } } end, --备注：per (%d+) intelligence
	["你最低的属性每有 (%d+) 点，"] = function(num) return { tag = { type = "PerStat", stat = "LowestAttribute", div = num } } end, --备注：per (%d+) of your lowest attribute
	["每 (%d+) 点闪避值可使"] = function(num) return { tag = { type = "PerStat", stat = "Evasion", div = num } } end, --备注：per (%d+) evasion rating
	["per (%d+) evasion rating, up to (%d+)%%"] = function(num, _, limit) return { tag = { type = "PerStat", stat = "Evasion", div = num, limit = tonumber(limit), limitTotal = true } } end,
	["每有 (%d+) 层能量护盾可"] = function(num) return { tag = { type = "PerStat", stat = "EnergyShield", div = num } } end, --备注：per (%d+) maximum energy shield
	["per (%d+) maximum mana, up to (%d+)%%"] = function(num, _, limit) return { tag = { type = "PerStat", stat = "Mana", div = num, limit = tonumber(limit), limitTotal = true } } end,
	["每 (%d+) 点命中值可使"] = function(num) return { tag = { type = "PerStat", stat = "Accuracy", div = num } } end, --备注：per (%d+) accuracy rating
	["每 (%d+)%% 攻击格挡率"] = function(num) return { tag = { type = "PerStat", stat = "BlockChance", div = num } } end, --备注：per (%d+)%% block chance
	["取护甲和闪避值之间的较低者，每 (%d+) 点可使"] = function(num) return { tag = { type = "PerStat", stat = "LowestOfArmourAndEvasion", div = num } } end, --备注：per (%d+) of the lowest of armour and evasion rating
	["头部装备上每有 (%d+) 点最大能量护盾，便"] = function(num) return { tag = { type = "PerStat", stat = "EnergyShieldOnHelmet", div = num } } end, --备注：per (%d+) maximum energy shield on helmet
	["身体护甲上每有 (%d+) 点闪避值，便"] = function(num) return { tag = { type = "PerStat", stat = "EvasionOnBody Armour", div = num } } end, --备注：per (%d+) evasion rating on body armour
	["per (%d+) armour on equipped shield"] = function(num) return { tag = { type = "PerStat", stat = "ArmourOnWeapon 2", div = num } } end,
	["per (%d+) evasion rating on equipped shield"] = function(num) return { tag = { type = "PerStat", stat = "EvasionOnWeapon 2", div = num } } end,
	["per (%d+) maximum energy shield on equipped shield"] = function(num) return { tag = { type = "PerStat", stat = "EnergyShieldOnWeapon 2", div = num } } end,
	["per totem"] = { tag = { type = "PerStat", stat = "ActiveTotemLimit" } },
	["for each time they have chained"] = { tag = { type = "PerStat", stat = "Chain" } },
	-- Stat conditions
	["with (%d+) or more strength"] = function(num) return { tag = { type = "StatThreshold", stat = "Str", threshold = num } } end,
	["with at least (%d+) strength"] = function(num) return { tag = { type = "StatThreshold", stat = "Str", threshold = num } } end,
	["至少有 (%d+) 点力量时，"] = function(num) return { tag = { type = "StatThreshold", stat = "Str", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) strength
	["至少有 (%d+) 点敏捷时，"] = function(num) return { tag = { type = "StatThreshold", stat = "Dex", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) dexterity
	["至少有 (%d+) 点智慧时，"] = function(num) return { tag = { type = "StatThreshold", stat = "Int", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) intelligence
	["at least (%d+) intelligence"] = function(num) return { tag = { type = "StatThreshold", stat = "Int", threshold = num } } end, -- lol
	["若你至少拥有 1500 层能量护盾，则"] = function(num) return { tag = { type = "StatThreshold", stat = "EnergyShield", threshold = num } } end, --备注：w?h?i[lf]e? you have at least (%d+) maximum energy shield
	["against targets they pierce"] = { tag = { type = "StatThreshold", stat = "PierceCount", threshold = 1 } },
	["against pierced targets"] = { tag = { type = "StatThreshold", stat = "PierceCount", threshold = 1 } },
	["箭矢对其穿透的目标所造成的"] = { tag = { type = "StatThreshold", stat = "PierceCount", threshold = 1 } }, --备注：to targets they pierce
	-- Slot conditions
	["装备在主手时"] = { tag = { type = "SlotNumber", num = 1 } }, --备注：when in main hand
	["装备于副手时有"] = { tag = { type = "SlotNumber", num = 2 } }, --备注：when in off hand
	["主手"] = { tag = { type = "InSlot", num = 1 } }, --备注：in main hand
	["副手"] = { tag = { type = "InSlot", num = 2 } }, --备注：in off hand
	["主手武器"] = { tag = { type = "Condition", var = "MainHandAttack" } }, --备注：with main hand
	["副手武器"] = { tag = { type = "Condition", var = "OffHandAttack" } }, --备注：with off hand
	["使用该武器时，"] = { tag = { type = "Condition", var = "{Hand}Attack" } }, --备注：with this weapon
	["若你的其他戒指中有【塑界之器】，则"] = { tag = { type = "Condition", var = "ShaperItemInRing {OtherSlotNum}" } }, --备注：if your other ring is a shaper item
	["若你的其他戒指中有【裂界之器】，则"] = { tag = { type = "Condition", var = "ElderItemInRing {OtherSlotNum}" } }, --备注：if your other ring is an elder item
	-- Equipment conditions
	["持盾牌时"] = { tag = { type = "Condition", var = "UsingShield" } }, --备注：while holding a shield
	["你的副手未装备武器时"] = { tag = { type = "Condition", var = "OffHandIsEmpty" } }, --备注：while your off hand is empty
	["持盾时"] = { tag = { type = "Condition", var = "UsingShield" } }, --备注：with shields
	["双持时"] = { tag = { type = "Condition", var = "DualWielding" } }, --备注：while dual wielding
	["双持爪时"] = { tag = { type = "Condition", var = "DualWieldingClaws" } }, --备注：while dual wielding claws
	["双持或持盾牌时"] = { tag = { type = "Condition", varList = { "DualWielding", "UsingShield" } } }, --备注：while dual wielding or holding a shield
	["持斧时"] = { tag = { type = "Condition", var = "UsingAxe" } }, --备注：while wielding an axe
	["持弓时"] = { tag = { type = "Condition", var = "UsingBow" } }, --备注：while wielding a bow
	["持爪时"] = { tag = { type = "Condition", var = "UsingClaw" } }, --备注：while wielding a claw
	["持匕时"] = { tag = { type = "Condition", var = "UsingDagger" } }, --备注：while wielding a dagger
	["持锤时"] = { tag = { type = "Condition", var = "UsingMace" } }, --备注：while wielding a mace
	["持长杖时"] = { tag = { type = "Condition", var = "UsingStaff" } }, --备注：while wielding a staff
	["持剑时"] = { tag = { type = "Condition", var = "UsingSword" } }, --备注：while wielding a sword
	["持近战武器时"] = { tag = { type = "Condition", var = "UsingMeleeWeapon" } }, --备注：while wielding a melee weapon
	["持单手武器时"] = { tag = { type = "Condition", var = "UsingOneHandedWeapon" } }, --备注：while wielding a one handed weapon
	["持双手武器时"] = { tag = { type = "Condition", var = "UsingTwoHandedWeapon" } }, --备注：while wielding a two handed weapon
	["持法杖时"] = { tag = { type = "Condition", var = "UsingWand" } }, --备注：while wielding a wand
	["空手时"] = { tag = { type = "Condition", var = "Unarmed" } }, --备注：while unarmed
	["装备 1 件普通物品时，"] = { tag = { type = "MultiplierThreshold", var = "NormalItem", threshold = 1 } }, --备注：with a normal item equipped
	["装备 1 件魔法物品时，"] = { tag = { type = "MultiplierThreshold", var = "MagicItem", threshold = 1 } }, --备注：with a magic item equipped
	["with a rare item equipped"] = { tag = { type = "MultiplierThreshold", var = "RareItem", threshold = 1 } },
	["with a unique item equipped"] = { tag = { type = "MultiplierThreshold", var = "UniqueItem", threshold = 1 } },
	["if you wear no corrupted items"] = { tag = { type = "MultiplierThreshold", var = "CorruptedItem", threshold = 0, upper = true } },
	["if no worn items are corrupted"] = { tag = { type = "MultiplierThreshold", var = "CorruptedItem", threshold = 0, upper = true } },
	["身上未装备已腐化的物品时，"] = { tag = { type = "MultiplierThreshold", var = "CorruptedItem", threshold = 0, upper = true } }, --备注：if no equipped items are corrupted
	["if all worn items are corrupted"] = { tag = { type = "MultiplierThreshold", var = "NonCorruptedItem", threshold = 0, upper = true } },
	["所有身上装备的物品皆为已腐化时，"] = { tag = { type = "MultiplierThreshold", var = "NonCorruptedItem", threshold = 0, upper = true } }, --备注：if all equipped items are corrupted
	["装备的护盾格挡几率若不低于 (%d+)%%，则"] = function(num) return { tag = { type = "StatThreshold", stat = "ShieldBlockChance", threshold = num } } end, --备注：if equipped shield has at least (%d+)%% chance to block
	["if you have (%d+) primordial items socketed or equipped"] = function(num) return { tag = { type = "MultiplierThreshold", var = "PrimordialItem", threshold = num } } end,
	-- Player status conditions
	["低血时"] = { tag = { type = "Condition", var = "LowLife" } }, --备注：wh[ie][ln]e? on low life
	["wh[ie][ln]e? not on low life"] = { tag = { type = "Condition", var = "LowLife", neg = true } },
	["满血时"] = { tag = { type = "Condition", var = "FullLife" } }, --备注：wh[ie][ln]e? on full life
	["wh[ie][ln]e? not on full life"] = { tag = { type = "Condition", var = "FullLife", neg = true } },
	["无生命保留时"] = { tag = { type = "StatThreshold", stat = "LifeReserved", threshold = 0, upper = true } }, --备注：wh[ie][ln]e? no life is reserved
	["无魔力保留时，"] = { tag = { type = "StatThreshold", stat = "ManaReserved", threshold = 0, upper = true } }, --备注：wh[ie][ln]e? no mana is reserved
	["能量护盾全满时，"] = { tag = { type = "Condition", var = "FullEnergyShield" } }, --备注：wh[ie][ln]e? on full energy shield
	["能量护盾全满时，"] = { tag = { type = "Condition", var = "FullEnergyShield", neg = true } }, --备注：wh[ie][ln]e? not on full energy shield
	["拥有能量护盾时"] = { tag = { type = "Condition", var = "HaveEnergyShield" } }, --备注：wh[ie][ln]e? you have energy shield
	["静止时"] = { tag = { type = "Condition", var = "Stationary" } }, --备注：while stationary
	["移动时"] = { tag = { type = "Condition", var = "Moving" } }, --备注：while moving
	["当你没有暴击球时"] = { tag = { type = "StatThreshold", stat = "PowerCharges", threshold = 0, upper = true } }, --备注：while you have no power charges
	["当你没有狂怒球时"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", threshold = 0, upper = true } }, --备注：while you have no frenzy charges
	["当你没有耐力球时"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", threshold = 0, upper = true } }, --备注：while you have no endurance charges
	["你拥有暴击球时"] = { tag = { type = "StatThreshold", stat = "PowerCharges", threshold = 1 } }, --备注：while you have a power charge
	["你拥有狂怒球时"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", threshold = 1 } }, --备注：while you have a frenzy charge
	["你拥有耐力球时"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", threshold = 1 } }, --备注：while you have an endurance charge
	["当暴击球达到上限时"] = { tag = { type = "StatThreshold", stat = "PowerCharges", thresholdStat = "PowerChargesMax" } }, --备注：while at maximum power charges
	["当狂怒球达到上限时"] = { tag = { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" } }, --备注：while at maximum frenzy charges
	["当耐力球达到上限时"] = { tag = { type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" } }, --备注：while at maximum endurance charges
	["你拥有至少 (%d+) 个【深海屏障】时，"] = function(num) return { tag = { type = "StatThreshold", stat = "CrabBarriers", threshold = num } } end, --备注：while you have at least (%d+) crab barriers
	["当你有图腾存在时"] = { tag = { type = "Condition", var = "HaveTotem" } }, --备注：while you have a totem
	["周围至少有 1 个友军时，"] = { tag = { type = "MultiplierThreshold", var = "NearbyAlly", threshold = 1 } }, --备注：while you have at least one nearby ally
	["当你拥有护体时"] = { tag = { type = "Condition", var = "Fortify" } }, --备注：while you have fortify
	["【猛攻】状态下"] = { tag = { type = "Condition", var = "Onslaught" } }, --备注：during onslaught
	["获得【猛攻】时"] = { tag = { type = "Condition", var = "Onslaught" } }, --备注：while you have onslaught
	["【迷踪】状态时"] = { tag = { type = "Condition", var = "Phasing" } }, --备注：while phasing
	["拥有【提速尾流】时"] = { tag = { type = "Condition", var = "Tailwind" } }, --备注：while you have tailwind
	["拥有【猫之隐匿】时"] = { tag = { type = "Condition", var = "AffectedByCat'sStealth" } }, --备注：while you have cat's stealth
	["拥有【鸟之力量】时"] = { tag = { type = "Condition", var = "AffectedByAvian'sMight" } }, --备注：while you have avian's might
	["拥有【鸟之斗魄】时"] = { tag = { type = "Condition", var = "AffectedByAvian'sFlight" } }, --备注：while you have avian's flight
	["受到【猫之势】影响时，"] = { tag = { type = "Condition", varList = { "AffectedByCat'sStealth", "AffectedByCat'sAgility" } } }, --备注：while affected by aspect of the cat
	["偷取时"] = { tag = { type = "Condition", var = "Leeching" } }, --备注：while leeching
	["使用药剂时"] = { tag = { type = "Condition", var = "UsingFlask" } }, --备注：while using a flask
	["during effect"] = { tag = { type = "Condition", var = "UsingFlask" } },
	["药剂持续期间，"] = { tag = { type = "Condition", var = "UsingFlask" } }, --备注：during flask effect
	["药剂持续期间，"] = { tag = { type = "Condition", var = "UsingFlask" } }, --备注：during any flask effect
	["在奉献地面上时"] = { tag = { type = "Condition", var = "OnConsecratedGround" } }, --备注：while on consecrated ground
	["在燃烧地面上的"] = { tag = { type = "Condition", var = "OnBurningGround" } }, --备注：on burning ground
	["在冰缓地面上"] = { tag = { type = "Condition", var = "OnChilledGround" } }, --备注：on chilled ground
	["在感电地面上的"] = { tag = { type = "Condition", var = "OnShockedGround" } }, --备注：on shocked ground
	["被点燃时"] = { tag = { type = "Condition", var = "Ignited" } }, --备注：while ignited
	["冰冻时"] = { tag = { type = "Condition", var = "Frozen" } }, --备注：while frozen
	["被感电时"] = { tag = { type = "Condition", var = "Shocked" } }, --备注：while shocked
	["没有被点燃，冰冻，感电时，"] = { tag = { type = "Condition", varList = { "Ignited", "Frozen", "Shocked" }, neg = true } }, --备注：while not ignited, frozen or shocked
	["流血时"] = { tag = { type = "Condition", var = "Bleeding" } }, --备注：while bleeding
	["中毒时"] = { tag = { type = "Condition", var = "Poisoned" } }, --备注：while poisoned
	["被诅咒时"] = { tag = { type = "Condition", var = "Cursed" } }, --备注：while cursed
	["未被诅咒时"] = { tag = { type = "Condition", var = "Cursed", neg = true } }, --备注：while not cursed
	["周围只有 1 个敌人时，"] = { tag = { type = "Condition", var = "OnlyOneNearbyEnemy" } }, --备注：while there is only one nearby enemy
	["if you[' ]h?a?ve hit recently"] = { tag = { type = "Condition", var = "HitRecently" } },
	["if you[' ]h?a?ve crit recently"] = { tag = { type = "Condition", var = "CritRecently" } },
	["近期内你若打出过暴击，则"] = { tag = { type = "Condition", var = "CritRecently" } }, --备注：if you[' ]h?a?ve dealt a critical strike recently
	["暴击后的 8 秒内，"] = { tag = { type = "Condition", var = "CritInPast8Sec" } }, --备注：if you[' ]h?a?ve crit in the past 8 seconds
	["若你在过去 8 秒内打出过暴击，则"] = { tag = { type = "Condition", var = "CritInPast8Sec" } }, --备注：if you[' ]h?a?ve dealt a critical strike in the past 8 seconds
	["if you haven't crit recently"] = { tag = { type = "Condition", var = "CritRecently", neg = true } },
	["近期内你若没有打出暴击，则"] = { tag = { type = "Condition", var = "CritRecently", neg = true } }, --备注：if you haven't dealt a critical strike recently
	["近期内你若没有打出过暴击，则"] = { tag = { type = "Condition", var = "NonCritRecently" } }, --备注：if you[' ]h?a?ve dealt a non%-critical strike recently
	["if your skills have dealt a critical strike recently"] = { tag = { type = "Condition", var = "SkillCritRecently" } },
	["近期内你若有击败敌人，则"] = { tag = { type = "Condition", var = "KilledRecently" } }, --备注：if you[' ]h?a?ve killed recently
	["近期内你若没有击败敌人，则"] = { tag = { type = "Condition", var = "KilledRecently", neg = true } }, --备注：if you haven't killed recently
	["if you or your totems have killed recently"] = { tag = { type = "Condition", varList = {"KilledRecently","TotemsKilledRecently"} } },
	["if you[' ]h?a?ve killed a maimed enemy recently"] = { tagList = { { type = "Condition", var = "KilledRecently" }, { type = "ActorCondition", actor = "enemy", var = "Maimed" } } },
	["if you[' ]h?a?ve killed a cursed enemy recently"] = { tagList = { { type = "Condition", var = "KilledRecently" }, { type = "ActorCondition", actor = "enemy", var = "Cursed" } } },
	["if you[' ]h?a?ve killed a bleeding enemy recently"] = { tagList = { { type = "Condition", var = "KilledRecently" }, { type = "ActorCondition", actor = "enemy", var = "Bleeding" } } },
	["if you[' ]h?a?ve killed an enemy affected by your damage over time recently"] = { tag = { type = "Condition", var = "KilledAffectedByDotRecently" } },
	["近期内你若有冰冻敌人，则"] = { tag = { type = "Condition", var = "FrozenEnemyRecently" } }, --备注：if you[' ]h?a?ve frozen an enemy recently
	["点燃 1 个敌人后的短时间内，"] = { tag = { type = "Condition", var = "IgnitedEnemyRecently" } }, --备注：if you[' ]h?a?ve ignited an enemy recently
	["近期内你若感电任意敌人，则"] = { tag = { type = "Condition", var = "ShockedEnemyRecently" } }, --备注：if you[' ]h?a?ve shocked an enemy recently
	["近期内你若被击中过，则"] = { tag = { type = "Condition", var = "BeenHitRecently" } }, --备注：if you[' ]h?a?ve been hit recently
	["if you were hit recently"] = { tag = { type = "Condition", var = "BeenHitRecently" } },
	["近期内你若因被击中而受伤，"] = { tag = { type = "Condition", var = "BeenHitRecently" } }, --备注：if you were damaged by a hit recently
	["if you[' ]h?a?ve taken a critical strike recently"] = { tag = { type = "Condition", var = "BeenCritRecently" } },
	["近期内你若受到【残暴打击】，则"] = { tag = { type = "Condition", var = "BeenSavageHitRecently" } }, --备注：if you[' ]h?a?ve taken a savage hit recently
	["近期内你若没有被击中，则"] = { tag = { type = "Condition", var = "BeenHitRecently", neg = true } }, --备注：if you have ?n[o']t been hit recently
	["近期内你若被击中但没有受到伤害，则"] = { tag = { type = "Condition", var = "BeenHitRecently", neg = true } }, --备注：if you[' ]h?a?ve taken no damage from hits recently
	["近期内，你若被击中并受到火焰伤害，则"] = { tag = { type = "Condition", var = "HitByFireDamageRecently" } }, --备注：if you[' ]h?a?ve taken fire damage from a hit recently
	["格挡后的短时间内"] = { tag = { type = "Condition", var = "BlockedRecently" } }, --备注：if you[' ]h?a?ve blocked recently
	["近期内你若格挡过攻击，则"] = { tag = { type = "Condition", var = "BlockedAttackRecently" } }, --备注：if you[' ]h?a?ve blocked an attack recently
	["近期内你若格挡过法术，则"] = { tag = { type = "Condition", var = "BlockedSpellRecently" } }, --备注：if you[' ]h?a?ve blocked a spell recently
	["过去 10 秒内你若成功格挡传奇怪物，则"] = { tag = { type = "Condition", var = "BlockedHitFromUniqueEnemyInPast10Sec" } }, --备注：if you[' ]h?a?ve blocked damage from a unique enemy in the past 10 seconds
	["近期内你若有进行攻击，则"] = { tag = { type = "Condition", var = "AttackedRecently" } }, --备注：if you[' ]h?a?ve attacked recently
	["近期内你若有施放法术，则"] = { tag = { type = "Condition", var = "CastSpellRecently" } }, --备注：if you[' ]h?a?ve cast a spell recently
	["近期内你若有消耗灵柩，则"] = { tag = { type = "Condition", var = "ConsumedCorpseRecently" } }, --备注：if you[' ]h?a?ve consumed a corpse recently
	["每消耗 1 具灵柩后的短时间内，"] = { tag = { type = "Multiplier", var = "CorpseConsumedRecently" } }, --备注：for each corpse consumed recently
	["近期内你若有成功嘲讽敌人，则"] = { tag = { type = "Condition", var = "TauntedEnemyRecently" } }, --备注：if you[' ]h?a?ve taunted an enemy recently
	["近期内你若有使用技能，"] = { tag = { type = "Condition", var = "UsedSkillRecently" } }, --备注：if you[' ]h?a?ve used a skill recently
	["for each skill you've used recently, up to (%d+)%%"] = function(num) return { tag = { type = "Multiplier", var = "SkillUsedRecently", limit = num, limitTotal = true } } end,
	["近期内你若使用过战吼，则"] = { tag = { type = "Condition", var = "UsedWarcryRecently" } }, --备注：if you[' ]h?a?ve used a warcry recently
	["近期内你若有使用战吼，"] = { tag = { type = "Condition", var = "UsedWarcryRecently" } }, --备注：if you[' ]h?a?ve warcried recently
	["for each of your mines detonated recently, up to (%d+)%%"] = function(num) return { tag = { type = "Multiplier", var = "MineDetonatedRecently", limit = num, limitTotal = true } } end,
	["for each of your traps triggered recently, up to (%d+)%%"] = function(num) return { tag = { type = "Multiplier", var = "TrapTriggeredRecently", limit = num, limitTotal = true } } end,
	["近期内你若使用过火焰技能，则"] = { tag = { type = "Condition", var = "UsedFireSkillRecently" } }, --备注：if you[' ]h?a?ve used a fire skill recently
	["近期内你若使用过冰霜技能，则"] = { tag = { type = "Condition", var = "UsedColdSkillRecently" } }, --备注：if you[' ]h?a?ve used a cold skill recently
	["if you[' ]h?a?ve used a fire skill in the past 10 seconds"] = { tag = { type = "Condition", var = "UsedFireSkillInPast10Sec" } },
	["if you[' ]h?a?ve used a cold skill in the past 10 seconds"] = { tag = { type = "Condition", var = "UsedColdSkillInPast10Sec" } },
	["if you[' ]h?a?ve used a lightning skill in the past 10 seconds"] = { tag = { type = "Condition", var = "UsedLightningSkillInPast10Sec" } },
	["近期内你若有召唤图腾，"] = { tag = { type = "Condition", var = "SummonedTotemRecently" } }, --备注：if you[' ]h?a?ve summoned a totem recently
	["近期内你若使用了召唤生物技能，则"] = { tag = { type = "Condition", var = "UsedMinionSkillRecently" } }, --备注：if you[' ]h?a?ve used a minion skill recently
	["近期内你若有使用过位移技能，则"] = { tag = { type = "Condition", var = "UsedMovementSkillRecently" } }, --备注：if you[' ]h?a?ve used a movement skill recently
	["近期内你若使用过瓦尔技能，则"] = { tag = { type = "Condition", var = "UsedVaalSkillRecently" } }, --备注：if you[' ]h?a?ve used a vaal skill recently
	["近期内你若引爆过地雷，则"] = { tag = { type = "Condition", var = "DetonatedMinesRecently" } }, --备注：if you detonated mines recently
	["近期内若有能量护盾开始回复，则"] = { tag = { type = "Condition", var = "EnergyShieldRechargeRecently" } }, --备注：if energy shield recharge has started recently
	["在【寒冰弹】上施放时，"] = { tag = { type = "Condition", var = "CastOnFrostbolt" } }, --备注：when cast on frostbolt
	-- Enemy status conditions
	["at close range"] = { tag = { type = "Condition", var = "AtCloseRange" }, flags = ModFlag.Hit },
	["against rare and unique enemies"] = { tag = { type = "Condition", var = "EnemyRareOrUnique" }, keywordFlags = KeywordFlag.Hit },
	["against enemies on full life"] = { tag = { type = "ActorCondition", actor = "enemy", var = "FullLife" }, keywordFlags = KeywordFlag.Hit },
	["对满血敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "FullLife" }, keywordFlags = KeywordFlag.Hit }, --备注：against enemies that are on full life
	["对低血敌人，"] = { tag = { type = "ActorCondition", actor = "enemy", var = "LowLife" }, keywordFlags = KeywordFlag.Hit }, --备注：against enemies on low life
	["击中低血的敌人时，"] = { tag = { type = "ActorCondition", actor = "enemy", var = "LowLife" }, keywordFlags = KeywordFlag.Hit }, --备注：against enemies that are on low life
	["已被诅咒的敌人"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Cursed" }, keywordFlags = KeywordFlag.Hit }, --备注：against cursed enemies
	["攻击击中被诅咒敌人时有"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Cursed" }, keywordFlags = KeywordFlag.Hit }, --备注：when hitting cursed enemies
	["攻击被嘲讽的敌人时，"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Taunted" }, keywordFlags = KeywordFlag.Hit }, --备注：against taunted enemies
	["对流血敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Bleeding" }, keywordFlags = KeywordFlag.Hit }, --备注：against bleeding enemies
	["to bleeding enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Bleeding" }, keywordFlags = KeywordFlag.Hit },
	["对中毒敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Poisoned" }, keywordFlags = KeywordFlag.Hit }, --备注：against poisoned enemies
	["to poisoned enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Poisoned" }, keywordFlags = KeywordFlag.Hit },
	["against enemies affected by (%d+) or more poisons"] = function(num) return { tag = { type = "MultiplierThreshold", actor = "enemy", var = "PoisonStack", threshold = num } } end,
	["against enemies affected by at least (%d+) poisons"] = function(num) return { tag = { type = "MultiplierThreshold", actor = "enemy", var = "PoisonStack", threshold = num } } end,
	["对被干扰敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Hindered" }, keywordFlags = KeywordFlag.Hit }, --备注：against hindered enemies
	["against maimed enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Maimed" }, keywordFlags = KeywordFlag.Hit },
	["对致盲敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Blinded" }, keywordFlags = KeywordFlag.Hit }, --备注：against blinded enemies
	["against burning enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Burning" }, keywordFlags = KeywordFlag.Hit },
	["对点燃敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Ignited" }, keywordFlags = KeywordFlag.Hit }, --备注：against ignited enemies
	["被点燃敌人时"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Ignited" }, keywordFlags = KeywordFlag.Hit }, --备注：to ignited enemies
	["对感电敌人的击中"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Shocked" }, keywordFlags = KeywordFlag.Hit }, --备注：against shocked enemies
	["to shocked enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Shocked" }, keywordFlags = KeywordFlag.Hit },
	["对被冰冻敌人的击中"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Frozen" }, keywordFlags = KeywordFlag.Hit }, --备注：against frozen enemies
	["to frozen enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Frozen" }, keywordFlags = KeywordFlag.Hit },
	["对冰缓敌人"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" }, keywordFlags = KeywordFlag.Hit }, --备注：against chilled enemies
	["to chilled enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" }, keywordFlags = KeywordFlag.Hit },
	["inflicted on chilled enemies"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" } },
	["被冰缓的敌人"] = { tag = { type = "ActorCondition", actor = "enemy", var = "Chilled" }, keywordFlags = KeywordFlag.Hit }, --备注：enemies which are chilled
	["对被冰冻、感电、点燃敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", varList = {"Frozen","Shocked","Ignited"} }, keywordFlags = KeywordFlag.Hit }, --备注：against frozen, shocked or ignited enemies
	["against enemies affected by elemental ailments"] = { tag = { type = "ActorCondition", actor = "enemy", varList = {"Frozen","Chilled","Shocked","Ignited"} }, keywordFlags = KeywordFlag.Hit },
	["对元素异常状态的敌人的"] = { tag = { type = "ActorCondition", actor = "enemy", varList = {"Frozen","Chilled","Shocked","Ignited"} }, fkeywordFlags = KeywordFlag.Hit }, --备注：against enemies that are affected by elemental ailments
	["对没有受到元素异常状态的敌人的"] = { tagList = { { type = "ActorCondition", actor = "enemy", varList = {"Frozen","Chilled","Shocked","Ignited"}, neg = true }, { type = "Condition", var = "Effective" } }, keywordFlags = KeywordFlag.Hit }, --备注：against enemies that are affected by no elemental ailments
	["对受 (%d+) 层蜘蛛网影响的敌人，"] = function(num) return { tag = { type = "MultiplierThreshold", actor = "enemy", var = "Spider's WebStack", threshold = num } } end, --备注：against enemies affected by (%d+) spider's webs
	-- Enemy multipliers
	["per freeze, shock and ignite on enemy"] = { tag = { type = "Multiplier", var = "FreezeShockIgniteOnEnemy" }, keywordFlags = KeywordFlag.Hit },
	["per poison affecting enemy"] = { tag = { type = "Multiplier", actor = "enemy", var = "PoisonStack" } },
	["per poison affecting enemy, up to %+([%d%.]+)%%"] = function(num) return { tag = { type = "Multiplier", actor = "enemy", var = "PoisonStack", limit = num, limitTotal = true } } end,
	["敌人身上每有 1 层蜘蛛网，则"] = { tag = { type = "Multiplier", actor = "enemy", var = "Spider's WebStack" } }, --备注：for each spider's web on the enemy
}

local mod = modLib.createMod
local function flag(name, ...)
	return mod(name, "FLAG", true, ...)
end

local gemIdLookup = { }
for name, grantedEffect in pairs(data["3_0"].skills) do
	if not grantedEffect.hidden or grantedEffect.fromItem then
		gemIdLookup[grantedEffect.name:lower()] = grantedEffect.id
	end
end
local function extraSkill(name, level, noSupports)
	name = name:gsub(" skill","")
	if gemIdLookup[name] then
		return { 
			mod("ExtraSkill", "LIST", { skillId = gemIdLookup[name], level = level, noSupports = noSupports }) 
		}
	end
end

-- List of special modifiers
local specialModList = {
	--【中文化程序额外添加开始】
	--local sumLocal
	["该装备的攻击暴击率提高 (%d+)%%"] = function(num) return {  mod("CritChance", "INC", num)  } end,  
	--负数范围特殊处理
	["提高 ([%+%-]?%d+)%% 药剂充能消耗"]= function(num) return {  mod("FlaskChargesUsed", "INC", num)  } end,  
	--fu*k TX 格挡率用“提高”字样
	["药剂持续期间，攻击伤害格挡几率 ([%+%-]?%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,  
	["药剂持续期间，攻击格挡率提高 ([%+%-]?%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,  
	["药剂持续期间，法术伤害格挡几率提高 ([%+%-]?%d+)%%"] = function(num) return {  mod("SpellBlockChance", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,  
	["药剂持续期间，法术格挡率提高 ([%+%-]?%d+)%%"] = function(num) return {  mod("SpellBlockChance", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,  
	["持长杖时，攻击格挡率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "UsingStaff" })  } end,  
	["持长杖时法术伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("SpellBlockChance", "BASE", num,{ type = "Condition", var = "UsingStaff" })  } end,  
	["持盾时攻击格挡率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num, { type = "Condition", var = "UsingShield" } )  } end,  
	["持盾牌时法术格挡率提高 (%d+)%%"] = function(num) return {  mod("SpellBlockChance", "BASE", num, { type = "Condition", var = "UsingShield" } ) } end,  
	["双持时攻击格挡率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num, { type = "Condition", var = "DualWielding" } )  } end,  
	["双持或持盾牌时攻击格挡率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", varList = { "DualWielding", "UsingShield" } })  } end,  
	["近期内你若因被击中而受伤，攻击格挡率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "BeenHitRecently" } )  } end,  
	["持长杖时，攻击伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "UsingStaff" })  } end,  
	["持盾时攻击伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num, { type = "Condition", var = "UsingShield" } )  } end,  
	["持盾牌时攻击伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num, { type = "Condition", var = "UsingShield" } )  } end,  
	["持盾牌时法术伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("SpellBlockChance", "BASE", num, { type = "Condition", var = "UsingShield" } ) } end,  
	["双持时攻击伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num, { type = "Condition", var = "DualWielding" } )  } end,  
	["双持或持盾牌时攻击伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", varList = { "DualWielding", "UsingShield" } })  } end,  
	["近期内你若因被击中而受伤，攻击伤害格挡几率提高 (%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "BeenHitRecently" } )  } end,  
	["(%d+)%% 攻击伤害格挡几率"] = function(num) return {  mod("BlockChance", "BASE", num)  } end, 
	["近期内你若有被击中，则每秒回复 ([%d%.]+)%% 生命和魔力"] = function(num) return { 
	mod("LifeRegenPercent", "BASE", num,{ type = "Condition", var = "BeenHitRecently" } ),
	mod("ManaRegenPercent", "BASE", num,{ type = "Condition", var = "BeenHitRecently" } ),
	  } end,  
	["非诅咒类光环的效果提高 (%d+)%%"]= function(num) return {  mod("AuraEffect", "INC", tonumber(num))  } end,
	["你技能的非诅咒类光环效果提高 (%d+)%%"]= function(num) return {  mod("AuraEffect", "INC", tonumber(num))  } end,
	["所有身上装备的物品皆为已腐化时，每秒回复 (%d+) 能量护盾"] = function(num) return {  mod("EnergyShieldRegen", "BASE", num,{ type = "MultiplierThreshold", var = "NonCorruptedItem", threshold = 0, upper = true })  } end,
	["此物品上装备的【([^\\x00-\\xff]*)石】等级 %+(%d+)"] = function( _, type_Cn,num) return { mod("GemProperty", "LIST", { 
	keyword = type_Cn:gsub("光环技能","aura")
	:gsub("绿色技能","dexterity")
	:gsub("蓝色技能","intelligence")
	:gsub("红色技能","strength")
	:gsub("闪电技能","lightning")
	:gsub("辅助技能","support")
	:gsub("火焰技能","fire")
	:gsub("冰霜技能","cold")
	:gsub("混沌技能","chaos")
	:gsub("物理技能","physical")
	:gsub("魔像技能","golem")
	:gsub("召唤生物技能","minion")
	:gsub("近战技能","melee")
	:gsub("战吼技能","warcry")
	:gsub("瓦尔技能","vaal")
	:gsub("移动技能","movement")
	:gsub("弓技能","bow")
	:gsub("诅咒技能","curse")
	:gsub("捷技能","herald")
	:gsub("法术技能","spell")
	:gsub("主动技能","active_skill")
	:gsub("持续时间技能","duration")
	:gsub("陷阱技能石】或【地雷技能","trap or mine")
	:gsub("投射物技能","projectile")
	:gsub("持续吟唱技能","channelling")
	:gsub("范围效果技能","aoe")
	, key = "level", value = tonumber(num) }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,  
	-- 一些涉及到技能名称的
	["你的奉献技能会同时影响你"] = { mod("ExtraSkillMod", "LIST", { mod = mod("SkillData", "LIST", { key = "buffNotPlayer", value = false }) },
		{ type = "SkillName", skillNameList = { "骸骨奉献", "血肉奉献", "灵魂奉献" } }) },	
	["你的奉献技能对自身的效果降低 (%d+)%%"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("BuffEffectOnPlayer", "INC", -num) }, { type = "SkillName",
	 skillNameList = { "骸骨奉献", "血肉奉献", "灵魂奉献" } }) } end, 
	["【闪现射击】和【魅影射击】冷却回复速度提高 (%d+)%%"] = function(num) return { --备注：(%d+)%% increased blink arrow and mirror arrow cooldown recovery speed
			mod("CooldownRecovery", "INC", num, { type = "SkillName", skillName = "闪现射击" }),
			mod("CooldownRecovery", "INC", num, { type = "SkillName", skillName = "魅影射击" }),
		} end,
	["【异灵魔侍】的击中无法闪避"] = { mod("MinionModifier", "LIST", { mod = flag("CannotBeEvaded") }, { type = "SkillName", skillName = "召唤魔侍" }) }, --备注：summoned skeletons' hits can't be evaded
	["每有 (%d+) 点敏捷，你的攻城炮台图腾数量上限便提高 1 个"] = function(num) return { mod("ActiveTotemLimit", "BASE", 1, { type = "SkillName", skillName = "攻城炮台" }, { type = "PerStat", stat = "Dex", div = num }) } end, ["【愤怒狂灵】击中后必定造成点燃"] = { mod("MinionModifier", "LIST", { mod = mod("EnemyIgniteChance", "BASE", 100) }, { type = "SkillName", skillName = "召唤愤怒狂灵" }) }, --备注：raging spirits' hits always 
	["所有身上穿戴的物品皆为已腐化时，每秒回复 (%d+) 魔力"] = function(num) return {  mod("ManaRegen", "BASE", num,{ type = "MultiplierThreshold", var = "NonCorruptedItem", threshold = 0, upper = true })  } end,
	["身上未装备已腐化的物品时，每秒回复 (%d+) 生命"] = function(num) return {  mod("LifeRegen", "BASE", num,{ type = "MultiplierThreshold", var = "CorruptedItem", threshold = 0, upper = true })  } end,
	["被点燃时，获得 (%d+) 每秒生命回复"] = function(num) return {  mod("LifeRegen", "BASE", num,{ type = "Condition", var = "Ignited" })  } end,
	["在冰缓地面上每秒回复 (%d+)%% 生命"] = function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Condition", var = "OnChilledGround" } )  } end,
	["移动时每秒回复 ([%d%.]+)%% 生命"] = function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Condition", var = "Moving" } )  } end,
	["每个耐力球提高 ([%d%.]+)%% 每秒生命回复"] = function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Multiplier", var = "EnduranceCharge" })  } end,
	["每个暴击球每秒回复 ([%d%.]+) 魔力"] = function(num) return {  mod("ManaRegen", "BASE", num,{ type = "Multiplier", var = "PowerCharge" })  } end,
	["击败敌人时，每个狂怒球可以回复 %+(%d+) 生命"] = function(num) return {  mod("LifeOnKill", "BASE", num,{ type = "Multiplier", var = "FrenzyCharge" } )  } end,  
	["每个狂怒球每秒回复 ([%d%.]+)%% 生命"] = function(num) return {  mod("LifeRegen", "BASE", num,{ type = "Multiplier", var = "FrenzyCharge" } )  } end,  
	["每个耐力球可使每秒生命回复提高 ([%d%.]+)"] = function(num) return {  mod("LifeRegen", "BASE", num,{ type = "Multiplier", var = "EnduranceCharge" } )  } end,  
	["每级获得每秒回复 (%d+) 生命"] = function(num) return {  mod("LifeRegen", "BASE", num, { type = "Multiplier", var = "Level" })  } end,  
	["击败敌人回复 %+(%d+) 生命"] = function(num) return {  mod("LifeOnKill", "BASE", num)  } end,  
	["击败敌人回复 %+(%d+) 魔力"] = function(num) return {  mod("ManaOnKill", "BASE", num)  } end,  
	["闪电伤害击中时有 ([%+%-]?%d+)%% 几率使敌人受到感电效果影响"] =function(num) return {  mod("EnemyShockChance", "BASE", num)  } end,  --   "EnemyShockChance", --备注：to shock
	["火焰伤害击中时有 ([%+%-]?%d+)%% 几率点燃敌人"] =function(num) return {  mod("EnemyIgniteChance", "BASE", num)  } end,  --   "EnemyShockChance", --备注：to shock
	["法杖攻击 ([%+%-]?%d+)%% 暴击伤害加成"] = function(num) return {  mod("CritMultiplier", "BASE", num,nil, ModFlag.Wand)  } end,
	["获得额外闪电伤害， 其数值等同于物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsLightning", "BASE", num)  } end, --备注：^gain ([%d%.]+)%% of
	["获得额外闪电伤害， 其数值等同于法杖物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsLightning", "BASE", num,nil, ModFlag.Wand)  } end, --备注：^gain ([%d%.]+)%% of
	["获得额外火焰伤害， 其数值等同于法杖物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsFire", "BASE", num,nil, ModFlag.Wand)  } end,
	["获得额外冰霜伤害， 其数值等同于法杖物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsCold", "BASE", num,nil, ModFlag.Wand)  } end,
	["获得额外混沌伤害，其数值等同于物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsChaos", "BASE", num)  } end,
	["获得额外混沌伤害， 其数值等同于闪电伤害的 ([%d%.]+)%%"] = function(num) return {  mod("LightningDamageGainAsChaos", "BASE", num)  } end,
	["获得额外混沌伤害， 其数值等同于火焰伤害的 ([%d%.]+)%%"] = function(num) return {  mod("FireDamageGainAsChaos", "BASE", num)  } end,
	["获得额外混沌伤害， 其数值等同于冰霜伤害的 ([%d%.]+)%%"] = function(num) return {  mod("ColdDamageGainAsChaos", "BASE", num)  } end,
	["获得额外火焰伤害， 其数值等同于物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsFire", "BASE", num)  } end,
	["近期内你若打出过暴击，则获得物理伤害 ([%d%.]+)%% 的额外火焰伤害"] = function(num) return {  mod("PhysicalDamageGainAsFire", "BASE", num, { type = "Condition", var = "CritRecently" })  } end,
	["获得额外冰霜伤害， 其数值等同于物理伤害的 ([%d%.]+)%%"] = function(num) return {  mod("PhysicalDamageGainAsCold", "BASE", num)  } end,
	["获得等同 ([%d%.]+)%% 物理攻击伤害的闪电伤害"] = function(num) return {  mod("PhysicalDamageGainAsLightning", "BASE", num,nil, ModFlag.Attack)  } end,
	["获得等同 ([%d%.]+)%% 物理攻击伤害的火焰伤害"] = function(num) return {  mod("PhysicalDamageGainAsFire", "BASE", num,nil, ModFlag.Attack)  } end,
	["获得等同 ([%d%.]+)%% 物理攻击伤害的冰霜伤害"] = function(num) return {  mod("PhysicalDamageGainAsCold", "BASE", num,nil, ModFlag.Attack)  } end,
	["召唤生物每秒回复 ([%d%.]+)%% 生命"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("LifeRegenPercent", "BASE", num) })  } end,
	["召唤生物每秒回复 ([%d%.]+) 生命"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("LifeRegen", "BASE", num) })  } end,
	["召唤生物获得 ([%d%.]+)%% 生命偷取"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("DamageLifeLeech", "BASE", num) })  } end,
	["持长杖时 ([%+%-]?%d+)%% 攻击和法术暴击伤害加成"] = function(num) return {  mod("CritMultiplier", "BASE", num, { type = "Global" } , { type = "Condition", var = "UsingStaff" })  } end,
	["你的攻击击中每个敌人会回复 ([%+%-]?%d+) 生命"] = function(num) return {  mod("LifeOnHit", "BASE", num,nil, ModFlag.Attack)  } end, 
	["你的法术击中每个敌人会回复 ([%+%-]?%d+) 生命"] = function(num) return {  mod("LifeOnHit", "BASE", num,nil, ModFlag.Spell)  } end, 
	["攻击击中每个敌人会回复 ([%+%-]?%d+) 生命"] = function(num) return {  mod("LifeOnHit", "BASE", num,nil, ModFlag.Attack)  } end, 
	["法术击中每个敌人会回复 ([%+%-]?%d+) 生命"] = function(num) return {  mod("LifeOnHit", "BASE", num,nil, ModFlag.Spell)  } end, 
	["击中每个敌人会回复 ([%+%-]?%d+) 生命"] = function(num) return {  mod("LifeOnHit", "BASE", num,nil, ModFlag.Hit)  } end, 
	["你的攻击击中每个敌人会回复 ([%+%-]?%d+) 魔力"] = function(num) return {  mod("ManaOnHit", "BASE", num,nil, ModFlag.Attack)  } end, 
	["攻击击中每个敌人会回复 ([%+%-]?%d+) 魔力"] = function(num) return {  mod("ManaOnHit", "BASE", num,nil, ModFlag.Attack)  } end, 
	["物理攻击伤害的 ([%d%.]+)%% 会转化为生命偷取"]= function(num) return {  mod("PhysicalDamageLifeLeech", "BASE", num,nil, ModFlag.Attack)  } end, 
	["药剂持续期间，物理攻击伤害的 ([%d%.]+)%% 作为生命偷取"]= function(num) return {  mod("PhysicalDamageLifeLeech", "BASE", num,nil, ModFlag.Attack,{ type = "Condition", var = "UsingFlask" })  } end, 
	["药剂持续期间，物理攻击伤害的 ([%d%.]+)%% 作为魔力偷取"]= function(num) return {  mod("PhysicalDamageManaLeech", "BASE", num,nil, ModFlag.Attack,{ type = "Condition", var = "UsingFlask" })  } end, 
	["药剂持续期间，附加 (%d+)%% 火焰、冰霜、闪电抗性"]= function(num) return {  mod("ElementalResist", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end, 
	["近期内你若有击败敌人，则造成伤害的 ([%d%.]+)%% 转化为生命和魔力偷取"]= function(num) return { 
	mod("DamageLifeLeech", "BASE", num,{ type = "Condition", var = "KilledRecently" }) ,
	mod("DamageManaLeech", "BASE", num,{ type = "Condition", var = "KilledRecently" })   } end, 
	["对感电敌人造成伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,{ type = "ActorCondition", actor = "enemy", var = "Shocked" })  } end, 
	["对被冰冻敌人造成伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,{ type = "ActorCondition", actor = "enemy", var = "Frozen" })  } end, 
	["对被感电敌人造成伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,{ type = "ActorCondition", actor = "enemy", var = "Shocked" })  } end, 
	["对冰冻敌人造成伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("DamageManaLeech", "BASE", num,{ type = "ActorCondition", actor = "enemy", var = "Frozen" })  } end, 
	["对感电敌人造成伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("DamageManaLeech", "BASE", num,{ type = "ActorCondition", actor = "enemy", var = "Shocked" })  } end, 
	["攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack)  } end, 
	["攻击伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("DamageManaLeech", "BASE", num,nil, ModFlag.Attack)  } end, 
	["法术伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("DamageManaLeech", "BASE", num,nil, ModFlag.Spell)  } end, 
	["法术伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Spell)  } end, 
	["击中时有 ([%d%.]+)%% 几率击退敌人"]= function(num) return {  mod("EnemyKnockbackChance", "BASE", num)  } end, 
	["获得护体时护甲提高 ([%d%.]+)%%"]= function(num) return {  mod("Armour", "INC", num, { type = "Condition", var = "Fortify" } )  } end, 
	["击中时有 ([%d%.]+)%% 几率使目标中毒"]= function(num) return {  mod("PoisonChance", "BASE", num)  } end, 
	["攻击击中时有 ([%d%.]+)%% 几率使目标中毒"]= function(num) return {  mod("PoisonChance", "BASE", num,nil, ModFlag.Attack)  } end, 
	["匕首攻击的暴击有 (%d+)%% 几率使敌人中毒"] = function(num) return { mod("PoisonChance", "BASE", num, nil, ModFlag.Dagger, { type = "Condition", var = "CriticalStrike" }) } end, --备注：critical strikes with daggers have a (%d+)%% chance to poison the enemy
	["地雷伤害可以穿透 (%d+)%% 元素抗性"]= function(num) return {  mod("ElementalPenetration", "BASE", num,nil,nil,   KeywordFlag.Mine)  } end, 
	["暴击后的 8 秒内，火焰、冰霜和闪电总伤害额外提高 (%d+)%%"]= function(num) return {  mod("ElementalDamage", "MORE", num,{ type = "Condition", var = "CritInPast8Sec" })  } end, 
	["所承受伤害的前 (%d+)%% 会扣除魔力，而非生命"]= function(num) return {  mod("DamageTakenFromManaBeforeLife", "BASE", num)  } end, 
	["总魔力保留额外降低 (%d+)%%"]= function(num) return {  mod("ManaReserved", "MORE", -num)  } end, 
	["技能的总魔力保留额外降低 (%d+)%%"]= function(num) return {  mod("ManaReserved", "MORE", -num)  } end, 
	["总流血伤害额外降低 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", -num,nil,nil, KeywordFlag.Bleed)  } end, 
	["对投射物攻击的总闪避率额外提高 (%d+)%%"]= function(num) return {  mod("ProjectileEvadeChance", "MORE", num)  } end, 
	["对近战攻击的总闪避率额外降低 (%d+)%%"]= function(num) return {  mod("MeleeEvadeChance", "MORE", -num)  } end, 
	["能量护盾回复总速度降低 (%d+)%%"]= function(num) return {  mod("EnergyShieldRecharge", "MORE", -num)  } end, 
	["低血时法术总伤害额外提高 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", num,nil, ModFlag.Spell,{ type = "Condition", var = "LowLife" })  } end, 
	["召唤生物有 (%d+)%% 攻击格挡率"]= function(num) return {   mod("MinionModifier", "LIST", { mod = mod("BlockChance", "BASE", num) })   } end, 
	["击中总伤害降低 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", -num,nil,ModFlag.Hit)  } end, 
	["地雷总伤害额外降低 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", -num,nil,KeywordFlag.Mine )  } end, 
	["近期内，你或你的召唤生物每击败一个敌人，则每秒回复你 1%% 能量护盾，最多 (%d+)%%"] = function(num) return { mod("EnergyShieldRegenPercent", "BASE", 1, { type = "Multiplier", varList = {"EnemyKilledRecently","EnemyKilledByMinionsRecently"}, limit = tonumber(num), limitTotal = true } )  }end,
	["点燃总伤害额外提高 (%d+)%%"] = function(num) return {  mod("Damage", "MORE", num,nil,nil,KeywordFlag.Ignite )  } end, 
	["火焰、冰霜、闪电伤害的 ([%d%.]+)%% 转化为生命偷取"] = function(num) return {  mod("ElementalDamageLifeLeech", "BASE", num )  } end, 
	["近期内你若使用了召唤生物技能，则召唤生物伤害提高 (%d+)%%"]= function(num) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num, { type = "Condition", var = "UsedMinionSkillRecently" } )})  } end, 
	["你施放的光环每秒回复你和周围友军 ([%d%.]+)%% 最大生命"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("LifeRegenPercent", "BASE", num) }) } end, 
	["(%d+)%% 的伤害优先从魔力扣除"]= function(num) return {  mod("DamageTakenFromManaBeforeLife", "BASE", num)  } end,
	["获得等同 (%d+)%% 魔力的额外能量护盾"]= function(num) return {  mod("ManaGainAsEnergyShield", "BASE", num)  } end, 
	["在奉献地面上时，每秒回复 ([%d%.]+)%% 最大魔力和能量护盾"]= function(num) return {  
	mod("ManaRegenPercent", "BASE", num,{ type = "Condition", var = "OnConsecratedGround" } ) , 
	 mod("EnergyShieldRegenPercent", "BASE", num,{ type = "Condition", var = "OnConsecratedGround" } ) ,} end, 
	["受到击中物理伤害的 (%d+)%% 转化为火焰伤害"] = function(num) return {  mod("PhysicalDamageTakenAsFire", "BASE", num)  } end,
	["受到击中物理伤害的 (%d+)%% 转化为冰霜伤害"] = function(num) return {  mod("PhysicalDamageTakenAsCold", "BASE", num)  } end,
	["受到击中物理伤害的 (%d+)%% 转化为闪电伤害"] = function(num) return {  mod("PhysicalDamageTakenAsLightning", "BASE", num)  } end,
	["受到击中物理伤害的 (%d+)%% 转化为混沌伤害"] = function(num) return {  mod("PhysicalDamageTakenAsChaos", "BASE", num)  } end,
	["受到击中火焰、冰霜、闪电伤害的 (%d+)%% 转换为混沌伤害"] = function(num) return {  mod("ElementalDamageTakenAsChaos", "BASE", num)  } end,
	["受到击中火焰伤害的 (%d+)%% 转化为物理伤害"] = function(num) return {  mod("FireDamageTakenAsPhysical", "BASE", num)  } end,
	["近期内，你若被击中并受到火焰伤害，则每秒回复 ([%d%.]+)%% 生命"] = function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Condition", var = "HitByFireDamageRecently" })  } end,
	["火焰伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("FireDamageLifeLeech", "BASE", num)  } end, 
	["冰霜伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("ColdDamageLifeLeech", "BASE", num)  } end, 
	["闪电伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("LightningDamageLifeLeech", "BASE", num)  } end, 
	["混沌伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("ChaosDamageLifeLeech", "BASE", num)  } end, 
	["物理伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("PhysicalDamageLifeLeech", "BASE", num)  } end, 
	["近期内你若有击败敌人，则攻击伤害的 ([%d%.]+)%% 转化为偷取生命和魔力"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack, { type = "Condition", var = "KilledRecently" })  } end, 
	["近期内你若受到【残暴打击】，则其伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,{ type = "Condition", var = "BeenSavageHitRecently" })  } end, 
	["总伤害额外提高 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", num)  } end,
	["每秒回复 ([%d%.]+)%% 能量护盾"]=function(num) return {  mod("EnergyShieldRegenPercent", "BASE", num)  } end,
	["每秒回复 ([%d%.]+) 能量护盾"]=function(num) return {  mod("EnergyShieldRegen", "BASE", num)  } end,
	["每秒回复 ([%d%.]+)%% 生命"]=function(num) return {  mod("LifeRegenPercent", "BASE", num)  } end,
	["近期内你若被击中，则每秒回复 ([%d%.]+)%% 生命"]=function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Condition", var = "BeenHitRecently" })  } end,
	["(%d+)%% 的攻击格挡率同样套用于法术格挡"]=function(num) return {  mod("BlockChanceConv", "BASE", num)  } end,
	["流血总伤害额外提高 (%d+)%%"]=function(num) return {  mod("Damage", "MORE", num,nil,nil, KeywordFlag.Bleed)  } end, 
	["近期内你若有使用过位移技能，则每秒回复 (%d+) 魔力"]=function(num) return {  mod("ManaRegen", "BASE", num,{ type = "Condition", var = "UsedMovementSkillRecently" })  } end,
	["近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 (%d+)%%"]=function(num) return {  mod("LifeRecoveryRate", "INC", num,{ type = "Condition", var = "KilledAffectedByDotRecently" }),mod("ManaRecoveryRate", "INC", num,{ type = "Condition", var = "KilledAffectedByDotRecently" }),mod("EnergyShieldRecoveryRate", "INC", num,{ type = "Condition", var = "KilledAffectedByDotRecently" })  } end,
	["近期每有 1 个你的地雷被引爆，则每秒回复 (%d+)%% 生命，最多 20%%"]= function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Multiplier", var = "MineDetonatedRecently", limit = 20, limitTotal = true } )  } end,
	["近期每有 1 个你的陷阱被触发，则每秒回复 (%d+)%% 生命，最多 20%%"]= function(num) return {  mod("LifeRegenPercent", "BASE", num,{ type = "Multiplier", var = "TrapTriggeredRecently", limit = 20, limitTotal = true } )  } end,
	["狂怒球达到上限时，物理总伤害额外提高 (%d+)%%"]= function(num) return {  mod("PhysicalDamage", "MORE", num, { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" })  } end,
	["击中和异常状态对流血敌人的伤害提高 (%d+)%%"]= function(num) return {  	mod("Damage", "INC", num,nil,ModFlag.Ailment, KeywordFlag.Hit, { type = "ActorCondition", actor = "enemy", var = "Bleeding" })  } end,
	["近期内你若有成功嘲讽敌人，则每秒回复 ([%d%.]+)%% 生命"]= function(num) return {  mod("LifeRegenPercent", "BASE", num, { type = "Condition", var = "TauntedEnemyRecently" } )  } end,
	["近期内你若有击败敌人，则总伤害额外提高 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", num, { type = "Condition", var = "KilledRecently" })  } end,
	["【猛攻】状态下闪避近战攻击的几率额外提高 (%d+)%%"] = function(num) return {  mod("MeleeEvadeChance", "MORE", num, { type = "Condition", var = "Onslaught" } )  } end,
	["【猛攻】状态下闪避投射物的总几率额外提高 (%d+)%%"]= function(num) return {  mod("ProjectileEvadeChance", "MORE", num,{ type = "Condition", var = "Onslaught" })  } end,
	["药剂持续期间，有 ([%d%.]+)%% 几率击中时使敌人中毒"]= function(num) return {  mod("PoisonChance", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end, 
	["药剂持续期间，有 (%d+)%% 几率冰冻，感电和点燃敌人"]= function(num) return {mod("EnemyFreezeChance", "BASE", num,{ type = "Condition", var = "UsingFlask" }),mod("EnemyShockChance", "BASE", num,{ type = "Condition", var = "UsingFlask" }),mod("EnemyIgniteChance", "BASE", num,{ type ="Condition", var = "UsingFlask" })  } end, 
	["投射物穿透目标后，投射物对它们的暴击率提高 (%d+)%%"]= function(num) return {  mod("CritChance", "INC", num,nil,ModFlag.Projectile ,{ type = "StatThreshold", stat = "PierceCount", threshold = 1 } )  } end,
	["近期内你若使用过技能，每使用 1 个技能，你身上的【提速尾流】效果提高 (%d+)%%，最多 100%%"] = function(num) return {  mod("TailwindEffectOnSelf", "INC", num,{ type = "Multiplier", var = "SkillUsedRecently", limit = 100, limitTotal = true } )  } end,
	["击中流血中的敌人时回复 %+(%d+) 生命"] = function(num) return {  mod("LifeOnHit", "BASE", num,{ type = "ActorCondition", actor = "enemy", var = "Bleeding" })  } end,  
	["陷阱所使用的技能范围扩大 (%d+)%%"] = function(num) return {  mod("AreaOfEffect", "INC", num,nil,nil, KeywordFlag.Trap)  } end,
	["能量护盾全满时，总闪避率额外提高 (%d+)%%"]= function(num) return {  mod("EvadeChance", "MORE", num,{ type = "Condition", var = "FullEnergyShield" })  } end,
	["持续性总伤害额外提高 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", num,nil, ModFlag.Dot)  } end,
	["对满血敌人的攻击和法术总暴击率额外提高 (%d+)%%"]= function(num) return {  mod("CritChance", "MORE", num,{ type = "ActorCondition", actor = "enemy", var = "FullLife" })  } end,
	["对低血敌人的攻击和法术总暴击率额外提高 (%d+)%%"]= function(num) return {  mod("CritChance", "MORE", num,{ type = "ActorCondition", actor = "enemy", var = "LowLife" })  } end,
	["每对敌人造成一层中毒效果，便附加 %+([%d%.]+)%% 攻击和法术基础暴击率，最多 %+2%.0%%"]= function(num) return {  mod("CritChance", "BASE", num,{ type = "Multiplier", actor = "enemy", var = "PoisonStack", limit = 2, limitTotal = true })  } end,
	["近期你每造成一层中毒效果，中毒持续时间便延长 (%d+)%%"]= function(num) return {  mod("EnemyPoisonDuration", "INC", num, { type = "Multiplier", var = "PoisonAppliedRecently" })  } end,
	["对中毒敌人时，获得额外混沌伤害，其数值等同于物理伤害的 (%d+)%%"]= function(num) return {  mod("PhysicalDamageGainAsChaos", "BASE", num,nil, ModFlag.Hit,{ type = "ActorCondition", actor = "enemy", var = "Poisoned"})  } end,
	["暴击时攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack, { type = "Condition", var = "CriticalStrike" })  } end, 
	["击中时有 ([%d%.]+)%% 几率使敌人中毒"]= function(num) return {  mod("PoisonChance", "BASE", num)  } end, 
	["对中毒敌人造成攻击伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("DamageManaLeech", "BASE", num,nil, ModFlag.Attack, { type = "ActorCondition", actor = "enemy", var = "Poison" })  } end, 
	["攻击瘫痪的敌人时，攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack, { type = "ActorCondition", actor = "enemy", var = "Maimed" })  } end, 
	["周围友军获得每秒回复 ([%d%.]+)%% 生命"] = function(num) return { mod("ExtraAura", "LIST",{ mod =mod("LifeRegenPercent", "BASE", num), onlyAllies = true} )} end,
	["周围友军获得 (%d+)%% 魔力回复"]  = function(num) return { mod("ExtraAura", "LIST",{ mod =mod("ManaRegen", "INC", num), onlyAllies = true} )} end,
	["此物品上的技能石受到 (%d+) 级的 技能陷阱化 辅助"] = function(num) return { mod("ExtraSupport", "LIST", { skillId = "SupportTrap", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["此物品上的技能石受到 (%d+) 级的 (.+) 辅助"] = function(num, _, support) return { 
	mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]   or gemIdLookup[support:gsub("^提高","增加").."(辅)"]  or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["插槽内的的技能石被 (%d+) 级的(.+)辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]  or gemIdLookup[support:gsub("^提高","增加").."(辅)"] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["此物品上的技能石受到 (%d+) 级的(.+)辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]   or gemIdLookup[support:gsub("^提高","增加").."(辅)"] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["此物品上的技能石由 (%d+) 级的(.+)辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]  or gemIdLookup[support:gsub("^提高","增加").."(辅)"] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["插槽内的的技能石被 (%d+) 级的 (.+) 辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]   or gemIdLookup[support:gsub("^提高","增加").."(辅)"] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["插槽内的技能石受到 (%d+) 级的 (.+) 辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]  or gemIdLookup[support:gsub("^提高","增加").."(辅)"] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["插槽内的技能石被 (%d+) 级的 (.+) 辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]   or gemIdLookup[support:gsub("^提高","增加").."(辅)"] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	["此物品上的诅咒技能石受到 (%d+) 级的 (.+) 辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", 
	{ skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^提高","")] or gemIdLookup[support.."(辅)"]  or "Unknown", level = num },
	{ type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["([%d%.]+)%% 额外物理伤害减伤"]= function(num) return {  mod("PhysicalDamageReduction", "BASE", num)  } end, 
	["受到击中冰霜伤害的 (%d+)%% 转为火焰伤害"] = function(num) return {  mod("ColdDamageTakenAsFire", "BASE", num)  } end,
	["受到击中冰霜伤害的 (%d+)%% 转为闪电伤害"] = function(num) return {  mod("ColdDamageTakenAsLightning", "BASE", num)  } end,
	["受到击中火焰伤害的 (%d+)%% 转为冰霜伤害"] = function(num) return {  mod("FireDamageTakenAsCold", "BASE", num)  } end,
	["受到击中火焰伤害的 (%d+)%% 转为闪电伤害"] = function(num) return {  mod("FireDamageTakenAsLightning", "BASE", num)  } end,
	["受到击中闪电伤害的 (%d+)%% 转为冰霜伤害"] = function(num) return {  mod("LightningDamageTakenAsCold", "BASE", num)  } end,
	["受到击中闪电伤害的 (%d+)%% 转为火焰伤害"] = function(num) return {  mod("LightningDamageTakenAsFire", "BASE", num)  } end,
	["(%d+)%% 攻击格挡率"] = function(num) return {  mod("BlockChance", "BASE", num)  } end,
	["(%d+)%% 法术格挡率"] = function(num) return {  mod("SpellBlockChance", "BASE", num)  } end,
	["未被诅咒时获得 (%d+)%% 额外格挡率"] = function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "Cursed", neg = true })  } end,
	["被诅咒时获得 (%d+)%% 额外法术格挡率"]= function(num) return {  mod("SpellBlockChance", "BASE", num,{ type = "Condition", var = "Cursed" })  } end,
	["冰冻时每秒回复 (%d+)%% 生命"]= function(num) return {  mod("LifeRegenPercent", "BASE", num, { type = "Condition", var = "Frozen" })  } end,
	["移动时每秒回复 (%d+) 生命"]= function(num) return {  mod("LifeRegen", "BASE", num, { type = "Condition", var = "Moving" })  } end,
	["低血时闪避值提高 %+(%d+)"]= function(num) return {  mod("Evasion", "BASE", num, { type = "Condition", var = "LowLife" })  } end,
	["低血时每秒回复 ([%d%.]+)%% 生命"] = function(num) return {  mod("LifeRegenPercent", "BASE", num, { type = "Condition", var = "LowLife" })  } end,
	["满血时闪避值提高 %+(%d+)"]= function(num) return {  mod("Evasion", "BASE", num, { type = "Condition", var = "FullLife" })  } end,
	["每有一个暴击球，你受到伤害的 ([%d%.]+)%% 由魔力先承担"]= function(num) return {  mod("DamageTakenFromManaBeforeLife", "BASE", num, { type = "Multiplier", var = "PowerCharge" } )  } end,
	["获得 (%d+) 级的主动技能【元素之愈】"] = function(num) return {  mod("ExtraSkill", "LIST", { skillId ="VaalAuraElementalDamageHealing", level = num})   } end,
	["获得 (%d+) 级的【幻象传送】"] = function(num) return {  mod("ExtraSkill", "LIST", { skillId ="MerveilWarp", level = num})   } end,
	["(%d+)%% 的最大生命转化为能量护盾"]= function(num) return {  mod("LifeConvertToEnergyShield", "BASE", num)  } end,
	["冰霜伤害击中时有 (%d+)%% 的几率冰冻敌人"]= function(num) return {  mod("EnemyFreezeChance", "BASE", num)  } end,
	["%−(%d+)%% 攻击和法术暴击伤害加成"]= function(num) return {  mod("CritMultiplier", "BASE", -num, { type = "Global" } )  } end,
	["被点燃时，火焰伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("FireDamageLifeLeech", "BASE", num, { type = "Condition", var = "Ignited" } )  } end,
	["药剂持续期间，能量护盾延后 (%d+)%% 开始回复"]= function(num) return {  mod("EnergyShieldRechargeFaster", "INC", num,  { type = "Condition", var = "UsingFlask" }  )  } end,
	["装备和技能石的属性需求提高 (%d+)%%"] = function(num) return { mod("GlobalAttributeRequirements", "INC", num) } end,
	["攻击和法术总暴击率额外降低 (%d+)%%"] = function(num) return { mod("CritChance", "MORE", -num) } end,
	["获得 (%d+) 级的主动技能【(.+)】，且可被此道具上的技能石辅助"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：grants level (%d+) (.+)
	["获得 (%d+) 级【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end,
	["造成的异常状态持续时间缩短 (%d+)%%"] = function(num) return { mod("EnemyShockDuration", "INC", -num),mod("EnemyFreezeDuration", "INC", -num),mod("EnemyChillDuration", "INC", -num),mod("EnemyIgniteDuration", "INC", -num),mod("EnemyBleedDuration", "INC", -num),mod("EnemyPoisonDuration", "INC", -num)} end,
	["造成的异常状态持续时间延长 (%d+)%%"] = function(num) return { mod("EnemyShockDuration", "INC", num),mod("EnemyFreezeDuration", "INC", -num),mod("EnemyChillDuration", "INC", -num),mod("EnemyIgniteDuration", "INC", -num),mod("EnemyBleedDuration", "INC", -num),mod("EnemyPoisonDuration", "INC", -num)} end,
	["([%d%.]+) 每秒生命回复"] = function(num) return {  mod("LifeRegent", "BASE", num)  } end,
	["([%d%.]+) 每秒魔力回复"] = function(num) return {  mod("ManaRegen", "BASE", num)  } end,
	["每秒 ([%d%.]+) 基础魔力回复"] = function(num) return {  mod("ManaRegen", "BASE", num)  } end,
	["每秒 ([%d%.]+)%% 魔力回复"]= function(num) return {  mod("ManaRegenPercent", "BASE", num )  } end,
	["物理攻击伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("PhysicalDamageManaLeech", "BASE", num,nil, ModFlag.Attack)  } end, 
	["【(.+)】的魔力保留降低 ([%d%.]+)%%"] = function(_, skill_name, num) return { mod("ManaReserved", "INC",-num, { type = "SkillName", skillName =  skill_name or "Unknown"}) } end,
	["药剂持续期间，有 (%d+)%% 几率冰冻"]= function(num) return {mod("EnemyFreezeChance", "BASE", num,{ type = "Condition", var = "UsingFlask" }) } end, 
	["药剂持续期间，有 (%d+)%% 几率感电"]= function(num) return {mod("EnemyShockChance", "BASE", num,{ type = "Condition", var = "UsingFlask" }) } end, 
	["药剂持续期间，有 (%d+)%% 几率点燃"]= function(num) return {mod("EnemyIgniteChance", "BASE", num,{ type ="Condition", var = "UsingFlask" })  } end, 
	["每个暴击球会提供攻击伤害 ([%d%.]+)%% 的魔力偷取"]= function(num) return {  mod("DamageManaLeech", "BASE", num,nil, ModFlag.Attack,{ type = "Multiplier", var = "PowerCharge" })  } end, 
	["对被冰缓敌人所造成的攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack,{ type = "ActorCondition", actor = "enemy", var = "Chilled" })  } end, 
	["获得等同 ([%d%.]+)%% 最大生命的额外能量护盾"]= function(num) return {  mod("LGainAsEnergyShield", "BASE", num)  } end, 
	["获得【(.+)】"] = function(_,skill) return extraSkill(skill) end, 
	["暴走时触发 (%d+) 级的【(.+)】"]= function(num, _, skill) return extraSkill(skill, num) end,
	["暴击时触发 (%d+) 级的【(.+)】"]= function(num, _, skill) return extraSkill(skill, num) end,
	["插槽内的的近战技能石范围扩大 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("AreaOfEffect", "INC", num) }, { addToSkill = { type = "SocketedIn", slotName = "{SlotName}", keyword = "melee" }} ) } end,
	["每装备 1 个【裂界之器】，异常状态的伤害便提高 (%d+)%%"] = function(num) return {  mod("Damage", "INC", num,nil,ModFlag.Ailment,{ type = "Multiplier", var = "ElderItem" })  } end,
	["每装备 1 个【裂界之器】，最大生命提高 %+(%d+)"]= function(num) return {  mod("Life", "BASE", num,{ type = "Multiplier", var = "ElderItem" })  } end,
	["每装备 1 个【裂界之器】，非伤害性异常状态的效果便提高 (%d+)%%"]= function(num) return {  
	mod("EnemyShockEffect", "INC", num,nil,ModFlag.Ailment,{ type = "Multiplier", var = "ElderItem" }) ,
	mod("EnemyChillEffect", "INC", num,nil,ModFlag.Ailment,{ type = "Multiplier", var = "ElderItem" }) ,
	mod("EnemyFreezeEffech", "INC", num,nil,ModFlag.Ailment,{ type = "Multiplier", var = "ElderItem" })  } end,
	["【(.+)】的伤害提高 (%d+)%%"] = function(_, skill_name, num) return { mod("Damage", "INC",num, { type = "SkillName", skillName = skill_name or "Unknown"}) } end, 
	["敌人身上每有 1 层蜘蛛网，则附加 (%d+) %- (%d+) 混沌伤害"] = function(_,num1,num2) return { 
	 mod("ChaosMin", "BASE", num1,{ type = "Multiplier", actor = "enemy", var = "Spider's WebStack" } ), 
	 mod("ChaosMax", "BASE", num2,{ type = "Multiplier", actor = "enemy", var = "Spider's WebStack" } ) } end,
	["空手攻击时的物理总伤害额外提高 (%d+)%%"]= function(num) return { mod("PhysicalDamage", "MORE", num,nil, ModFlag.Unarmed ) } end,
	["中毒持续总时间额外降低 (%d+)%%"] = function(num) return {  mod("EnemyPoisonDuration", "MORE", -num)  } end,
	["火焰技能有 (%d+)%% 几率使敌人中毒"] = function(num) return {  mod("PoisonChance", "BASE", num,nil,nil,KeywordFlag.Fire)  } end,
	["冰霜技能有 (%d+)%% 几率使敌人中毒"] = function(num) return {  mod("PoisonChance", "BASE", num,nil,nil,KeywordFlag.Cold)  } end,
	["闪电技能击中有 (%d+)%% 几率造成中毒"] = function(num) return {  mod("PoisonChance", "BASE", num,nil,nil,KeywordFlag.Lightning)  } end,
	["此物品上的火焰、冰霜、闪电技能石等级 %+(%d+)"] = function(num) return { mod("GemProperty", "LIST",  { keyword = "elemental", key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["拥有最大数量的狂怒球时，攻击有 (%d+)%% 几率使敌人中毒"] = function(num) return{ mod("PoisonChance", "BASE", num, nil, ModFlag.Attack, { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" }) }end,
	["召唤生物获得等同 (%d+)%% 物理伤害的额外冰霜伤害"]=function(num) return { mod("MinionModifier", "LIST", { mod = mod("PhysicalDamageGainAsCold", "BASE", num) })  } end,
	["(%d+)%% 较少(.+)时间"]= function(_, num,skill_name)  return {  mod("Duration", "MORE", -num,{ type = "SkillName", skillName = skill_name or "Unknown"})  } end,
	["击败敌人时有 (%d+)%% 几率触发 (%d+) 级的【(.+)】"]= function(_, num,levelname,skill_name)return {   mod("ExtraSkill", "LIST", { skillId =gemIdLookup[skill_name] or "Unknown", level = levelname})   } end,
	["物理伤害的 (%d+)%% 转换为闪电伤害"] = function(num) return { mod("PhysicalDamageConvertToLightning", "BASE", num) } end,
	["装备时触发 (%d+) 级的【元素神盾】"] = function(num) return{mod("ExtraSkill", "LIST", { skillId = "ElementalAegis", level = num}) }end, 
	["装备时触发 (%d+) 级的【寒冰神盾】"] = function(num) return{mod("ExtraSkill", "LIST", { skillId = "ColdAegis", level = num}) }end, 
	["装备时触发 (%d+) 级的【火焰神盾】"] = function(num) return{mod("ExtraSkill", "LIST", { skillId = "FireAegis", level = num}) }end, 
	["低血时，(%d+)%% 的攻击格挡率套用于法术格挡"] = function(num) return {  mod("BlockChanceConv", "BASE", num, { type = "Condition", var = "LowLife" } )  } end,
	["近期内你若有击败敌人，则范围效果扩大 (%d+)%%，最多 (%d+)%%"] = function(_,num1,num2) return { mod("AreaOfEffect", "INC", num1, { type = "Multiplier", var = "EnemyKilledRecently", limit = tonumber(num2), limitTotal = true } ) } end,
	["格挡时，用 (%d+) 级的【(.+)】诅咒敌人"] = function(num, _, skill) return extraSkill(skill, num, true) end, 
	["攻击被嘲讽的敌人时，攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack,{ type = "ActorCondition", actor = "enemy", var = "Taunted" })  } end, 
	["你身上的每层中毒状态使你每秒回复 (%d+) 能量护盾，最多可有 (%d+) 秒"]= function(_,num1,num2) return {  mod("EnergyShieldRegen", "BASE", num1,{ type = "Multiplier", var = "PoisonStack", limit = tonumber(num2), limitTotal = true })  } end,
	["获得 (%d+) 级的【(.+)】"] = function(_,num,skill_name) return {  mod("ExtraSkill", "LIST", { skillId =gemIdLookup[skill_name] or "Unknown", level = num})   } end,
	["召唤生物身上的光环效果提高 (%d+)%%"]= function(num) return { mod("MinionModifier", "LIST", { mod = mod("AuraEffectOnSelf", "INC", num) })  } end,
	["对受诅咒敌人造成伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num, nil, ModFlag.Hit,{ type = "ActorCondition", actor = "enemy", var = "Cursed" })  } end, 
	["攻击击中被诅咒敌人时有 (%d+)%% 几率造成流血"]= function(num) return {  mod("BleedChance", "BASE", num, nil, ModFlag.Attack,{ type = "ActorCondition", actor = "enemy", var = "Cursed" })  } end, 
	["击中时有 (%d+)%% 几率造成流血"] = { mod("BleedChance", "BASE", 100, { type = "Condition", var = "{Hand}Attack" }) }, --备注：causes bleeding on hit
	["近战击中有 %d+%% 几率触发 (%d+) 级的【熔岩爆破】"] =  function( _, num) return 	{mod("ExtraSkill", "LIST", { skillId = "TriggeredMoltenStrike", level = num}) }end,
	["暴击时偷取等同 ([%d%.]+)%% 伤害的生命"]= function(num) return {  mod("DamageLifeLeech", "BASE", num, { type = "Condition", var = "CriticalStrike" })  } end, 
	["每 (%d+) 点力量会使武器物理伤害提高 (%d+)%%"] = function(_,num1,num2) return {  mod("PhysicalDamage", "INC", num2,nil, ModFlag.Weapon,{ type = "PerStat", stat = "Str", div = num1 })  } end,
	["获得额外混沌伤害，其数值等同于火焰、冰霜、闪电伤害的 (%d+)%%"] = function(num) return {  mod("ElementalDamageGainAsChaos", "BASE", num)  } end,
	["每有 1 个轮回球，便获得额外混沌伤害，其数值等同于非混沌伤害的 (%d+)%%"]
	 = function(num) return {  mod("NonChaosDamageGainAsChaos", "BASE", num, { type = "Multiplier", var = "SiphoningCharge" })  } end,
	["每有 1 个轮回球，便获得 ([%d%.]+)%% 击中物理伤害减免"]
	 = function(num) return {  mod("PhysicalDamageReduction", "BASE", num, { type = "Multiplier", var = "SiphoningCharge" })  } end,
	["每个轮回球可使伤害的 ([%d%.]+)%% 转化为生命偷取"]
	 = function(num) return {  mod("DamageLifeLeech", "BASE", num, { type = "Multiplier", var = "SiphoningCharge" })  } end,
	["近期内你若有使用技能，每有 1 个轮回球，则每秒受到 (%d+) 物理伤害"]
	 = function(num) return {  mod("PhysicalDegen", "BASE", num, { type = "Multiplier", var = "SiphoningCharge" },{ type = "Condition", var = "UsedSkillRecently" })  } end,
	["近期内你若有使用战吼，你和周围友军的攻击，施法和移动速度提高 (%d+)%%"]= function(num) return { 
	 mod("Speed", "INC", num,{ type = "Condition", var = "UsedWarcryRecently" }) , mod("MovementSpeed", "INC", num,{ type = "Condition", var = "UsedWarcryRecently" })  } end,
	["([%+%-]?%d+) 灵体最大生命"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Life", "BASE", num,{ type = "SkillName", skillName = "召唤灵体" }) })  } end,
	["被击中时承受额外 ([%+%-]?%d+) 火焰伤害"] = function(num) return {  mod("FireDamageTakenWhenHit", "BASE", num,nil,nil,KeywordFlag.Fire)  } end,
	["每拥有 1 个暴击球，有 (%d+)%% 几率造成中毒"]= function(num) return { mod("PoisonChance", "BASE", num,{ type = "Multiplier", var = "PowerCharge" } ) } end,
	["当暴击球达到上限时，获得等同 (%d+)%% 物理伤害的混沌伤害"] = function(num) return {  mod("PhysicalDamageGainAsChaos", "BASE", num,{ type = "StatThreshold", stat = "PowerCharges", thresholdStat = "PowerChargesMax" } )  } end,
	["你拥有至少 (%d+) 个【深海屏障】时，格挡几率额外提高 (%d+)%%"] = function(num1,_,num2) return {  mod("BlockChance", "BASE", num2,{ type = "StatThreshold", stat = "CrabBarriers", threshold = num1} )  } end,
	["每 (%d+) 点力量可使魔卫召唤上限额外提高 1 个"]= function(num) return {  mod("ActiveZombieLimit", "BASE", 1,{ type = "PerStat", stat = "Str", div = num })  } end,
	["召唤愤怒狂灵的最大数量减少 (%d+)%%"]= function(num) return {  mod("ActiveRagingSpiritLimit", "INC", -num)  } end,
	["每有 (%d+) 层能量护盾可每秒回复 ([%d%.]+)%% 生命"]= function(_,num1,num2) return {  mod("LifeRegenPercent", "BASE", num2,{ type = "PerStat", stat = "EnergyShield", div = num1 })  } end,
	["移动时获得额外 (%d+)%% 物理伤害减免"]= function(num) return {  mod("PhysicalDamageReduction", "BASE", num,{ type = "Condition", var = "Moving" } )  } end, 
	["若你至少拥有 (%d+) 层能量护盾，则每秒回复 (%d+) 生命"]= function(num1,_,num2) return { 
	mod("LifeRegen", "BASE", num2,{ type = "StatThreshold", stat = "EnergyShield", threshold = num1 })  } end,
	["血魔法"] = { mod("Mana", "MORE", -100), flag("BloodMagic") },
	["近距离用弓击中后的总伤害额外提高 (%d+)%%"] = function(num) return {  mod("Damage", "MORE", num,nil,bor(ModFlag.Bow, ModFlag.Hit) , { type = "Condition", var = "AtCloseRange" } )  } end,
	["每个狂怒球可使攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack, { type = "Multiplier", var = "FrenzyCharge" })  } end, 
	["移动时每有 1 个狂怒球，则每秒受到 (%d+) 冰霜伤害"]= function(num) return {  mod("ColdDegen", "BASE", num,{ type = "Multiplier", var = "FrenzyCharge" },{ type = "Condition", var = "Moving" })  } end, 
	["药剂持续期间，获得 完美苦痛 天赋效果"] = { mod("Keystone", "LIST", "完美苦痛", { type = "Condition", var = "UsingFlask" }) }, --备注：grants perfect agony during flask effect
	["武器总伤害额外降低 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", -num, nil,ModFlag.Weapon)  } end,
	["药剂持续期间，获得等同 (%d+)%% 物理伤害的冰霜伤害"]= function(num) return {  mod("PhysicalDamageGainAsCold", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,
	["生效期间，瓦尔技能的伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", num,nil,KeywordFlag.Vaal,{ type = "Condition", var = "UsingFlask" })  } end,
	["生效期间，瓦尔技能的总伤害额外提高 (%d+)%%"]= function(num) return {  mod("Damage", "MORE", num,nil,KeywordFlag.Vaal,{ type = "Condition", var = "UsingFlask" })  } end,
	["药剂持续期间，近战物理总伤害额外提高 (%d+)%%"]= function(num) return {  mod("PhysicalDamage", "MORE", num,nil, ModFlag.Melee,{ type = "Condition", var = "UsingFlask" })  } end,
	["药剂持续期间，物理伤害的 (%d+)%% 转换为闪电伤害"]= function(num) return {  mod("PhysicalDamageGainAsLightning", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,
	["药剂持续期间，闪电伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("LightningDamageLifeLeech", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end, 
	["药剂持续期间，混沌伤害的 ([%d%.]+)%% 会转化为生命偷取"]= function(num) return {  mod("ChaosDamageLifeLeech", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end, 
	["药剂持续期间，技能可以额外发射 (%d+) 个投射物"]= function(num) return {  mod("ProjectileCount", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end, 
	["药剂持续期间，获得额外混沌伤害，其数值等同于 (%d+)%% 物理伤害"]= function(num) return {  mod("PhysicalDamageGainAsChaos", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,
	["药剂持续期间，获得额外混沌伤害，其数值等同于 (%d+)%% 火焰、冰霜、闪电伤害"]= function(num) return {  mod("ElementalDamageGainAsChaos", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,
	["近期内你若打出过暴击，则每有 1 个暴击球，就会每秒受到 (%d+) 闪电伤害"]= function(num) return {  mod("LightningDegen", "BASE", num,{ type = "Multiplier", var = "PowerCharge" },{ type = "Condition", var = "CritRecently" }) } end, 
	["该武器击中致盲敌人时，附加 (%d+) %- (%d+) 基础火焰伤害"]= function(_,num1,num2) return { 
		 mod("FireMin", "BASE", num1,nil,bor(ModFlag.Hit,ModFlag.Spell,ModFlag.Attack), { type = "Condition", var = "{Hand}Attack" } ,{ type = "ActorCondition", actor = "enemy", var = "Blinded" }),
		 mod("FireMax", "BASE", num2,nil,bor(ModFlag.Hit,ModFlag.Spell,ModFlag.Attack), { type = "Condition", var = "{Hand}Attack" } ,{ type = "ActorCondition", actor = "enemy", var = "Blinded" })  } end, 
	["人物等级每到达 (%d+) 级，该插槽内的【主动技能石】等级 %+(%d+)"] = function(div, _,num )return { mod("GemProperty", "LIST", { keyword = "active_skill", key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }, { type = "Multiplier", var = "Level", div = tonumber(div) }) } end,
	["玩家等级每提高 (%d+) 级，该武器攻击时便附加 (%d+) %- (%d+) 物理伤害"]= function(_,level,num1,num2) return {
	mod("PhysicalMin", "BASE", num1,nil,ModFlag.Attack,{ type = "Condition", var = "{Hand}Attack" },{ type = "Multiplier", var = "Level", div = level } ) ,
	mod("PhysicalMax", "BASE", num2,nil,ModFlag.Attack,{ type = "Condition", var = "{Hand}Attack" },{ type = "Multiplier", var = "Level", div = level } ) } end,
	["召唤生物击中时有 ([%d%.]+)%% 几率使目标中毒"]= function(num) return { mod("MinionModifier", "LIST", { mod = mod("PoisonChance", "BASE", num) })  } end,	
	["召唤生物对中毒的敌人造成伤害的 ([%d%.]+)%% 转化为生命偷取"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Hit,{ type = "ActorCondition", actor = "enemy", var = "Poisoned"}) })  } end,
	["获得额外火焰伤害，其数值等同于 (%d+)%% 剑类物理伤害"]= function(num) return {  mod("PhysicalDamageGainAsFire", "BASE", num,nil, ModFlag.Sword )  } end,
	["该武器对被点燃敌人的击中伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", num,nil,ModFlag.Hit,{ type = "Condition", var = "{Hand}Attack" } ,{ type = "ActorCondition", actor = "enemy", var = "Ignited" })  } end,
	["该武器对被冰冻敌人的击中伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", num,nil,ModFlag.Hit,{ type = "Condition", var = "{Hand}Attack" } ,{ type = "ActorCondition", actor = "enemy", var = "Frozen" })  } end,
	["该武器对被感电敌人的击中伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", num,nil,ModFlag.Hit,{ type = "Condition", var = "{Hand}Attack" } ,{ type = "ActorCondition", actor = "enemy", var = "Shocked" })  } end,
	["近期内你若使用过移动技能，技能可以额外发射 (%d+) 个投射物"]= function(num) return {  mod("ProjectileCount", "BASE", num, { type = "Condition", var = "UsedMovementSkillRecently" })  } end,
	["近期内你若被击中，技能可以额外发射 (%d+) 个投射物"]= function(num) return {  mod("ProjectileCount", "BASE", num, { type = "Condition", var = "BeenHitRecently" })  } end,
	["武器上的每个红色插槽使物理伤害提高 (%d+)%%"]= function(num) return {  mod("PhysicalDamage", "INC", num,nil, ModFlag.Weapon, { type = "Multiplier", var = "RedSocketIn{SlotName}" })  } end,
	["每个绿色插槽会使全局攻击速度提高 (%d+)%%"]= function(num) return {  mod("Speed", "INC", num,nil, ModFlag.Weapon, { type = "Global" }, { type = "Multiplier", var = "GreenSocketIn{SlotName}" })  } end,
	["每个蓝色插槽会使你物理攻击伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("PhysicalDamageManaLeech", "BASE", num,nil, ModFlag.Attack, { type = "Multiplier", var = "BlueSocketIn{SlotName}" })  } end, 
	["每个白色插槽可以扩大 %+(%d+) 近战武器范围"]= function(num) return {  mod("MeleeWeaponRange", "BASE", num, { type = "Multiplier", var = "WhiteSocketIn{SlotName}" })  } end, 
	["静止时获得【霸体】"] = { mod("Keystone", "LIST", "霸体", { type = "Condition", var = "Stationary" }) },
	["每个红色插槽会使你物理攻击伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("PhysicalDamageLifeLeech", "BASE", num,nil, ModFlag.Attack, { type = "Multiplier", var = "RedSocketIn{SlotName}" })  } end, 
	["每个绿色插槽 %+(%d+)%% 攻击和法术暴击伤害加成"]= function(num) return {  mod("CritMultiplier", "BASE", num,{ type = "Global" }, { type = "Multiplier", var = "GreenSocketIn{SlotName}" })  } end, 
	["每个白色插槽会使防御提高 (%d+)%%"]= function(num) return {  mod("Defences", "INC", num,{ type = "Global" }, { type = "Multiplier", var = "WhiteSocketIn{SlotName}" })  } end, 
	["装备于副手时有 (%d+)%% 额外格挡几率"]= function(num) return {  mod("BlockChance", "BASE", num, { type = "SlotNumber", num = 2 })  } end, 
	["点燃敌人时获得 %d+ 秒【她的拥抱】效果"] = { flag("Condition:CanGainHerEmbrace") }, 
	["召唤生物的攻击额外造成 (%d+) %- (%d+) 物理伤害"]= function(_,num1,num2) return {mod("MinionModifier", "LIST", {mod=mod("PhysicalMin","BASE",num1,nil,ModFlag.Attack )  }),mod("MinionModifier", "LIST", { mod = mod("PhysicalMax", "BASE", num2,nil,ModFlag.Attack )})} end,
	["近期内你若被击中过，则每有 1 个耐力球，就会每秒受到 (%d+) 火焰伤害"]
	= function(num) return {  mod("FireDegen", "BASE", num, { type = "Multiplier", var = "EnduranceCharge" }, { type = "Condition", var = "BeenHitRecently" })  } end, 
	["对流血敌人造成的攻击伤害的 (%d+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack,{ type = "ActorCondition", actor = "enemy", var = "Bleeding" })  } end, 
	["游侠：移动速度提高 (%d+)%%"]= function(num) return {  mod("MovementSpeed", "BASE", num,{ type = "Condition", var = "ConnectedTo游侠Start" })  } end,
	["圣堂武僧：伤害穿透 (%d+)%% 火焰、冰霜、闪电抗性"]= function(num) return {  mod("ElementalPenetration", "BASE", num,{ type = "Condition", var = "ConnectedTo圣堂武僧Start" })  } end,
	["暗影：%+([%d%.]+)%% 暴击率"]= function(num) return {  mod("CritChance", "BASE", num,{ type = "Condition", var = "ConnectedTo暗影刺客Start" })  } end,
	["贵族：%+(%d+) 所有属性"]= function(num) return { 
	 mod("Str", "BASE", num,{ type = "Condition", var = "ConnectedTo贵族Start" }) ,
	 mod("Dex", "BASE", num,{ type = "Condition", var = "ConnectedTo贵族Start" }) ,
	 mod("Int", "BASE", num,{ type = "Condition", var = "ConnectedTo贵族Start" }) 
	 } end,
	["【(.+)】的持续时间缩短 (%d+)%%"]  = function( _,skill_name, num) return { mod("Duration", "INC",-num, { type = "SkillName", skillName = skill_name }) } end, 	
	["召唤生物有额外 (%d+)%% 躲避击中几率"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("AttackDodgeChance", "BASE", num) })  } end,
	["灵体有 (%d+) 秒的持续时间"] = function(num) return { mod("SkillData", "LIST", { key = "duration", value = 6 }, { type = "SkillName", skillName = "召唤灵体" }) } end,	
	["【(.+)】的魔力消耗降低 (%d+)%%"] = function( _,skill_name, num) return { mod("ManaCost", "INC",-num, { type = "SkillName", skillName = skill_name }) } end, 	
	["野蛮人： 近战技能范围扩大 (%d+)%%"]= function(num) return {  mod("AreaOfEffect", "INC", num,nil, ModFlag.Melee,{ type = "Condition", var = "ConnectedTo野蛮人Start" })  } end,
	["决斗者：攻击伤害的 ([%d%.]+)%% 会转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", num,nil, ModFlag.Attack,{ type = "Condition", var = "ConnectedTo决斗者Start" })  } end,
	["女巫：每秒回复 ([%d%.]+)%% 最大魔力"]= function(num) return {  mod("ManaRegenPercent", "BASE", num, { type = "Condition", var = "ConnectedTo女巫Start" })  } end,
	["魔像的增益效果提高 (%d+)%%"] = function(num) return {  mod("BuffEffect", "INC", num, { type = "SkillType", skillType = SkillType.Golem })  } end,
	["【召唤魔像】的冷却速度提高 (%d+)%%"]  = function(num) return { mod("MinionModifier", "LIST", { mod = mod("CooldownRecovery", "INC",num) },{ type = "SkillType", skillType = SkillType.Golem })  } end,
	["魔像每秒回复 ([%d%.]+)%% 最大生命"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("LifeRegenPercent", "BASE", num) },{ type = "SkillType", skillType = SkillType.Golem })  } end,
	["你身上的每层中毒状态使你获得 %+(%d+)%% 混沌抗性"]= function(num) return {  mod("ChaosResist", "BASE", num, { type = "Multiplier", var = "PoisonStack" } )  } end,
	["受到【愤怒】影响时，(%d+)%% 的物理伤害转化为火焰伤害"]= function(num) return {  mod("PhysicalDamageConvertToFire", "BASE", num,{ type = "Condition", var = "AffectedBy愤怒" })  } end, 
	["受到【愤怒】影响时，火焰伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("FireDamageLifeLeech", "BASE", num,{ type = "Condition", var = "AffectedBy愤怒" })  } end, 
	["受到【愤怒】影响时，获得物理伤害 (%d+)%% 的额外火焰伤害"]= function(num) return {  mod("PhysicalDamageGainAsFire", "BASE", num,{ type = "Condition", var = "AffectedBy愤怒" })  } end, 
	["受到【清晰】影响时，受到伤害的 (%d+)%% 伤害优先从魔力扣除"]= function(num) return {  mod("DamageTakenFromManaBeforeLife", "BASE", num,{ type = "Condition", var = "AffectedBy清晰" })  } end, 
	["受到【清晰】影响时，获得等同最大魔力 (%d+)%% 的额外最大能量护盾"]= function(num) return {  mod("ManaGainAsEnergyShield", "BASE", num,{ type = "Condition", var = "AffectedBy清晰" })  } end, 
	["受到【坚定】影响时，有 (%d+)%% 几率格挡"]= function(num) return {  mod("BlockChance", "BASE", num,{ type = "Condition", var = "AffectedBy坚定" })  } end, 
	["受到【坚定】影响时，获得额外 (%d+)%% 物理伤害减免"]= function(num) return {  mod("PhysicalDamageReduction", "BASE", num,{ type = "Condition", var = "AffectedBy坚定" })  } end, 
	["受到【纪律】影响时，最大能量护盾每秒回复 ([%d%.]+)%%"]= function(num) return {  mod("EnergyShieldRegenPercent", "BASE", num,{ type = "Condition", var = "AffectedBy纪律" })  } end, 
	["受到【纪律】影响时，能量护盾提早 (%d+)%% 开始恢复"]= function(num) return {  mod("EnergyShieldRechargeFaster", "BASE", num,{ type = "Condition", var = "AffectedBy纪律" })  } end, 
	["受到【优雅】影响时，有 %+(%d+)%% 几率闪避攻击"]= function(num) return {  mod("EvadeChance", "BASE", num,{ type = "Condition", var = "AffectedBy优雅" })  } end, 
	["受到【迅捷】影响时获得【迷踪】状态"]= { flag("Condition:Phasing", { type = "Condition", var = "AffectedBy迅捷" }) },
	["受到【元素净化】影响时，受到击中物理伤害的 (%d+)%% 转换为冰霜伤害"]= function(num) return {  mod("PhysicalDamageTakenAsCold", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy元素净化" })  } end, 
	["受到【元素净化】影响时，受到击中物理伤害的 (%d+)%% 转换为火焰伤害"]= function(num) return {  mod("PhysicalDamageTakenAsFire", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy元素净化" })  } end, 
	["受到【元素净化】影响时，受到击中物理伤害的 (%d+)%% 转换为闪电伤害"]= function(num) return {  mod("PhysicalDamageTakenAsLightning", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy元素净化" })  } end, 
	["受到【火焰净化】影响时，受到击中物理伤害的 (%d+)%% 转换为火焰伤害"]= function(num) return {  mod("PhysicalDamageTakenAsFire", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy火焰净化" })  } end, 
	["受到【冰霜净化】影响时，受到击中物理伤害的 (%d+)%% 转换为冰霜伤害"]= function(num) return {  mod("PhysicalDamageTakenAsCold", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy冰霜净化" })  } end, 
	["受到【闪电净化】影响时，受到击中物理伤害的 (%d+)%% 转换为闪电伤害"]= function(num) return {  mod("PhysicalDamageTakenAsLightning", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy闪电净化" })  } end, 
	["受到【活力】影响时，伤害的 ([%d%.]+)%% 转化为生命偷取"]= function(num) return {  mod("DamageLifeLeech", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy活力" })  } end, 
	["受到【活力】影响时， 每秒回复 (%d+) 生命"]= function(num) return {  mod("DamageLifeLeech", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy活力" })  } end, 
	["受到【雷霆】影响时，闪电伤害的 ([%d%.]+)%% 转化为魔力偷取"]= function(num) return {  mod("LightningDamageManaLeech", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy雷霆" })  } end, 
	["受到【雷霆】影响时，获得物理伤害 (%d+)%% 的额外闪电伤害"]= function(num) return {  mod("PhysicalDamageGainAsLightning", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy雷霆" })  } end, 
	["受到【雷霆】影响时，(%d+)%% 的物理伤害转化为闪电伤害"]= function(num) return {  mod("PhysicalDamageConvertToLightning", "BASE", tonumber(num),{ type = "Condition", var = "AffectedBy雷霆" })  } end, 
	["装备时施放 (%d+) 级的【艾贝拉斯之怒】"]= function(num) return{mod("ExtraSkill", "LIST", { skillId = "RepeatingShockwave", level = tonumber(num)}) }end, 
	["每 (%d+) 点敏捷提高 %+(%d+) 最大生命"] =function(_,num1,num2) return {  mod("Life", "BASE", tonumber(num2),{ type = "PerStat", stat = "Dex", div = tonumber(num1) })  } end, 
	["最大魔力每有 (%d+) 点，则有 (%d+)%% 几率不被攻击和法术击中，最多 (%d+)%%"]=function(_,num1,num2,num3) return {  
	mod("DodgeChance", "BASE", num2,{ type = "PerStat", stat = "Mana", div = num1, limit = tonumber(num3), limitTotal = true }),
	mod("SpellDodgeChance", "BASE", num2,{ type = "PerStat", stat = "Mana", div = num1, limit = tonumber(num3), limitTotal = true }) } end, 
	["拥有【鸟之斗魄】时每秒回复 (%d+) 生命"]= function(num) return {  mod("LifeRegen", "BASE", tonumber(num),{ type = "Condition", var = "AffectedByAvian'sFlight" } )  } end,
	["拥有【鸟之斗魄】时每秒回复 (%d+) 魔力"]= function(num) return {  mod("ManaRegen", "BASE", tonumber(num),{ type = "Condition", var = "AffectedByAvian'sFlight" } )  } end,
	["每 (%d+) 点力量使最大能量护盾提高 %+(%d+)"]= function(_,num1,num2) return {  mod("EnergyShield", "BASE", num2,{ type = "PerStat", stat = "Str", div = num1 } )  } end,
	["此物品上的【(.+)技能石】由 (%d+) 级的 (.+) 辅助"] = function( _,_2,num, support) return { mod("ExtraSupport", "LIST", 
		{ skillId = gemIdLookup[support] or gemIdLookup[support.."(辅)"] or support, level = tonumber(num) }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["每 (%d+) 闪避值提高 (%d+)%% 移动速度，最多 (%d+)%%"]=function(_,num1,num2,num3) return {  
	mod("MovementSpeed", "INC", num2,{ type = "PerStat", stat = "Evasion", div = num1, limit = tonumber(num3), limitTotal = true }) } end, 
	["当你使用物品上的技能时，有 (%d+)%% 的几率触发 (%d+) 级的 【暗影姿态】"]
	 = function(_,num,levelnum) return{mod("ExtraSkill", "LIST", { skillId = "ShadeForm", level = levelnum}) }end, 
	["近期内你若未被击中，则受到的总伤害额外降低 (%d+)%%"]= function(num) return {  mod("DamageTaken", "MORE", -tonumber(num), { type = "Condition", var = "BeenHitRecently", neg = true } )  } end, 
	["不再通过力量获得伤害加成，每 (%d+) 点力量会使近战伤害提高 (%d+)%%"] = function( _,perStr, num) return { mod("StrDmgBonusRatioOverride", "BASE", tonumber(num) / tonumber(perStr)) } end,
	["【(.+)】的增益效果提高 (%d+)%%"] = function(_, skill_name,num) return { mod("BuffEffect", "INC", tonumber(num),{ type = "SkillName", skillName = skill_name } ) } end,	
	["插槽内魔像技能攻击和施法速度提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("Speed", "INC", tonumber(num)) },
	{ type = "SkillType", skillType = SkillType.Golem },  { type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["插槽内魔像技能的增益效果提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("BuffEffect", "INC", tonumber(num)) },
	{ type = "SkillType", skillType = SkillType.Golem },  { type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["插槽内魔像技能获得等同最大生命 (%d+)%% 的额外能量护盾"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("LifeGainAsEnergyShield", "BASE", num) },
	{ type = "SkillType", skillType = SkillType.Golem },  { type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["插槽内的魔像技能每秒回复 (%d+)%% 生命"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("LifeRegenPercent", "BASE", tonumber(num)) },
	{ type = "SkillType", skillType = SkillType.Golem },  { type = "SocketedIn", slotName = "{SlotName}" }) } end, 
	["你受到的时空锁链效果降低 (%d+)%%"] = function(num) return { mod("CurseEffectOnSelf", "INC", -tonumber(num), { type = "SkillName", skillName = "时空锁链" }) } end,
	["在奉献地面上时有 (%d+)%% 额外格挡率"]= function(num) return {  mod("BlockChance", "BASE", tonumber(num),{ type = "Condition", var = "OnConsecratedGround"})  } end,
	["右戒指栏位：每秒回复 (%d+)%% 能量护盾"]=function(num) return {  mod("EnergyShieldRegenPercent", "BASE", tonumber(num),{ type = "SlotNumber", num = 2 })  } end,
	["左戒指栏位：每秒回复 (%d+) 魔力"]=function(num) return {  mod("ManaRegen", "BASE", tonumber(num),{ type = "SlotNumber", num = 1 })  } end,
	["异灵魔侍获得【火之化身】"] = { mod("MinionModifier", "LIST", { mod = mod("Keystone", "LIST", "火之化身") }, { type = "SkillName", skillName = "召唤魔侍" }) },
	["此物品上的技能石额外造成 (%d+) %- (%d+) 火焰伤害"] = function(_,num1,num2) return { 
	 mod("FireMin", "BASE", tonumber(num1),{ type = "SocketedIn", slotName = "{SlotName}" } ), 
	 mod("FireMax", "BASE", tonumber(num2),{ type = "SocketedIn", slotName = "{SlotName}" } ) } end,
	["每 (%d+)%% 的攻击格挡率会使法术伤害提高 (%d+)%%"]=function(_,num1,num2) return {  mod("SpellDamage", "INC", tonumber(num2), { type = "PerStat", stat = "BlockChance", div = tonumber(num1) })  } end,
	["生命偷取会套用于能量护盾"] = { flag("GhostReaver") },
	["中毒 (%d+) 层以上的敌人被该武器攻击击中时，该武器附加 (%d+) %- (%d+) 混沌伤害"] = function(num1,num2,num3,num4) return {
		 mod("ChaosMin", "BASE", tonumber(num3),{ type = "Condition", var = "{Hand}Attack" } , { type = "MultiplierThreshold", actor = "enemy", var = "PoisonStack", threshold = tonumber(num1) } ), 
		 mod("ChaosMax", "BASE", tonumber(num4), { type = "Condition", var = "{Hand}Attack" } ,{ type = "MultiplierThreshold", actor = "enemy", var = "PoisonStack", threshold = tonumber(num1) } ) 
		  } end,  
	["([^\\x00-\\xff]*)光环的效果提高 (%d+)%%"]= function(_, skill_name,num) return { 
	skill_name=="非诅咒类" and   mod("AuraEffect", "INC", tonumber(num))   or  mod("AuraEffect", "INC", tonumber(num),  { type = "SkillName", skillName = skill_name })
	 } end,
	["【(.+)】的光环效果提高 (%d+)%%"]= function(_, skill_name,num) return {  mod("AuraEffect", "INC", tonumber(num),  { type = "SkillName", skillName = skill_name })  } end,
	["此物品上的技能石总攻击和施法速度额外提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("Speed", "MORE", tonumber(num)) },  { type = "SocketedIn", slotName ="{SlotName}"} ) } end,
	["此物品上的技能石火焰、冰霜、闪电总伤害额外提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ElementalDamage", "MORE", tonumber(num)) }, { type = "SocketedIn", slotName ="{SlotName}"} ) } end,
	["承受的冰霜伤害降低 (%d+)%%"]= function(num) return {  mod("ColdDamageTaken", "INC", -tonumber(num))  } end, 
	["承受的闪电伤害降低 (%d+)%%"]= function(num) return {  mod("LightningDamageTaken", "INC", -tonumber(num))  } end, 
	["你的法术每击中 1 个敌人会回复 %+(%d+) 魔力"]= function(num) return {  mod("ManaOnHit", "BASE", tonumber(num),nil,ModFlag.Spell )  } end, 
	["你的法术每击中 1 个敌人会回复 %+(%d+) 生命"]= function(num) return {  mod("LifeOnHit", "BASE", tonumber(num),nil,ModFlag.Spell )  } end, 
	["药剂持续期间，获得额外 (%d+)%% 物理伤害减免"] = function(num) return {  mod("PhysicalDamageReduction", "BASE", tonumber(num),  { type = "Condition", var = "UsingFlask" })  } end,
	["此物品上的技能石持续总伤害额外提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("Damage", "MORE", tonumber(num),nil,ModFlag.Dot) },  { type = "SocketedIn", slotName ="{SlotName}"} ) } end,
	["击中时有 (%d+)%% 几率施放 (%d+) 级的【(.+)】"]= function( _,chance,num, skill) return extraSkill(skill, tonumber(num)) end,
	["药剂持续期间，暴击几率提高 (%d+)%%"]= function(num) return {  mod("CritChance", "INC", tonumber(num),{ type = "Condition", var = "UsingFlask" } )  } end, 
	["近期内你若没有击败过敌人，则伤害穿透 (%d+)%% 元素抗性"]= function(num) return {  mod("ElementalPenetration", "BASE", tonumber(num),{ type = "Condition", var = "KilledRecently", neg = true }  )  } end, 
	["击中时触发【(.+)】"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["击败敌人时触发【(.+)】"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["击杀时触发【(.+)】"] = function(_, skill) return extraSkill(skill, 1, true) end,
	--这个不支持，【寒冰之誓】有问题：["你的技能或召唤生物击败敌人时触发【(.+)】"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["被击中时触发【(.+)】"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["先祖战士长图腾范围扩大 (%d+)%%"] = function(num) return {  mod("AreaOfEffect", "INC", tonumber(num),nil,nil, KeywordFlag.Totem,{ type = "SkillName", skillName = "先祖战士长" })  } end,
	["先祖卫士图腾造成的伤害提高 (%d+)%%"] = function(num) return {  mod("Damage", "INC", tonumber(num),nil,nil, KeywordFlag.Totem,{ type = "SkillName", skillName = "先祖卫士" })  } end,
	["先祖卫士放置速度提高 (%d+)%%"] = function(num) return {  mod("TotemPlacementSpeed", "INC", tonumber(num),nil,nil, KeywordFlag.Totem,{ type = "SkillName", skillName = "先祖卫士" })  } end,
	["先祖卫士的火焰、冰霜、闪电抗性 %+(%d+)%%"] = function(num) return {  mod("ElementalResist", "INC", tonumber(num),nil,nil, KeywordFlag.Totem,{ type = "SkillName", skillName = "先祖卫士" })  } end,
	["【([^\\x00-\\xff]*)】范围扩大 (%d+)%%"] = function(_,skill_name,num) return {  mod("AreaOfEffect", "INC", tonumber(num),nil,nil,{ type = "SkillName", skillName =skill_name })  } end,
	["在【寒冰弹】上施放时，【漩涡】的范围效果扩大 (%d+)%%"]= function(num) return {  mod("AreaOfEffect", "INC", tonumber(num),{ type = "Condition", var = "CastOnFrostbolt" },{ type = "SkillName", skillName ="漩涡" })  } end,
	["【([^\\x00-\\xff]*)】可以额外发射 (%d+) 个投射物"]= function(_,skill_name,num) return {  mod("ProjectileCount", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】有 (%d+)%% 几率造成双倍伤害"]= function(_,skill_name,num) return {  mod("DoubleDamageChance", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】的总移动速度额外提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("MovementSpeed", "MORE", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["([^\\x00-\\xff]*)魔像给予你的增益效果提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("BuffEffect", "INC", tonumber(num),{ type = "SkillName", skillName ="召唤"..skill_name:gsub("雷电","闪电").."魔像" })  } end, 
	["%+(%d+)%% ([^\\x00-\\xff]*)魔像的火焰、冰霜、闪电抗性"] = function(_,num,skill_name) return { mod("MinionModifier", "LIST", { mod = mod("ElementalResist", "BASE", tonumber(num)) },{ type = "SkillName", skillName ="召唤"..skill_name:gsub("雷电","闪电").."魔像" })  } end,
	["【([^\\x00-\\xff]*)】的范围扩大 (%d+)%%"]= function(_,skill_name,num) return {  mod("AreaOfEffect", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["攻城炮台的放置速度提高 (%d+)%%"]= function(num) return {  mod("TotemPlacementSpeed", "INC", tonumber(num),{ type = "SkillName", skillName ="攻城炮台" })  } end, 
	["【([^\\x00-\\xff]*)】造成的伤害提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("Damage", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["%+(%d+)%% 幻化守卫的火焰、冰霜、闪电抗性"] = function(_,num,skill_name) return { mod("MinionModifier", "LIST", { mod = mod("ElementalResist", "BASE", tonumber(num)) },{ type = "SkillName", skillName ="幻化守卫" })  } end,
	["【([^\\x00-\\xff]*)】爆炸范围扩大 (%d+)%%"]= function(_,skill_name,num) return {  mod("AreaOfEffectSecondary", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】对流血敌人附加 (%d+) %- (%d+) 基础物理伤害"]= function(_,skill_name,num1,num2) return { 
		 mod("PhysicalMin", "BASE", num1,nil, KeywordFlag.Hit, { type = "ActorCondition", actor = "enemy", var = "Bleeding" },{ type = "SkillName", skillName =skill_name }) ,
		 mod("PhysicalMax", "BASE", num2, nil,KeywordFlag.Hit, { type = "ActorCondition", actor = "enemy", var = "Bleeding" },{ type = "SkillName", skillName =skill_name }) } end, 
	["冰霜新星有 %+(%d+)%% 冰冻几率"]= function(num) return {  mod("EnemyFreezeChance", "BASE", tonumber(num),{ type = "SkillName", skillName ="冰霜新星" })  } end, 
	["冰霜之锤有 %+(%d+)%% 几率冰冻"]= function(num) return {  mod("EnemyFreezeChance", "BASE", tonumber(num),{ type = "SkillName", skillName ="冰霜之锤" })  } end, 
	["【燃火烧尽】范围效果扩大 (%d+)%%"]= function(num) return {  mod("AreaOfEffect", "INC", tonumber(num),{ type = "SkillName", skillName ="烧毁" })  } end, 
	["【燃火烧尽】最多 %+(%d+) 阶"]= function(num) return {
			mod("Multiplier:IncinerateStage", "BASE", tonumber(num)/2, 0, 0, { type = "SkillPart", skillPart = 2 }),
			mod("Multiplier:IncinerateStage", "BASE", tonumber(num), 0, 0, { type = "SkillPart", skillPart = 3 })	} end,	
	["回春图腾的光环效果提高 (%d+)%%"]= function(num) return {  mod("AuraEffect", "INC", tonumber(num),{ type = "SkillName", skillName ="回春图腾" })  } end, 
	["火球有 %+(%d+)%% 几率点燃"]= function(num) return {  mod("EnemyIgniteChance", "BASE", tonumber(num),{ type = "SkillName", skillName ="火球" })  } end, 
	["【([^\\x00-\\xff]*)】有 %+(%d+)%% 的几率点燃"]=  function(_,skill_name,num)  return {  mod("EnemyIgniteChance", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】有 %+(%d+)%% 的几率感电"]=  function(_,skill_name,num)  return {  mod("EnemyShockChance", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】和其召唤生物的伤害提高 (%d+)%%"] = function(_,skill_name,num)  return { mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", tonumber(num)) },{ type = "SkillName", skillName =skill_name })  } end,
	["【([^\\x00-\\xff]*)】和该技能的召唤生物攻击速度提高 (%d+)%%"] = function(_,skill_name,num)  return { mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", tonumber(num),nil,ModFlag.Attack) },{ type = "SkillName", skillName =skill_name })  } end,
	["【火焰新星】的地雷伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", tonumber(num),{ type = "SkillName", skillName ="火焰新星地雷" })  } end, 
	["【([^\\x00-\\xff]*)】会使攻击速度额外提高 (%d+)%%"]=  function(_,skill_name,num) return { mod("ExtraSkillMod", "LIST", { mod = mod("Speed", "INC", tonumber(num),nil,ModFlag.Attack,{ type = "GlobalEffect", effectType = "Buff" }) }, { type = "SkillName", skillName =skill_name } ) } end,
	["【([^\\x00-\\xff]*)】的护体持续时间延长 (%d+)%%"]= function(_,skill_name,num) return {  mod("FortifyDuration", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】提供的攻击格挡率提高 %+(%d+)%%"]= function(_,skill_name,num) return { mod("ExtraSkillMod", "LIST", { mod = mod("BlockChance", "BASE", tonumber(num),{ type = "GlobalEffect", effectType = "Buff" }) }, { type = "SkillName", skillName =skill_name } ) } end,
	["【飞刃风暴】的每片刀刃 %+(%d+)%% 攻击和法术暴击伤害加成"] = function(num) return { mod("CritMultiplier", "BASE", tonumber(num), { type = "Multiplier", var = "BladeVortexBlade" }, { type = "SkillName", skillName = "飞刃风暴" }) } end, 
	["提高 (%d+)%% 幻化武器时间"]= function(num) return {  mod("Duration", "INC", tonumber(num),{ type = "SkillName", skillName ="幻化武器" })  } end, 
	["【([^\\x00-\\xff]*)】造成冰冻，感电，点燃的几率提高 %+(%d+)%%"]= function(_,skill_name,num) return { 
	 mod("EnemyFreezeChance", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })  ,
	  mod("EnemyShockChance", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })  ,
	   mod("EnemyIgniteChance", "BASE", tonumber(num),{ type = "SkillName", skillName =skill_name })   } end, 
	["【([^\\x00-\\xff]*)】额外连锁弹射 (%d+) 次"]=  function(_,skill_name,num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ChainCountMax", "BASE", tonumber(num)) }, { type = "SkillName", skillName =skill_name } ) } end,
	["【([^\\x00-\\xff]*)】会额外连锁 (%d+) 次"]=  function(_,skill_name,num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ChainCountMax", "BASE", tonumber(num)) }, { type = "SkillName", skillName =skill_name } ) } end,
	["【灵魂奉献】给予等同 %+(%d+)%% 物理伤害的额外混沌伤害"]=  function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("PhysicalDamageGainAsChaos", "BASE", tonumber(num)) }, { type = "SkillName", skillName ="灵魂奉献" } ) } end,
	["闪电陷阱的伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", tonumber(num),{ type = "SkillName", skillName ="闪电陷阱" })  } end, 
	["【([^\\x00-\\xff]*)】有 (%d+)%% 几率对流血敌人造成双倍伤害"]= function(_,skill_name,num) return {  mod("DoubleDamageChance", "BASE", tonumber(num),{ type = "ActorCondition", actor = "enemy", var = "Bleeding" },{ type = "SkillName", skillName =skill_name })  } end, 
	["踩中【捕熊陷阱】的敌人受到陷阱或地雷的击中伤害提高 (%d+)%%"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("TrapMineDamageTaken", "INC", tonumber(num), { type = "GlobalEffect", effectType = "Debuff" }) }, { type = "SkillName", skillName = "捕熊陷阱" }) } end,
	["【([^\\x00-\\xff]*)】对燃烧中敌人的伤害提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("Damage", "INC", tonumber(num),{ type = "ActorCondition", actor = "enemy", var = "Burning" },{ type = "SkillName", skillName =skill_name })  } end, 
	["【([^\\x00-\\xff]*)】的投掷伤害提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("Damage", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name})  } end, 
	["【([^\\x00-\\xff]*)】的投掷物速度提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("ProjectileSpeed", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name})  } end, 
	["【([^\\x00-\\xff]*)】技能会使减益效果的持续时间延长 (%d+)%%"]= function(_,skill_name,num) return {  mod("SecondaryDuration", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name:gsub("霜害","寒霜爆")})  } end,   
	["【([^\\x00-\\xff]*)】提供的召唤生物攻击速度提高 (%d+)%%"]= function(_,skill_name,num) return { mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", tonumber(num),nil,ModFlag.Attack,{ type = "GlobalEffect", effectType = "Buff" }) },{ type = "SkillName", skillName =skill_name })  } end,
	["先祖战士长图腾生效时，你的近战伤害提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("Damage", "INC", tonumber(num),nil, ModFlag.Melee,{ type = "GlobalEffect", effectType = "Buff" }) }, { type = "SkillName", skillName ="先祖战士长" } ) } end,
	["当先祖卫士图腾存在时，攻击速度提高 (%d+)%%"]= function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("Speed", "INC", tonumber(num),nil, ModFlag.Attack,{ type = "GlobalEffect", effectType = "Buff" }) }, { type = "SkillName", skillName ="先祖卫士" } ) } end,
	["【灵体】的攻击和施法速度提高 (%d+)%%"]= function(num) return { mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", tonumber(num)) },{ type = "SkillName", skillName ="召唤灵体" })  } end,
	["%+(%d+)%% 唤醒灵体的火焰、冰霜、闪电抗性"]= function(num) return { mod("MinionModifier", "LIST", { mod = mod("ElementalResist", "BASE", tonumber(num)) },{ type = "SkillName", skillName ="召唤灵体" })  } end,
	["召唤愤怒狂灵的持续时间延长 (%d+)%%"]= function(num) return {  mod("Duration", "INC", tonumber(num),{ type = "SkillName", skillName ="召唤愤怒狂灵" })  } end, 
	["劈砍攻击速度提高 (%d+)%%"]= function(num) return {  mod("Speed", "INC", tonumber(num),nil,ModFlag.Attack,{ type = "SkillName", skillName ="劈砍" })  } end, 
	["每个狂怒球可使【([^\\x00-\\xff]*)】的伤害提高 (%d+)%%"]= function(_,skill_name,num) return {  mod("Damage", "INC", tonumber(num),{ type = "Multiplier", var = "FrenzyCharge" },{ type = "SkillName", skillName =skill_name })  } end, 
	["每个狂怒球可使狂怒伤害提高 (%d+)%%"]= function(num) return {  mod("Damage", "INC", tonumber(num),{ type = "Multiplier", var = "FrenzyCharge" },{ type = "SkillName", skillName ="狂怒" })  } end, 
	["【([^\\x00-\\xff]*)】可使移动速度额外提高 (%d+)%%"]= function(_,skill_name,num) return { mod("ExtraSkillMod", "LIST", { mod = mod("MovementSpeed", "INC", tonumber(num),{ type = "GlobalEffect", effectType = "Buff" }) }, { type = "SkillName", skillName =skill_name } ) } end,
	["【([^\\x00-\\xff]*)】的施放速度提高 (%d+)%%"]= function(_,skill_name,num)  return {  mod("Speed", "INC", tonumber(num),nil,ModFlag.Cast,{ type = "SkillName", skillName =skill_name })  } end, 
	["诱饵图腾的生命提高 (%d+)%%"]= function(num) return {  mod("TotemLife", "INC", tonumber(num),{ type = "SkillName", skillName ="诱饵图腾" })  } end, 
	["【([^\\x00-\\xff]*)】造成的燃烧地面持续时间延长 (%d+)%%"]= function(_,skill_name,num)  return {  mod("Duration", "INC", tonumber(num),{ type = "SkillName", skillName =skill_name })  } end, 
	["【灼热连接】放置速度提高 (%d+)%%"]= function(num)  return {  mod("TotemPlacementSpeed", "INC", tonumber(num),{ type = "SkillName", skillName ="灼热连接" })  } end, 
	["【冰矛】第二阶段的暴击率提高 (%d+)%%"]= function(num)  return {  mod("CritChance", "INC", tonumber(num),{ type = "SkillName", skillName ="冰矛" },{ type = "SkillPart", skillPart = 2 })  } end, 
	["受到【雷霆之捷】影响时，伤害穿透 (%d+)%% 闪电抗性"]= function(num) return {  mod("LightningPenetration", "BASE", num,{ type = "Condition", var = "AffectedBy闪电之捷" })  } end, 
	["拥有【猫之隐匿】时获得【玫红之舞】"] = { mod("Keystone", "LIST", "玫红之舞", { type = "Condition", var = "AffectedByCat'sStealth" }) }, --备注：you have crimson dance while you have cat's stealth
		["近期内你若打出过暴击，则获得【玫红之舞】"] = { mod("Keystone", "LIST", "玫红之舞", { type = "Condition", var = "CritRecently" }) }, --备注：you have crimson dance if 
	["近期内你若打出过暴击，则获得【瓦尔冥约】"] = { mod("Keystone", "LIST", "瓦尔冥约", { type = "Condition", var = "CritRecently" }) }, --备注：you have vaal pact if you've dealt a critical strike recently
	["近期内你若没有被击中，则获得【狂热誓言】"] = { mod("Keystone", "LIST", "狂热誓言", { type = "Condition", var = "BeenHitRecently", neg = true }) }, --备注：you have zealot's oath if you haven't been hit recently
	["魔像总伤害额外降低 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "MORE", -num) },{ type = "SkillType", skillType = SkillType.Golem })  } end,
	["魔像总生命额外降低 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Life", "MORE", -num) },{ type = "SkillType", skillType = SkillType.Golem })  } end,
	["魔像的总伤害额外降低 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "MORE", -num) },{ type = "SkillType", skillType = SkillType.Golem })  } end,
	["魔像的总生命额外提高 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Life", "MORE", -num) },{ type = "SkillType", skillType = SkillType.Golem })  } end,
	["最多可同时召唤额外 (%d) 个魔像"] = function(num) return { mod("ActiveGolemLimit", "BASE", num) } end,
	["你和周围友军的伤害提高 (%d+)%%"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("Damage", "INC", num) }) } end, 
	["你和周围友军移动速度提高 (%d+)%%"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("MovementSpeed", "INC", num) }) } end, 
	["你和周围友军的移动速度提高 (%d+)%%"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("MovementSpeed", "INC", num) }) } end, 
	["近期内你若没被击中后受到伤害，则获得 ([%d%.]+)%% 物理伤害减免"]= function(num) return {  mod("PhysicalDamageReduction", "BASE", num,{ type = "Condition", var = "BeenHitRecently", neg = true })  } end,  
	["近期内你若被击中伤害，则有 ([%d%.]+)%% 几率格挡法术"]= function(num) return {  mod("SpellBlockChance", "BASE", num,{ type = "Condition", var = "BeenHitRecently"})  } end,  
	["受到【纪律】影响时，每击中一个敌人便会获得 %+(%d+) 能量护盾"]= function(num) return {  mod("EnergyShieldOnHit", "BASE", num,{ type = "Condition", var = "AffectedBy纪律" })  } end, 
	["受到【活力】影响时，每击中一个敌人便会获得 %+(%d+) 生命"]= function(num) return {  mod("LifeOnHit", "BASE", num,{ type = "Condition", var = "AffectedBy活力" })  } end, 
	["技能效果持续时间延长 ([%+%-]?%d+)%%"]= function(num) return {  mod("Duration", "INC", num)  } end, 
	["技能效果持续时间缩短 ([%+%-]?%d+)%%"]= function(num) return {  mod("Duration", "INC", -num)  } end, 
	["每个红色插槽会使你和周围友军附加 (%d+) %- (%d+) 基础火焰伤害"]= function(_,num1,num2) return { 	
		mod("FireMin", "BASE", tonumber(num1), { type = "Multiplier", var = "RedSocketIn{SlotName}" }),
		mod("FireMax", "BASE", tonumber(num2), { type = "Multiplier", var = "RedSocketIn{SlotName}" }) 
	}end,
	["每个绿色插槽会使你和周围友军附加 (%d+) %- (%d+) 基础冰霜伤害"]= function(_,num1,num2) return { 	
		mod("ColdMin", "BASE", tonumber(num1), { type = "Multiplier", var = "GreenSocketIn{SlotName}" }),
		mod("ColdMax", "BASE", tonumber(num2), { type = "Multiplier", var = "GreenSocketIn{SlotName}" }) 
	}end,
	["每个蓝色插槽会使你和周围友军附加 (%d+) %- (%d+) 基础闪电伤害"]= function(_,num1,num2) return { 	
		mod("LightningMin", "BASE", tonumber(num1), { type = "Multiplier", var = "BlueSocketIn{SlotName}" }),
		mod("LightningMax", "BASE", tonumber(num2), { type = "Multiplier", var = "BlueSocketIn{SlotName}" }) 
	}end,
	["每个白色插槽会使你和周围友军附加 (%d+) %- (%d+) 基础混沌伤害"]= function(_,num1,num2) return { 	
		mod("ChaosMin", "BASE", tonumber(num1), { type = "Multiplier", var = "WhiteSocketIn{SlotName}" }),
		mod("ChaosMax", "BASE", tonumber(num2), { type = "Multiplier", var = "WhiteSocketIn{SlotName}" }) 
	}end,
	["获得额外混沌伤害，其数值等同于非混沌伤害的 (%d+)%%"] = function(num) return {  mod("NonChaosDamageGainAsChaos", "BASE", num)  } end,
	["受到【雷霆】影响时，闪电伤害提高 (%d+)%%"]= function(num) return {  mod("LightningDamage", "INC", num,{ type = "Condition", var = "AffectedBy雷霆" })  } end, 
	["受到【清晰】影响时，魔力回复速度提高 (%d+)%%"]= function(num) return {  mod("ManaRecoveryRate", "INC", num,{ type = "Condition", var = "AffectedBy清晰" })  } end, 
	["受到【纪律】影响时，能量护盾回复速度提高 (%d+)%%"]= function(num) return {  mod("EnergyShieldRecoveryRate", "INC", num,{ type = "Condition", var = "AffectedBy纪律" })  } end, 
	["受到【活力】影响时，药剂的生命回复提高 (%d+)%%"]= function(num) return {  mod("FlaskLifeRecovery", "INC", num,{ type = "Condition", var = "AffectedBy活力" })  } end, 
	["受到【元素净化】影响时，%+(%d+)%% 混沌抗性"]= function(num) return {  mod("ChaosResist", "INC", num,{ type = "Condition", var = "AffectedBy元素净化" })  } end, 
	["受到【迅捷】影响时，移动技能的冷却速度提高 (%d+)%%"]= function(num) return {  mod("CooldownRecovery", "INC", num,KeywordFlag.Movement ,{ type = "Condition", var = "AffectedBy迅捷" })  } end, 
	["魔卫的物理总伤害额外提高 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("PhysicalDamage", "MORE", tonumber(num))},{ type = "SkillName", skillName = "魔卫复苏" } )  } end, 
	["【复苏的魔卫】的重击攻击效果范围扩大 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("AreaOfEffect", "INC", num,{ type = "SkillId", skillId = "ZombieSlam" })})  } end, 
	["药剂效果套用于你的魔卫和灵体身上"] = { flag("FlasksApplyToMinion", { type = "SkillName", skillNameList = { "魔卫复苏", "召唤灵体" } }) }, --备注：flasks apply to your zombies and spectres
	["【魔卫】攻击速度提高 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", tonumber(num),nil,ModFlag.Attack )},{ type = "SkillName", skillName = "魔卫复苏" })  } end, 
	["%+(%d+)%% 魔卫的火焰、冰霜、闪电抗性"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("ElementalResist", "BASE", tonumber(num))},{ type = "SkillName", skillName = "魔卫复苏" } )  } end, 
	["【魔卫造成】的伤害提高 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", tonumber(num),nil,ModFlag.Attack )},{ type = "SkillName", skillName = "魔卫复苏" })  } end, 
	["药剂持续期间，(%d+)%% 承受的击中物理伤害转化为冰霜伤害"] = function(num) return {  mod("PhysicalDamageTakenAsCold", "BASE", num,{ type = "Condition", var = "UsingFlask" })  } end,
	["对投射物攻击的总闪避率额外提高 (%d+)%% "]= function(num) return {  mod("ProjectileEvadeChance", "MORE", num)  } end, 
		["对近战攻击的总闪避率额外降低 (%d+)%% "]= function(num) return {  mod("MeleeEvadeChance", "MORE", -num)  } end, 
	["30%% 几率躲避攻击击中、总护甲降低 50%%、总能量护盾降低 30%%、攻击与法术伤害总格挡几率降低 30%%"] = { 
			mod("AttackDodgeChance", "BASE", 30), 
			mod("Armour", "MORE", -50), 
			mod("EnergyShield", "MORE", -30), 
			mod("BlockChance", "MORE", -30),
			mod("SpellBlockChance", "MORE", -30) 
		},
	-- 3.4
		["你技能的光环可使你和周围友方的攻击和施法速度提高 ([%d%.]+)%%"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("Speed", "INC", num) }) } end, 
		["你技能的光环可使你和周围友方的物理伤害减免提高 %+([%d%.]+)%%"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("PhysicalDamageReduction", "BASE", num) }) } end, 
		["受到你嘲讽的敌人所承受的伤害提高 (%d+)%% "] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num, { type = "Condition", var = "Taunted" }) }) } end, 
		["攻击技能可使混沌总伤害额外提高 (%d+)%%"] = function(num) return {  mod("ChaosDamage", "MORE", num,nil,nil,KeywordFlag.Attack) } end, 
	["在药剂生效期间，你造成的中毒效果有 40%% 几率伤害提高 (%d+)%%"] = function(num) return {  mod("Damage", "INC", num,nil,nil,KeywordFlag.Poison ,{ type = "Condition", var = "UsingFlask" }) } end, 
	["你技能的光环每秒回复你和周围友军 ([%d%.]+)%% 最大生命"]= function(num) return {  mod("ExtraAuraEffect", "LIST", { mod =  mod("LifeRegenPercent", "BASE", num) }) } end, 
	["周围至少有 1 个友军时，攻击总伤害额外提高 ([%d%.]+)%%"] = function(num) return {  mod("Damage", "MORE", num,{ type = "MultiplierThreshold", var = "NearbyAlly", threshold = 1 } ) } end, 
	["周围至少有 1 个友军时，总伤害额外提高 ([%d%.]+)%%"] = function(num) return {  mod("Damage", "MORE", num,{ type = "MultiplierThreshold", var = "NearbyAlly", threshold = 1 } ) } end, 
	["每 %d 秒攻击伤害格挡几率 %+(%d+)%%，持续 %d 秒"] = function(_,num,_2) return { mod("BlockChance", "BASE", num, { type = "Condition", var = "BastionOfHopeActive" }) } end,
	["近期内你的技能若打出过暴击，则每有 1 个暴击球，就会每秒受到 (%d+) 闪电伤害"]= function(num) return {  mod("LightningDegen", "BASE", num,{ type = "Multiplier", var = "PowerCharge" },{ type = "Condition", var = "CritRecently" }) } end, 
	["低血时，法术伤害格挡几率额外 %+(%d+)%%"]= function(num) return {  mod("SpellBlockChance", "BASE", num, { type = "Condition", var = "LowLife" }   ) } end, 
	["【冰川之刺】的 (%d+)%% 物理伤害转换为冰霜伤害"]= function(num)  return {  mod("PhysicalDamageConvertToCold", "BASE", tonumber(num),{ type = "SkillName", skillName ="冰川之刺" })  } end, 
	["获得 (%d+) 级的主动技能【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, 
	["【(.+)】不保留魔力"] = function( _,skill) return { mod("SkillData", "LIST", { key = "manaCostForced", value = 0 }, { type = "SkillName", skillName = skill }) } end,
	["装备的护盾格挡几率若不低于 (%d+)%%，则法术伤害的 ([%d%.]+)%% 转化为生命偷取"] = function(num, _,num2) return {  mod("DamageLifeLeech", "BASE", tonumber(num2),nil, ModFlag.Spell,{ type = "StatThreshold", stat = "ShieldBlockChance", threshold = tonumber(num) }) } end,
	["插入苍白之凝珠宝时，召唤生物的命中值 %+(%d+)"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Accuracy", "BASE", num) }, { type = "Condition", var = "Have苍白之凝珠宝In{SlotName}" }) } end,
	["周围敌人的所有抗性提高 (%-%d+)%%"] = function(num) return { 
	mod("EnemyModifier", "LIST", { mod = mod("ChaosResist", "BASE", num) }),
	mod("EnemyModifier", "LIST", { mod = mod("ElementalResist", "BASE", num) }),
	 } end, 
	["每个红色插槽可为你和周围友军附加 (%d+) %- (%d+) 基础火焰伤害"]= function(_,num1,num2) return { 	
			mod("FireMin", "BASE", tonumber(num1), { type = "Multiplier", var = "RedSocketIn{SlotName}" }),
			mod("FireMax", "BASE", tonumber(num2), { type = "Multiplier", var = "RedSocketIn{SlotName}" }) 
		}end,
	["每个绿色插槽可为你和周围友军附加 (%d+) %- (%d+) 基础冰霜伤害"]= function(_,num1,num2) return { 	
			mod("ColdMin", "BASE", tonumber(num1), { type = "Multiplier", var = "GreenSocketIn{SlotName}" }),
			mod("ColdMax", "BASE", tonumber(num2), { type = "Multiplier", var = "GreenSocketIn{SlotName}" }) 
		}end,
	["每个蓝色插槽可为你和周围友军附加 (%d+) %- (%d+) 基础闪电伤害"]= function(_,num1,num2) return { 	
			mod("LightningMin", "BASE", tonumber(num1), { type = "Multiplier", var = "BlueSocketIn{SlotName}" }),
			mod("LightningMax", "BASE", tonumber(num2), { type = "Multiplier", var = "BlueSocketIn{SlotName}" }) 
		}end,
	["每个白色插槽可为你和周围友军附加 (%d+) %- (%d+) 基础混沌伤害"]= function(_,num1,num2) return { 	
			mod("ChaosMin", "BASE", tonumber(num1), { type = "Multiplier", var = "WhiteSocketIn{SlotName}" }),
			mod("ChaosMax", "BASE", tonumber(num2), { type = "Multiplier", var = "WhiteSocketIn{SlotName}" }) 
		}end,
	["每有一个耐力球，攻击伤害格挡几率额外 ([%+%-]?%d+)%%"] = function(num) return {  mod("BlockChance", "BASE", num , { type = "Multiplier", var = "EnduranceCharge" }) } end, 
	["每有一个狂怒球，攻击伤害格挡几率额外 ([%+%-]?%d+)%%"]= function(num) return {  mod("BlockChance", "BASE", num , { type = "Multiplier", var = "FrenzyCharge" }) } end, 
	["每有一个暴击球，攻击伤害格挡几率额外 ([%+%-]?%d+)%%"]= function(num) return {  mod("BlockChance", "BASE", num, { type = "Multiplier", var = "PowerCharge" } ) } end, 
	["当暴击球达到上限时，你可以对敌人额外施加 1 个诅咒"]= function(num) return {mod("EnemyCurseLimit", "BASE", 1,{ type = "StatThreshold", stat = "PowerCharges", thresholdStat = "PowerChargesMax" }) } end, 
	["耐力球达到上限时你无法被晕眩"]= function() return {mod("AvoidStun", "BASE", 100,{ type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" }) } end, 
	["每有一个狂怒球则获得额外混沌伤害， 其数值等同于冰霜伤害的 (%d+)%%"]= function(num) return {  mod("ColdDamageGainAsChaos", "BASE", num, { type = "Multiplier", var = "FrenzyCharge" }) } end, 
	["每有一个耐力球则获得额外混沌伤害， 其数值等同于火焰伤害的 (%d+)%%"]= function(num) return {  mod("FireDamageGainAsChaos", "BASE", num, { type = "Multiplier", var = "EnduranceCharge" }) } end, 
	["每有一个暴击球则获得额外混沌伤害， 其数值等同于闪电伤害的 (%d+)%%"]= function(num) return {  mod("LightningDamageGainAsChaos", "BASE", num, { type = "Multiplier", var = "PowerCharge" }) } end, 
	["每个暴击球可使每秒生命回复提高 ([%d%.]+)%%"]= function(num) return {  mod("LifeRegen", "BASE", num, { type = "Multiplier", var = "PowerCharge" }) } end, 
	["你在拥有最大数量的狂怒球时，得到【霸体】状态"] = { mod("Keystone", "LIST", "霸体", nil,{ type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" }) },
	["你在拥有最大数量的暴击能量球时，得到【心胜于物】状态"] = { mod("Keystone", "LIST", "心灵升华", nil,{ type = "StatThreshold", stat = "PowerCharges", thresholdStat = "PowerChargesMax" }) },
	["你在拥有最大数量的耐力球时，获得【瓦尔冥约】状态"] = { mod("Keystone", "LIST", "瓦尔冥约", nil,{ type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" }) },
	["每有一个暴击球，可使你获得额外 (%d+)%% 物理伤害减免"]= function(num) return {  mod("PhysicalDamageReduction", "BASE", num, { type = "Multiplier", var = "PowerCharge" }) } end, 
	["每有一个狂怒球，可使你获得额外 (%d+)%% 物理伤害减免"]= function(num) return {  mod("PhysicalDamageReduction", "BASE", num, { type = "Multiplier", var = "FrenzyCharge" }) } end, 
	["每 (%d+) 点敏捷提高 (%d+)%% 召唤生物造成的伤害"] = function(_,num1,num2) return {  mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", tonumber(num2)) },{ type = "PerStat", stat = "Dex", div = tonumber(num1) })   } end, 
	--【中文化程序额外添加结束】
	-- Keystones
	["你的攻击和法术无法被闪避"] = { flag("CannotBeEvaded") }, --备注：your hits can't be evaded
	["无法造成暴击"] = { flag("NeverCrit") }, --备注：never deal critical strikes
	["击中没有暴击伤害加成"] = { flag("NoCritMultiplier") }, --备注：no critical strike multiplier
	["异常状态没有暴击伤害加成"] = { flag("NoCritDegenMultiplier") }, --备注：no damage multiplier for ailments from critical strikes
	["力量属性对近战攻击和投射物的物理伤害均会加成"] = { flag("IronGrip") }, --备注：the increase to physical damage from strength applies to projectile attacks as well as melee attacks
	["将所有闪避值转换为护甲，敏捷不再提供闪避值加成"] = { flag("IronReflexes") }, --备注：converts all evasion rating to armour%. dexterity provides no bonus to evasion rating
	["30%% chance to dodge attack hits%. 50%% less armour, 30%% less energy shield, 30%% less chance to block spell and attack damage"] = { 
		mod("AttackDodgeChance", "BASE", 30), 
		mod("Armour", "MORE", -50), 
		mod("EnergyShield", "MORE", -30), 
		mod("BlockChance", "MORE", -30),
		mod("SpellBlockChance", "MORE", -30) 
	},
	["最大生命上限变成 1，免疫混沌伤害"] = { flag("ChaosInoculation") }, --备注：maximum life becomes 1, immune to chaos damage
	["不再获得生命回复，将其回复效果套用于能量护盾"] = { flag("ZealotsOath") }, --备注：life regeneration is applied to energy shield instead
	["每秒生命偷取效果翻倍。"] = { mod("LifeLeechRate", "MORE", 100) }, --备注：life leeched per second is doubled%.
	["生命偷取速度上限翻倍。"] = { mod("MaxLifeLeechRate", "MORE", 100) }, --备注：maximum life leech rate is doubled%.
	["不再获得生命回复效果。"] = { flag("NoLifeRegen") }, --备注：life regeneration has no effect%.
	["只能造成火焰伤害"] = { flag("DealNoPhysical"), flag("DealNoLightning"), flag("DealNoCold"), flag("DealNoChaos") }, --备注：deal no non%-fire damage
	["(%d+)%% 的物理、冰霜和闪电伤害转换为火焰伤害"] = function(num) return { --备注：(%d+)%% of physical, cold and lightning damage converted to fire damage
		mod("PhysicalDamageConvertToFire", "BASE", num), 
		mod("LightningDamageConvertToFire", "BASE", num),
		mod("ColdDamageConvertToFire", "BASE", num) 
	} end,
	["移除魔力，施放所有技能改为消耗生命"] = { mod("Mana", "MORE", -100), flag("BloodMagic") }, --备注：removes all mana%. spend life instead of mana for skills
	["被火焰、冰霜和闪电伤害击中的敌人暂时提高 (%d+)%% 的该属性抗性，其他属性抗性降低 (%d+)%%"] = function(plus, _, minus) --备注：enemies you hit with elemental damage temporarily get (%+%d+)%% resistance to those elements and (%-%d+)%% resistance to other elements
minus = -tonumber(minus)
		return {
			flag("ElementalEquilibrium"),
			mod("EnemyModifier", "LIST", { mod = mod("FireResist", "BASE", plus, { type = "Condition", var = "HitByFireDamage" }) }),
			mod("EnemyModifier", "LIST", { mod = mod("FireResist", "BASE", minus, { type = "Condition", var = "HitByFireDamage", neg = true }, { type = "Condition", varList={"HitByColdDamage","HitByLightningDamage"} }) }),
			mod("EnemyModifier", "LIST", { mod = mod("ColdResist", "BASE", plus, { type = "Condition", var = "HitByColdDamage" }) }),
			mod("EnemyModifier", "LIST", { mod = mod("ColdResist", "BASE", minus, { type = "Condition", var = "HitByColdDamage", neg = true }, { type = "Condition", varList={"HitByFireDamage","HitByLightningDamage"} }) }),
			mod("EnemyModifier", "LIST", { mod = mod("LightningResist", "BASE", plus, { type = "Condition", var = "HitByLightningDamage" }) }),
			mod("EnemyModifier", "LIST", { mod = mod("LightningResist", "BASE", minus, { type = "Condition", var = "HitByLightningDamage", neg = true }, { type = "Condition", varList={"HitByFireDamage","HitByColdDamage"} }) }),
		}
	end,
	["投射物攻击近距离目标时造成的总伤害最多额外提高 50%%，但攻击远距离目标时总伤害则会额外降低"] = { flag("PointBlank") }, --备注：projectile attack hits deal up to 50%% more damage to targets at the start of their movement, dealing less damage to targets as the projectile travels farther
	["不再获得生命偷取，将其偷取效果套用于能量护盾"] = { flag("GhostReaver") }, --备注：life leech is applied to energy shield instead
	["召唤生物在低血时会爆炸，对周围敌人造成自身最大生命 33%% 的火焰伤害"] = { flag("MinionInstability") }, --备注：minions explode when reduced to low life, dealing 33%% of their maximum life as fire damage to surrounding enemies
	["盾牌上的所有属性会套用于你的召唤生物，而非角色本身"] = { }, -- The node itself is detected by the code that handles it --备注：all bonuses from an equipped shield apply to your minions instead of you
	["技能优先消耗能量护盾，而非魔力"] = { }, --备注：spend energy shield before mana for skill costs
	["能量护盾从生命护盾变成魔力护盾"] = { flag("EnergyShieldProtectsMana") }, --备注：energy shield protects mana instead of life
	["暴击伤害加成也会套用于异常状态的伤害加成，数值为 (%d+)%%"] = function(num) return { mod("CritMultiplierAppliesToDegen", "BASE", num) } end, --备注：modifiers to critical strike multiplier also apply to damage multiplier for ailments from critical strikes at (%d+)%% of their value
	["当敌人移动时，你的流血无法造成额外伤害"] = { flag("Condition:NoExtraBleedDamageToMovingEnemy") }, --备注：your bleeding does not deal extra damage while the enemy is moving
	-- Ascendant
	["grants (%d+) passive skill points?"] = function(num) return { mod("ExtraPoints", "BASE", num) } end,
	["可以从([^\\x00-\\xff]*)的起点配置天赋"] = { }, --备注：can allocate passives from the %a+'s starting point
	-- Assassin
	["你暴击造成的中毒总伤害额外提高 (%d+)%%"] = function(num) return { mod("Damage", "MORE", num, nil, 0, KeywordFlag.Poison, { type = "Condition", var = "CriticalStrike" }) } end, --备注：poison you inflict with critical strikes deals (%d+)%% more damage
	-- Berserker
	["击败敌人时获得 %d+ 怒火"] = { --备注：gain %d+ rage when you kill an enemy
		flag("Condition:CanGainRage"),
		mod("Dummy", "DUMMY", 1, { type = "Condition", var = "CanGainRage" }) -- Make the Configuration option appear
	},
	["使用战吼时获得 %d+ 怒火"] = { --备注：gain %d+ rage when you use a warcry
		flag("Condition:CanGainRage"),
		mod("Dummy", "DUMMY", 1, { type = "Condition", var = "CanGainRage" }) -- Make the Configuration option appear
	},
	["怒火带来的效果翻倍"] = { mod("Multiplier:RageEffect", "BASE", 1) }, --备注：effects granted for having rage are doubled
	["当你的怒火至少有 (%d+) 点时，免疫晕眩"] = function(num) return { mod("AvoidStun", "BASE", 100, { type = "MultiplierThreshold", var = "Rage", threshold = 25 }) } end, --备注：cannot be stunned while you have at least (%d+) rage
	-- Champion
	["获得护体效果"] = { flag("Condition:Fortify") }, --备注：you have fortify
	["拥有护体时免疫晕眩"] = { mod("AvoidStun", "BASE", 100, { type = "Condition", var = "Fortify" }) }, --备注：cannot be stunned while you have fortify
	["受到你嘲讽的敌人所承受的伤害提高 (%d+)%%"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num, { type = "Condition", var = "Taunted" }) }) } end, --备注：enemies you taunt take (%d+)%% increased damage
	["被你嘲讽的敌人无法躲避攻击"] = { mod("EnemyModifier", "LIST", { mod = flag("CannotEvade", { type = "Condition", var = "Taunted" }) }) }, --备注：enemies taunted by you cannot evade attacks
	["若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 %d+ 秒"] = { flag("Condition:CanGainAdrenaline") }, --备注：gain adrenaline for %d+ seconds when you reach low life if you do not have adrenaline
	-- Chieftan
	["在你图腾周围，敌人承受的物理和火焰伤害提高 (%d+)%%"] = function(num) return { --备注：enemies near your totems take (%d+)%% increased physical and fire damage
		mod("EnemyModifier", "LIST", { mod = mod("PhysicalDamageTaken", "INC", num) }), 
		mod("EnemyModifier", "LIST", { mod = mod("FireDamageTaken", "INC", num) }) 
	} end,
	-- Deadeye
	["投射物可以穿透所有周围目标"] = { flag("PierceAllTargets") }, --备注：projectiles pierce all nearby targets
	["gain %+(%d+) life when you hit a bleeding enemy"] = function(num) return { mod("LifeOnHit", "BASE", num, { type = "ActorCondition", actor = "enemy", var = "Bleeding" }) } end,
	["命中值翻倍"] = { mod("Accuracy", "MORE", 100) }, --备注：accuracy rating is doubled
	["【闪现射击】和【魅影射击】冷却回复速度提高 (%d+)%%"] = function(num) return { --备注：(%d+)%% increased blink arrow and mirror arrow cooldown recovery speed
		mod("CooldownRecovery", "INC", num, { type = "SkillName", skillName = "闪现射击" }),
		mod("CooldownRecovery", "INC", num, { type = "SkillName", skillName = "魅影射击" }),
	} end,
	["近期内你若有使用技能，你和周围友军获得【提速尾流】"] = { mod("ExtraAura", "LIST", { mod = flag("Condition:Tailwind") }, { type = "Condition", var = "UsedSkillRecently" }) }, --备注：if you've used a skill recently, you and nearby allies have tailwind
	["每保留有 1 根锁链，则投射物总伤害额外提高 (%d+)%%"] = function(num) return { mod("Damage", "MORE", num, nil, ModFlag.Projectile, { type = "PerStat", stat = "ChainRemaining" }) } end, --备注：projectiles deal (%d+)%% more damage for each remaining chain
	-- Elementalist
	["范围效果扩大 (%d+)%%，持续 5 秒"] = function(num) return { mod("AreaOfEffect", "INC", num, { type = "Condition", var = "PendulumOfDestructionAreaOfEffect" }) } end, --备注：gain (%d+)%% increased area of effect for %d+ seconds
	["元素伤害提高 (%d+)%%，持续 5 秒"] = function(num) return { mod("ElementalDamage", "INC", num, { type = "Condition", var = "PendulumOfDestructionElementalDamage" }) } end, --备注：gain (%d+)%% increased elemental damage for %d+ seconds
	["近期内，每个击中你的元素可使你的该元素伤害提高 (%d+)%%"] = function(num) return {  --备注：for each element you've been hit by damage of recently, (%d+)%% increased damage of that element
		mod("FireDamage", "INC", num, { type = "Condition", var = "HitByFireDamageRecently" }),
		mod("ColdDamage", "INC", num, { type = "Condition", var = "HitByColdDamageRecently" }),
		mod("LightningDamage", "INC", num, { type = "Condition", var = "HitByLightningDamageRecently" })
	} end,
	["近期内，每个击中你的元素可使你所承受的该元素伤害降低 (%d+)%%"] = function(num) return {  --备注：for each element you've been hit by damage of recently, (%d+)%% reduced damage taken of that element
		mod("FireDamageTaken", "INC", -num, { type = "Condition", var = "HitByFireDamageRecently" }), 
		mod("ColdDamageTaken", "INC", -num, { type = "Condition", var = "HitByColdDamageRecently" }), 
		mod("LightningDamageTaken", "INC", -num, { type = "Condition", var = "HitByLightningDamageRecently" })
	} end,
	["每隔 %d+ 秒："] = { }, --备注：every %d+ seconds:
	["获得持续 %d 秒的冰缓汇流"] = {  --备注：gain chilling conflux for %d seconds
		flag("PhysicalCanChill", { type = "Condition", var = "ChillingConflux" }),
		flag("LightningCanChill", { type = "Condition", var = "ChillingConflux" }),
		flag("FireCanChill", { type = "Condition", var = "ChillingConflux" }),
		flag("ChaosCanChill", { type = "Condition", var = "ChillingConflux" }),
	},
	["获得持续 %d 秒的感电汇流"] = { --备注：gain shocking conflux for %d seconds
		mod("EnemyShockChance", "BASE", 100, { type = "Condition", var = "ShockingConflux" }),
		flag("PhysicalCanShock", { type = "Condition", var = "ShockingConflux" }),
		flag("ColdCanShock", { type = "Condition", var = "ShockingConflux" }),
		flag("FireCanShock", { type = "Condition", var = "ShockingConflux" }),
		flag("ChaosCanShock", { type = "Condition", var = "ShockingConflux" }),
	},
	["获得持续 %d 秒的点燃汇流"] = { --备注：gain igniting conflux for %d seconds
		mod("EnemyIgniteChance", "BASE", 100, { type = "Condition", var = "IgnitingConflux" }),
		flag("PhysicalCanIgnite", { type = "Condition", var = "IgnitingConflux" }),
		flag("LightningCanIgnite", { type = "Condition", var = "IgnitingConflux" }),
		flag("ColdCanIgnite", { type = "Condition", var = "IgnitingConflux" }),
		flag("ChaosCanIgnite", { type = "Condition", var = "IgnitingConflux" }),
	},
	["获得 %d 秒的冰缓，感电，点燃汇流"] = { }, --备注：gain chilling, shocking and igniting conflux for %d seconds
	-- Gladiator
	["被你瘫痪的敌人受到的物理伤害提高 (%d+)%%"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("PhysicalDamageTaken", "INC", num, { type = "Condition", var = "Maimed" }) }) } end, --备注：enemies maimed by you take (%d+)%% increased physical damage
	["格挡法术伤害的几率等同于格挡攻击伤害的几率"] = { flag("SpellBlockChanceIsBlockChance") }, --备注：chance to block spell damage is equal to chance to block attack damage
	["格挡法术伤害的最大几率等同于格挡攻击伤害的最大几率"] = { flag("SpellBlockChanceMaxIsBlockChanceMax") }, --备注：maximum chance to block spell damage is equal to maximum chance to block attack damage
	-- Guardian
	["给予你和周围友军等同你 (%d+)%% 生命保留的额外护甲"] = function(num) return { mod("GrantReservedLifeAsAura", "LIST", { mod = mod("Armour", "BASE", num / 100) }) } end, --备注：grants armour equal to (%d+)%% of your reserved life to you and nearby allies
	["给予你和周围友军等同你 (%d+)%% 魔力保留的额外能量护盾"] = function(num) return { mod("GrantReservedManaAsAura", "LIST", { mod = mod("EnergyShield", "BASE", num / 100) }) } end, --备注：grants maximum energy shield equal to (%d+)%% of your reserved mana to you and nearby allies
	["战吼不消耗魔力"] = { mod("ManaCost", "MORE", -100, nil, 0, KeywordFlag.Warcry) }, --备注：warcries cost no mana
	["%+(%d+)%% chance to block attack damage for %d seconds? every %d seconds"] = function(num) return { mod("BlockChance", "BASE", num, { type = "Condition", var = "BastionOfHopeActive" }) } end,
	["近期内你若有进行攻击，你和周围友军有 %+(%d+)%% 几率格挡攻击伤害"] = function(num) return { mod("ExtraAura", "LIST", { mod = mod("BlockChance", "BASE", num) }, { type = "Condition", var = "AttackedRecently" }) } end, --备注：if you've attacked recently, you and nearby allies have %+(%d+)%% chance to block attack damage
	["近期内你若有施放法术，你和周围友军有 %+(%d+)%% 几率格挡法术伤害"] = function(num) return { mod("ExtraAura", "LIST", { mod = mod("SpellBlockChance", "BASE", num) }, { type = "Condition", var = "CastSpellRecently" }) } end, --备注：if you've cast a spell recently, you and nearby allies have %+(%d+)%% chance to block spell damage
	-- Hierophant
	-- Inquisitor
	["造成暴击时无视目标的火焰、冰霜、闪电抗性"] = { flag("IgnoreElementalResistances", { type = "Condition", var = "CriticalStrike" }) }, --备注：critical strikes ignore enemy monster elemental resistances
	["非暴击时穿透敌人 (%d+)%% 的火焰、冰霜、闪电抗性"] = function(num) return { mod("ElementalPenetration", "BASE", num, { type = "Condition", var = "CriticalStrike", neg = true }) } end, --备注：non%-critical strikes penetrate (%d+)%% of enemy elemental resistances
	["你制造的奉献地面会使你与友军的伤害提高 (%d+)%%"] = function(num) return { mod("Damage", "INC", num, { type = "Condition", var = "OnConsecratedGround" }) } end, --备注：consecrated ground you create grants (%d+)%% increased damage to you and allies
	["周围敌人受到的火焰、冰霜、闪电伤害提高 (%d+)%%"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("ElementalDamageTaken", "INC", num) }) } end, --备注：nearby enemies take (%d+)%% increased elemental damage
	-- Juggernaut
	["从身体护甲获得的护甲提高 1 倍"] = { flag("Unbreakable") }, --备注：armour received from body armour is doubled
	["你的移动速度加成不会让你减速至基础速度以下"] = { flag("MovementSpeedCannotBeBelowBase") }, --备注：movement speed cannot be modified to below base value
	["你无法被减速至基础速度以下"] = { flag("ActionSpeedCannotBeBelowBase") }, --备注：you cannot be slowed to below base speed
	["cannot be slowed to below base speed"] = { flag("ActionSpeedCannotBeBelowBase") },
	["获得等同于你力量数值的命中值"] = { mod("Accuracy", "BASE", 1, { type = "PerStat", stat = "Str" }) }, --备注：gain accuracy rating equal to your strength
	-- Necromancer
	["your offering skills also affect you"] = { mod("ExtraSkillMod", "LIST", { mod = mod("SkillData", "LIST", { key = "buffNotPlayer", value = false }) }, { type = "SkillName", skillNameList = { "Bone Offering", "Flesh Offering", "Spirit Offering" } }) },
	["your offerings have (%d+)%% reduced effect on you"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("BuffEffectOnPlayer", "INC", -num) }, { type = "SkillName", skillNameList = { "Bone Offering", "Flesh Offering", "Spirit Offering" } }) } end,
	["你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50%% 最大生命的混沌伤害"] = { flag("ZombieCausticCloudOnDeath") }, --备注：your raised zombies spread caustic ground on death, dealing 50%% of their maximum life as chaos damage per second
	["you and your minions have (%d+)%% physical damage reduction"] = function(num) return { mod("PhysicalDamageReduction", "BASE", num), mod("MinionModifier", "LIST", { mod = mod("PhysicalDamageReduction", "BASE", num) }) } end,
	["近期内你若或你的召唤生物击败过敌人，则召唤生物攻击和施法速度提高 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", num) }, { type = "Condition", varList = { "KilledRecently", "MinionsKilledRecently" } }) } end, --备注：minions have (%d+)%% increased attack and cast speed if you or your minions have killed recently
	["summoned skeletons' hits can't be evaded"] = { mod("MinionModifier", "LIST", { mod = flag("CannotBeEvaded") }, { type = "SkillName", skillName = "召唤魔侍" }) },
	-- Occultist
	["被你诅咒的敌人会遭受【恶语术】影响"] = { mod("AffectedByCurseMod", "LIST", { mod = mod("DamageTaken", "INC", 10) }) }, --备注：enemies you curse have malediction
	["周围敌人获得 (%-%d+)%% 混沌抗性"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("ChaosResist", "BASE", num) }) } end, --备注：nearby enemies have (%-%d+)%% to chaos resistance
	["当你击败敌人时，敌人身上每有 1 个诅咒，便给予你等同 (%d+)%% 非混沌伤害的额外混沌伤害，持续 4 秒"] = function(num) return {  --备注：when you kill an enemy, for each curse on that enemy, gain (%d+)%% of non%-chaos damage as extra chaos damage for 4 seconds
		mod("NonChaosDamageGainAsChaos", "BASE", num, { type = "Condition", var = "KilledRecently" }, { type = "Multiplier", var = "CurseOnEnemy" }), 
	} end,
	["拥有能量护盾时无法被晕眩"] = { mod("AvoidStun", "BASE", 100, { type = "Condition", var = "HaveEnergyShield" }) }, --备注：cannot be stunned while you have energy shield
	-- Pathfinder
	["always poison on hit while using a flask"] = { mod("PoisonChance", "BASE", 100, { type = "Condition", var = "UsingFlask" }) },
	["poisons you inflict during any flask effect have (%d+)%% chance to deal (%d+)%% more damage"] = function(num, _, more) return { mod("Damage", "MORE", tonumber(more) * num / 100, nil, 0, KeywordFlag.Poison, { type = "Condition", var = "UsingFlask" }) } end,
	-- Raider
	["你在拥有最大数量的狂怒球时，得到【迷踪】状态"] = { flag("Condition:Phasing", { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" }) }, --备注：you have phasing while at maximum frenzy charges
	["你在获得猛攻时，得到【迷踪】状态"] = { flag("Condition:Phasing", { type = "Condition", var = "Onslaught" }) }, --备注：you have phasing while you have onslaught
	["狂怒球达到上限时，你获得【猛攻】状态"] = { flag("Condition:Onslaught", { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" }) }, --备注：you have onslaught while on full frenzy charges
	["耐力球达到上限时获得【猛攻】状态"] = { flag("Condition:Onslaught", { type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" }) }, --备注：you have onslaught while at maximum endurance charges
	-- Sabotuer
	-- Slayer
	-- Trickster
	["你的攻击和法术有 (%d+)%% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 (%d+)%%"] = function(num, _, perc) return { mod("NonChaosDamageGainAsChaos", "BASE", num / 100 * tonumber(perc)) } end, --备注：your hits have (%d+)%% chance to gain (%d+)%% of non%-chaos damage as extra chaos damage
	["移动技能不消耗魔力"] = { mod("ManaCost", "MORE", -100, nil, 0, KeywordFlag.Movement) }, --备注：movement skills cost no mana
	-- Item local modifiers
	["没有插槽"] = { flag("NoSockets") }, --备注：has no sockets
	["有 (%d+) 个插槽"] = function(num) return { mod("SocketCount", "BASE", num) } end, --备注：has (%d+) sockets?
	["拥有 (%d+) 个深渊插槽"] = function(num) return { mod("AbyssalSocketCount", "BASE", num) } end, --备注：has (%d+) abyssal sockets?
	["无法造成物理伤害"] = { mod("WeaponData", "LIST", { key = "PhysicalMin" }), mod("WeaponData", "LIST", { key = "PhysicalMax" }), mod("WeaponData", "LIST", { key = "PhysicalDPS" }) }, --备注：no physical damage
	["此武器进行的所有攻击皆是暴击"] = { mod("WeaponData", "LIST", { key = "CritChance", value = 100 }) }, --备注：all attacks with this weapon are critical strikes
	["视作双持武器"] = { mod("WeaponData", "LIST", { key = "countsAsDualWielding", value = true}) }, --备注：counts as dual wielding
	["可视为所有类型的单手近战武器"] = { mod("WeaponData", "LIST", { key = "countsAsAll1H", value = true }) }, --备注：counts as all one handed melee weapon types
	["没有格档率"] = { mod("ArmourData", "LIST", { key = "BlockChance", value = 0 }) }, --备注：no block chance
	["攻击和法术无法被闪避"] = { flag("CannotBeEvaded", { type = "Condition", var = "{Hand}Attack" }) }, --备注：hits can't be evaded
	["击中时 (%d+)%% 几率造成流血"] = { mod("BleedChance", "BASE", 100, { type = "Condition", var = "{Hand}Attack" }) }, --备注：causes bleeding on hit
	["poisonous hit"] = { mod("PoisonChance", "BASE", 100, { type = "Condition", var = "{Hand}Attack" }) },
	["此武器的攻击对冰缓的敌人造成双倍伤害"] = { mod("Damage", "MORE", 100, nil, ModFlag.Hit, { type = "Condition", var = "{Hand}Attack" }, { type = "ActorCondition", actor = "enemy", var = "Chilled" }) }, --备注：attacks with this weapon deal double damage to chilled enemies
	["life leech from hits with this weapon applies instantly"] = { flag("InstantLifeLeech", { type = "Condition", var = "{Hand}Attack" }) },
	["使用此武器击中敌人立即获得生命偷取"] = { flag("InstantLifeLeech", { type = "Condition", var = "{Hand}Attack" }) }, --备注：gain life from leech instantly from hits with this weapon
	["立即回复"] = {  mod("FlaskInstantRecovery", "BASE", 100) }, --备注：instant recovery
	["(%d+)%% of recovery applied instantly"] = function(num) return { mod("FlaskInstantRecovery", "BASE", num) } end,
	["穿戴对人物属性无需求"] = { flag("NoAttributeRequirements") }, --备注：has no attribute requirements
	-- Socketed gem modifiers
	["此物品上装备的技能石等级 %+(%d+)"] = function(num) return { mod("GemProperty", "LIST", { keyword = "all", key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：%+(%d+) to level of socketed gems
	["%+(%d+) to level of socketed ([%a ]+) gems"] = function(num, _, type) return { mod("GemProperty", "LIST", { keyword = type, key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["%+(%d+)%% to quality of socketed ([%a ]+) gems"] = function(num, _, type) return { mod("GemProperty", "LIST", { keyword = type, key = "quality", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["%+(%d+) to level of active socketed skill gems"] = function(num) return { mod("GemProperty", "LIST", { keyword = "active_skill", key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["%+(%d+) to level of socketed active skill gems"] = function(num) return { mod("GemProperty", "LIST", { keyword = "active_skill", key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["人物等级每到达 25 级，该插槽内的【主动技能石】等级 +1"] = function(num, _, div) return { mod("GemProperty", "LIST", { keyword = "active_skill", key = "level", value = num }, { type = "SocketedIn", slotName = "{SlotName}" }, { type = "Multiplier", var = "Level", div = tonumber(div) }) } end, --备注：%+(%d+) to level of socketed active skill gems per (%d+) player levels
	["socketed gems fire an additional projectile"] = { mod("ExtraSkillMod", "LIST", { mod = mod("ProjectileCount", "BASE", 1) }, { type = "SocketedIn", slotName = "{SlotName}" }) },
	["此物品上的技能石可以发射 (%d+) 个额外投射物"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ProjectileCount", "BASE", num) }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed gems fire (%d+) additional projectiles
	["此物品上的技能石无魔力保留"] = { mod("ManaReserved", "MORE", -100, { type = "SocketedIn", slotName = "{SlotName}" }) }, --备注：socketed gems reserve no mana
	["socketed skill gems get a (%d+)%% mana multiplier"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ManaCost", "MORE", num - 100) }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["此物品上的技能石受到 血魔法 辅助"] = { flag("SkillBloodMagic", { type = "SocketedIn", slotName = "{SlotName}" }) }, --备注：socketed gems have blood magic
	["socketed gems gain (%d+)%% of physical damage as extra lightning damage"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("PhysicalDamageGainAsLightning", "BASE", num) }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["此物品上的红色技能石额外获得 (%d+)%% 的物理伤害，并转化为火焰伤害"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("PhysicalDamageGainAsFire", "BASE", num) }, { type = "SocketedIn", slotName = "{SlotName}", keyword = "strength" }) } end, --备注：socketed red gems get (%d+)%% physical damage as extra fire damage
	-- Extra skill/support
	["grants (%D+)"] = function(_, skill) return extraSkill(skill, 1) end,
	["获得 (%d+) 级的(.+)"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：grants level (%d+) (.+)
	["装备时触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) when equipped
	["[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) on %a+"] = function(num, _, skill) return extraSkill(skill, num) end,
	["use level (%d+) (.+) on %a+"] = function(num, _, skill) return extraSkill(skill, num) end,
	["当你攻击时触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) when you attack
	["暴击时触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) when you deal a critical strike
	["[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) when hit"] = function(num, _, skill) return extraSkill(skill, num) end,
	["击败敌人时召唤 (%d+) 级的(.+)"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) when you kill an enemy
	["当你使用技能时触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：[ct][ar][si][tg]g?e?r?s? level (%d+) (.+) when you use a skill
	["在你有精神球时使用技能，触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：trigger level (%d+) (.+) when you use a skill while you have a spirit charge
	["被诅咒时你击中一个敌人，触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：trigger level (%d+) (.+) when you hit an enemy while cursed
	["你击败被冻结的敌人时触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：trigger level (%d+) (.+) when you kill a frozen enemy
	["%d+%% chance to attack with level (%d+) (.+) on melee hit"] = function(num, _, skill) return extraSkill(skill, num) end,
	["%d+%% chance to trigger level (%d+) (.+) on melee hit"] = function(num, _, skill) return extraSkill(skill, num) end,
	["%d+%% chance to trigger level (%d+) (.+) on kill"] = function(num, _, skill) return extraSkill(skill, num) end,
	["%d+%% chance to trigger level (%d+) (.+) when you use a socketed skill"] = function(num, _, skill) return extraSkill(skill, num) end,
	["你获得【鸟之力量】或【鸟之斗魄】时有 %d+%% 几率触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：%d+%% chance to trigger level (%d+) (.+) when you gain avian's might or avian's flight
	["%d+%% chance to [ct][ar][si][tg]g?e?r? level (%d+) (.+) on %a+"] = function(num, _, skill) return extraSkill(skill, num) end,
	["attack with level (%d+) (.+) when you kill a bleeding enemy"] = function(num, _, skill) return extraSkill(skill, num) end,
	["击败流血敌人时触发 (%d+) 级的【(.+)】"] = function(num, _, skill) return extraSkill(skill, num) end, --备注：triggers? level (%d+) (.+) when you kill a bleeding enemy
	["击中敌人时，用【(.+)】诅咒敌人"] = function(_, skill) return extraSkill(skill, 1, true) end, --备注：curse enemies with (%D+) on %a+
	["击中时用 (%d+) 级的【(%D+)】诅咒敌人，对诅咒免疫的敌人也有效"] = function(num, _, skill) return extraSkill(skill, num, true) end, --备注：curse enemies with level (%d+) (%D+) on %a+, which can apply to hexproof enemies
	["击中敌人时，用 (%d+) 级的【(.+)】诅咒敌人"] = function(num, _, skill) return extraSkill(skill, num, true) end, --备注：curse enemies with level (%d+) (.+) on %a+
	["[ct][ar][si][tg]g?e?r?s? (.+) on %a+"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["[at][tr][ti][ag][cg][ke]r? w?i?t?h? ?(.+) on %a+"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["[ct][ar][si][tg]g?e?r?s? (.+) when hit"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["[at][tr][ti][ag][cg][ke]r? w?i?t?h? ?(.+) when hit"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["[ct][ar][si][tg]g?e?r?s? (.+) when your skills or minions kill"] = function(_, skill) return extraSkill(skill, 1, true) end,
	["[at][tr][ti][ag][cg][ke]r? w?i?t?h? (.+) when you take a critical strike"] = function( _, skill) return extraSkill(skill, 1, true) end,
	["暴击时触发【(.+)】"] = function( _, skill) return extraSkill(skill, 1, true) end, --备注：trigger (.+) on critical strike
	["你被暴击时触发【(.+)】"] = function( _, skill) return extraSkill(skill, 1, true) end, --备注：triggers? (.+) when you take a critical strike
	["此物品上的【(.+)技能石】由 (%d+) 级的 (.+) 辅助"] = function(num, _, support) return { mod("ExtraSupport", "LIST", { skillId = gemIdLookup[support] or gemIdLookup[support:gsub("^increased ","")] or "Unknown", level = num }, { type = "SocketedIn", slotName = "{SlotName}" }) } end, --备注：socketed [%a+]* ?gems a?r?e? ?supported by level (%d+) (.+)
	-- Conversion
	["召唤生物伤害提高或降低，将同样套用于自身"] = { flag("MinionDamageAppliesToPlayer") }, --备注：increases and reductions to minion damage also affects? you
	["召唤生物攻击速度的加成同时套用于你身上"] = { flag("MinionAttackSpeedAppliesToPlayer") }, --备注：increases and reductions to minion attack speed also affects? you
	["对法术伤害的增幅与减益也会套用于攻击上"] = { flag("SpellDamageAppliesToAttacks") }, --备注：increases and reductions to spell damage also apply to attacks
	["modifiers to claw damage also apply to unarmed"] = { flag("ClawDamageAppliesToUnarmed") },
	["对爪类武器的伤害加成同时套用于空手攻击伤害上"] = { flag("ClawDamageAppliesToUnarmed") }, --备注：modifiers to claw damage also apply to unarmed attack damage
	["modifiers to claw attack speed also apply to unarmed"] = { flag("ClawAttackSpeedAppliesToUnarmed") },
	["对爪类武器的攻击速度加成同时套用于空手攻击速度上"] = { flag("ClawAttackSpeedAppliesToUnarmed") }, --备注：modifiers to claw attack speed also apply to unarmed attack speed
	["modifiers to claw critical strike chance also apply to unarmed"] = { flag("ClawCritChanceAppliesToUnarmed") },
	["对爪类武器的攻击暴击率加成同时套用于空手攻击暴击率上"] = { flag("ClawCritChanceAppliesToUnarmed") }, --备注：modifiers to claw critical strike chance also apply to unarmed attack critical strike chance
	["照亮范围的扩大和缩小也同样作用于命中值"] = { flag("LightRadiusAppliesToAccuracy") }, --备注：increases and reductions to light radius also apply to accuracy
	["施法速度的提高和降低也同样作用于陷阱投掷速度"] = { flag("CastSpeedAppliesToTrapThrowingSpeed") }, --备注：increases and reductions to cast speed also apply to trap throwing speed
	["获得等同武器物理伤害 (%d+)%% 的全部三种额外火焰，冰霜和闪电伤害"] = function(num) return {  --备注：gain (%d+)%% of bow physical damage as extra damage of each element
		mod("PhysicalDamageGainAsLightning", "BASE", num, nil, ModFlag.Bow), 
		mod("PhysicalDamageGainAsCold", "BASE", num, nil, ModFlag.Bow), 
		mod("PhysicalDamageGainAsFire", "BASE", num, nil, ModFlag.Bow) 
	} end,
	["gain (%d+)%% of weapon physical damage as extra damage of each element"] = function(num) return { 
		mod("PhysicalDamageGainAsLightning", "BASE", num, nil, ModFlag.Weapon), 
		mod("PhysicalDamageGainAsCold", "BASE", num, nil, ModFlag.Weapon), 
		mod("PhysicalDamageGainAsFire", "BASE", num, nil, ModFlag.Weapon) 
	} end,
	-- Crit
	["幸运的暴击率"] = { flag("CritChanceLucky") }, --备注：your critical strike chance is lucky
	["你的暴击不造成额外暴击伤害"] = { flag("NoCritMultiplier") }, --备注：your critical strikes do not deal extra damage
	["暴击无法造成伤害"] = { mod("Damage", "MORE", -100, { type = "Condition", var = "CriticalStrike" }) }, --备注：critical strikes deal no damage
	["暴击率将随绝对闪电抗性而提高"] = { mod("CritChance", "INC", 1, { type = "PerStat", stat = "LightningResistTotal", div = 1 }) }, --备注：critical strike chance is increased by uncapped lightning resistance
	["暴击率随闪电抗性提高"] = { mod("CritChance", "INC", 1, { type = "PerStat", stat = "LightningResist", div = 1 }) }, --备注：critical strike chance is increased by lightning resistance
	["non%-critical strikes deal (%d+)%% damage"] = function(num) return { mod("Damage", "MORE", -100+num, nil, ModFlag.Hit, { type = "Condition", var = "CriticalStrike", neg = true }) } end,
	-- Generic Ailments
	["你每使敌人受到一种异常状态，它们受到的伤害便提高 (%d+)%%"] = function(num) return { --备注：enemies take (%d+)%% increased damage for each type of ailment you have inflicted on them
		mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Frozen"}),
		mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Chilled"}),
		mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Ignited"}),
		mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Shocked"}),
		mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Bleeding"}),
		mod("EnemyModifier", "LIST", { mod = mod("DamageTaken", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Poisoned"})
	} end,
	-- Elemental Ailments
	["你的火焰、冰霜、闪电伤害可以造成感电"] = { flag("ColdCanShock"), flag("FireCanShock") }, --备注：your elemental damage can shock
	["你的冰霜伤害可以点燃"] = { flag("ColdCanIgnite") }, --备注：your cold damage can ignite
	["你的闪电伤害可以造成点燃"] = { flag("LightningCanIgnite") }, --备注：your lightning damage can ignite
	["你的火焰伤害可以感电但无法点燃"] = { flag("FireCanShock"), flag("FireCannotIgnite") }, --备注：your fire damage can shock but not ignite
	["你的冰霜伤害可以点燃但无法冰冻或冰缓"] = { flag("ColdCanIgnite"), flag("ColdCannotFreeze"), flag("ColdCannotChill") }, --备注：your cold damage can ignite but not freeze or chill
	["你的闪电伤害可以冰冻但无法感电"] = { flag("LightningCanFreeze"), flag("LightningCannotShock") }, --备注：your lightning damage can freeze but not shock
	["混沌伤害可以造成感电"] = { flag("ChaosCanShock") }, --备注：your chaos damage can shock
	["混沌伤害可以造成点燃、冰缓和感电效果"] = { flag("ChaosCanIgnite"), flag("ChaosCanChill"), flag("ChaosCanShock") }, --备注：chaos damage can ignite, chill and shock
	["物理伤害可以造成冰缓"] = { flag("PhysicalCanChill") }, --备注：your physical damage can chill
	["你的物理伤害造成感电"] = { flag("PhysicalCanShock") }, --备注：your physical damage can shock
	["你正在燃烧时总能点燃敌人"] = { mod("EnemyIgniteChance", "BASE", 100, { type = "Condition", var = "Burning" }) }, --备注：you always ignite while burning
	["暴击不会必定造成冰冻"] = { flag("CritsDontAlwaysFreeze") }, --备注：critical strikes do not always freeze
	["you can inflict up to (%d+) ignites on an enemy"] = { flag("IgniteCanStack") },
	["enemies chilled by you take (%d+)%% increased burning damage"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("FireDamageTakenOverTime", "INC", num) }, { type = "ActorCondition", actor = "enemy", var = "Chilled" }) } end,
	["被点燃敌人的燃烧加快 (%d+)%%"] = function(num) return { mod("IgniteBurnFaster", "INC", num) } end, --备注：ignited enemies burn (%d+)%% faster
	["被点燃敌人的燃烧减缓 (%d+)%%"] = function(num) return { mod("IgniteBurnSlower", "INC", num) } end, --备注：ignited enemies burn (%d+)%% slower
	["攻击被点燃敌人会使燃烧加快 (%d+)%%"] = function(num) return { mod("IgniteBurnFaster", "INC", num, nil, ModFlag.Attack) } end, --备注：enemies ignited by an attack burn (%d+)%% faster
	-- Bleed
	["melee attacks cause bleeding"] = { mod("BleedChance", "BASE", 100, nil, ModFlag.Melee) },
	["attacks cause bleeding when hitting cursed enemies"] = { mod("BleedChance", "BASE", 100, nil, ModFlag.Attack, { type = "ActorCondition", actor = "enemy", var = "Cursed" }) },
	["melee critical strikes cause bleeding"] = { mod("BleedChance", "BASE", 100, nil, ModFlag.Melee, { type = "Condition", var = "CriticalStrike" }) },
	["causes bleeding on melee critical strike"] = { mod("BleedChance", "BASE", 100, nil, ModFlag.Melee, { type = "Condition", var = "CriticalStrike" }) },
	["melee critical strikes have (%d+)%% chance to cause bleeding"] = function(num) return { mod("BleedChance", "BASE", num, nil, ModFlag.Melee, { type = "Condition", var = "CriticalStrike" }) } end,
	["拥有【猫之隐匿】时，你的攻击必定造成流血"] = { mod("BleedChance", "BASE", 100, nil, ModFlag.Attack, { type = "Condition", var = "AffectedByCat'sStealth" }) }, --备注：attacks always inflict bleeding while you have cat's stealth
	["you have crimson dance while you have cat's stealth"] = { mod("Keystone", "LIST", "Crimson Dance", { type = "Condition", var = "AffectedByCat'sStealth" }) },
	["you have crimson dance if you have dealt a critical strike recently"] = { mod("Keystone", "LIST", "Crimson Dance", { type = "Condition", var = "CritRecently" }) },
	-- Poison
	["你的火焰伤害会使敌人中毒"] = { flag("FireCanPoison") }, --备注：y?o?u?r? ?fire damage can poison
	["你的冰霜伤害会使敌人中毒"] = { flag("ColdCanPoison") }, --备注：y?o?u?r? ?cold damage can poison
	["你的闪电伤害会使敌人中毒"] = { flag("LightningCanPoison") }, --备注：y?o?u?r? ?lightning damage can poison
	["your chaos damage poisons enemies"] = { mod("ChaosPoisonChance", "BASE", 100) },
	["你的混沌伤害有 (%d+)%% 几率使敌人中毒"] = function(num) return { mod("ChaosPoisonChance", "BASE", num) } end, --备注：your chaos damage has (%d+)%% chance to poison enemies
	["melee attacks poison on hit"] = { mod("PoisonChance", "BASE", 100, nil, ModFlag.Melee) },
	["melee critical strikes have (%d+)%% chance to poison the enemy"] = function(num) return { mod("PoisonChance", "BASE", num, nil, ModFlag.Melee, { type = "Condition", var = "CriticalStrike" }) } end,
	["匕首攻击的暴击有 (%d+)%% 几率使敌人中毒"] = function(num) return { mod("PoisonChance", "BASE", num, nil, ModFlag.Dagger, { type = "Condition", var = "CriticalStrike" }) } end, --备注：critical strikes with daggers have a (%d+)%% chance to poison the enemy
	["poison cursed enemies on hit"] = { mod("PoisonChance", "BASE", 100, { type = "ActorCondition", actor = "enemy", var = "Cursed" }) },
	["当你拥有最大数量的狂怒球时，攻击使敌人中毒"] = { mod("PoisonChance", "BASE", 100, nil, ModFlag.Attack, { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" }) }, --备注：wh[ie][ln]e? at maximum frenzy charges, attacks poison enemies
	["陷阱和地雷击中时，有 (%d+)%% 几率使敌人中毒"] = function(num) return { mod("PoisonChance", "BASE", num, nil, 0, bor(KeywordFlag.Trap, KeywordFlag.Mine)) } end, --备注：traps and mines have a (%d+)%% chance to poison on hit
	-- Buffs/debuffs
	["【迷踪】状态"] = { flag("Condition:Phasing") }, --备注：phasing
	["猛攻"] = { flag("Condition:Onslaught") }, --备注：onslaught
	["近期内你若有击败敌人，则进入【迷踪】状态"] = { flag("Condition:Phasing", { type = "Condition", var = "KilledRecently" }) }, --备注：you have phasing if you've killed recently
	["you have phasing while affected by haste"] = { flag("Condition:Phasing", { type = "Condition", var = "AffectedByHaste" }) },
	["拥有【猫之隐匿】时获得【迷踪】状态"] = { flag("Condition:Phasing", { type = "Condition", var = "AffectedByCat'sStealth" }) }, --备注：you have phasing while you have cat's stealth
	["低血时获得【猛攻】"] = { flag("Condition:Onslaught", { type = "Condition", var = "LowLife" }) }, --备注：you have onslaught while on low life
	["低魔时获得【猛攻】"] = { flag("Condition:Onslaught", { type = "Condition", var = "LowMana", neg = true }) }, --备注：you have onslaught while not on low mana
	["光环效果对友方没有作用"] = { flag("SelfAurasCannotAffectAllies") }, --备注：your aura buffs do not affect allies
	["无法获得友方光环效果"] = { flag("AlliesAurasCannotAffectSelf") }, --备注：allies' aura buffs do not affect you
	["可以对敌人施放 1 个额外诅咒"] = { mod("EnemyCurseLimit", "BASE", 1) }, --备注：enemies can have 1 additional curse
	["周围敌人被诅咒的效果提高 (%d+)%%"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("CurseEffectOnSelf", "INC", num) }) } end, --备注：nearby enemies have (%d+)%% increased effect of curses on them
	["周围敌人有额外 (%d+)%% 几率受到暴击"] = function(num) return { mod("EnemyModifier", "LIST", { mod = mod("SelfExtraCritChance", "BASE", num) }) } end, --备注：nearby enemies have an additional (%d+)%% chance to receive a critical strike
	["nearby enemies have (%-%d+)%% to all resistances"] = function(num) return {
		mod("EnemyModifier", "LIST", { mod = mod("ElementalResist", "BASE", num) }),
		mod("EnemyModifier", "LIST", { mod = mod("ChaosResist", "BASE", num) }) 
	} end,
	["your hits inflict decay, dealing (%d+) chaos damage per second for %d+ seconds"] = function(num) return { mod("SkillData", "LIST", { key = "decay", value = num, merge = "MAX" }) } end,
	["temporal chains has (%d+)%% reduced effect on you"] = function(num) return { mod("CurseEffectOnSelf", "INC", -num, { type = "SkillName", skillName = "时空锁链" }) } end,
	["unaffected by temporal chains"] = { mod("CurseEffectOnSelf", "MORE", -100, { type = "SkillName", skillName = "时空锁链" }) },
	["【猫之隐匿】的持续时间 ([%+%-]%d+) 秒"] = function(num) return { mod("PrimaryDuration", "BASE", num, { type = "SkillName", skillName = "猫之势" }) } end, --备注：([%+%-]%d+) seconds to cat's stealth duration
	["([%+%-]%d+) seconds to avian's might duration"] = function(num) return { mod("PrimaryDuration", "BASE", num, { type = "SkillName", skillName = "鸟之势" }) } end,
	["([%+%-]%d+) seconds to avian's flight duration"] = function(num) return { mod("SecondaryDuration", "BASE", num, { type = "SkillName", skillName = "鸟之势" }) } end,
	["【蛛之势】可对敌人额外造成 1 层蜘蛛网"] = { mod("ExtraSkillMod", "LIST", { mod = mod("Multiplier:SpiderWebApplyStackMax", "BASE", 1) }, { type = "SkillName", skillName = "蛛之势" }) }, --备注：aspect of the spider can inflict spider's web on enemies an additional time
	["受你至少 1 层蜘蛛网影响的敌人，所有抗性 (%-%d+)%%"] = function(num) return { --备注：enemies affected by your spider's webs have (%-%d+)%% to all resistances
		mod("EnemyModifier", "LIST", { mod = mod("ElementalResist", "BASE", num, { type = "MultiplierThreshold", var = "Spider's WebStack", threshold = 1 }) }),
		mod("EnemyModifier", "LIST", { mod = mod("ChaosResist", "BASE", num, { type = "MultiplierThreshold", var = "Spider's WebStack", threshold = 1 }) }),
	} end,
	["你受到 (%d+) 级【(%D+)】的诅咒"] = function(num, _, name) return { mod("ExtraCurse", "LIST", { skillId = gemIdLookup[name], level = num, applyToPlayer = true }) } end, --备注：you are cursed with level (%d+) (%D+)
	["受到【脆弱】诅咒时，非满血时被视作低血状态"] = { flag("Condition:LowLife", { type = "Condition", var = "AffectedByVulnerability" }) }, --备注：you count as on low life while you are cursed with vulnerability
	["近期内你每吞噬过 1 个灵柩，你和周围队友每秒回复 (%d+)%% 生命"] = function (num) return { mod("ExtraAura", "LIST", { mod = mod("LifeRegenPercent", "BASE", num) }, { type = "Condition", var = "ConsumedCorpseRecently" }) } end, --备注：if you consumed a corpse recently, you and nearby allies regenerate (%d+)%% of life per second
	-- Traps, Mines and Totems
	["陷阱和地雷造成 (%d+) %- (%d+) 额外物理伤害"] = function(_, min, max) return { mod("PhysicalMin", "BASE", tonumber(min), nil, 0, bor(KeywordFlag.Trap, KeywordFlag.Mine)), mod("PhysicalMax", "BASE", tonumber(max), nil, 0, bor(KeywordFlag.Trap, KeywordFlag.Mine)) } end, --备注：traps and mines deal (%d+)%-(%d+) additional physical damage
	["traps and mines deal (%d+) to (%d+) additional physical damage"] = function(_, min, max) return { mod("PhysicalMin", "BASE", tonumber(min), nil, 0, bor(KeywordFlag.Trap, KeywordFlag.Mine)), mod("PhysicalMax", "BASE", tonumber(max), nil, 0, bor(KeywordFlag.Trap, KeywordFlag.Mine)) } end,
	["最多同时可额外放置 (%d+) 个陷阱"] = function(num) return { mod("ActiveTrapLimit", "BASE", num) } end, --备注：can have up to (%d+) additional traps? placed at a time
	["最多同时可额外放置 (%d+) 个遥控地雷"] = function(num) return { mod("ActiveMineLimit", "BASE", num) } end, --备注：can have up to (%d+) additional remote mines? placed at a time
	["最多同时可以额外召唤 (%d+) 个图腾"] = function(num) return { mod("ActiveTotemLimit", "BASE", num) } end, --备注：can have up to (%d+) additional totems? summoned at a time
	["攻击技能可以额外召唤 (%d+) 个图腾"] = function(num) return { mod("ActiveTotemLimit", "BASE", num, nil, 0, KeywordFlag.Attack) } end, --备注：attack skills can have (%d+) additional totems? summoned at a time
	["每有 (%d+) 点敏捷，你的攻城炮台图腾数量上限便提高 1 个"] = function(num) return { mod("ActiveTotemLimit", "BASE", 1, { type = "SkillName", skillName = "攻城炮台" }, { type = "PerStat", stat = "Dex", div = num }) } end, --备注：can [hs][au][vm][em]o?n? 1 additional siege ballista totem per (%d+) dexterity
	["图腾发射 (%d+) 个额外投射物"] = function(num) return { mod("ProjectileCount", "BASE", num, nil, 0, KeywordFlag.Totem) } end, --备注：totems fire (%d+) additional projectiles
	["你偷取生命，数值等同于你的图腾造成伤害的 ([%d%.]+)%%"] = function(num) return { mod("DamageLifeLeechToPlayer", "BASE", num, nil, 0, KeywordFlag.Totem) } end, --备注：([%d%.]+)%% of damage dealt by y?o?u?r? ?totems is leeched to you as life
	-- Minions
	["your strength is added to your minions"] = { flag("HalfStrengthAddedToMinions") },
	["你一半的力量属性将添加至你的召唤生物身上"] = { flag("HalfStrengthAddedToMinions") }, --备注：half of your strength is added to your minions
	["minions poison enemies on hit"] = { mod("MinionModifier", "LIST", { mod = mod("PoisonChance", "BASE", 100) }) },
	["minions have (%d+)%% chance to poison enemies on hit"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("PoisonChance", "BASE", num) }) } end,
	["近期内你若造成过伤害，则召唤生物伤害提高 (%d+)%%"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num) }, { type = "Condition", var = "HitRecently" }) } end, --备注：(%d+)%% increased minion damage if you have hit recently
	["(%d+)%% increased minion damage if you've used a minion skill recently"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num) }, { type = "Condition", var = "UsedMinionSkillRecently" }) } end,
	["(%d+)%% increased minion attack speed per (%d+) dexterity"] = function(num, _, div) return { mod("MinionModifier", "LIST", { mod = mod("Speed", "INC", num, nil, ModFlag.Attack) }, { type = "PerStat", stat = "Dex", div = tonumber(div) }) } end,
	["(%d+)%% increased minion movement speed per (%d+) dexterity"] = function(num, _, div) return { mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", num) }, { type = "PerStat", stat = "Dex", div = tonumber(div) }) } end,
	["minions deal (%d+)%% increased damage per (%d+) dexterity"] = function(num, _, div) return { mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num) }, { type = "PerStat", stat = "Dex", div = tonumber(div) }) } end,
	["每 1 个召唤出的不同魔像可使魔像伤害提高 (%d+)%%"] = function(num) return { --备注：(%d+)%% increased golem damage for each type of golem you have summoned
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num, { type = "ActorCondition", actor = "parent", var = "HavePhysicalGolem" }) }, { type = "SkillType", skillType = SkillType.Golem }),
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num, { type = "ActorCondition", actor = "parent", var = "HaveLightningGolem" }) }, { type = "SkillType", skillType = SkillType.Golem }),
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num, { type = "ActorCondition", actor = "parent", var = "HaveColdGolem" }) }, { type = "SkillType", skillType = SkillType.Golem }),
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num, { type = "ActorCondition", actor = "parent", var = "HaveFireGolem" }) }, { type = "SkillType", skillType = SkillType.Golem }),
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", num, { type = "ActorCondition", actor = "parent", var = "HaveChaosGolem" }) }, { type = "SkillType", skillType = SkillType.Golem }),
	} end,
	["最多可同时拥有额外 (%d) 个魔像"] = function(num) return { mod("ActiveGolemLimit", "BASE", num) } end, --备注：can summon up to (%d) additional golems? at a time
	["若你有 3 个起源天赋珠宝，可以额外召唤 (%d) 个魔像"] = function(num) return { mod("ActiveGolemLimit", "BASE", num, { type = "MultiplierThreshold", var = "PrimordialItem", threshold = 3 }) } end, --备注：if you have 3 primordial jewels, can summon up to (%d) additional golems? at a time
	["golems regenerate (%d)%% of their maximum life per second"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("LifeRegenPercent", "BASE", num) }, { type = "SkillType", skillType = SkillType.Golem }) } end,
	["【愤怒狂灵】击中后必定造成点燃"] = { mod("MinionModifier", "LIST", { mod = mod("EnemyIgniteChance", "BASE", 100) }, { type = "SkillName", skillName = "召唤愤怒狂灵" }) }, --备注：raging spirits' hits always ignite
	["summoned skeletons have avatar of fire"] = { mod("MinionModifier", "LIST", { mod = mod("Keystone", "LIST", "Avatar of Fire") }, { type = "SkillName", skillName = "召唤魔侍" }) },
	["异灵魔侍每秒将其最大生命的 ([%d%.]+)%% 转化为火焰伤害"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("FireDegen", "BASE", num/100, { type = "PerStat", stat = "Life", div = 1 }) }, { type = "SkillName", skillName = "召唤魔侍" }) } end, --备注：summoned skeletons take ([%d%.]+)%% of their maximum life per second as fire damage
	-- Projectiles
	["投射物可以连锁弹射 %+(%d) 次"] = function(num) return { mod("ChainCountMax", "BASE", num) } end, --备注：skills chain %+(%d) times
	["当你拥有最大数量的狂怒球时，技能额外连锁弹射 1 次"] = { mod("ChainCountMax", "BASE", 1, { type = "StatThreshold", stat = "FrenzyCharges", thresholdStat = "FrenzyChargesMax" }) }, --备注：skills chain an additional time while at maximum frenzy charges
	["装备于主手时，攻击额外连锁弹射 1 次"] = { mod("ChainCountMax", "BASE", 1, nil, ModFlag.Attack, { type = "SlotNumber", num = 1 }) }, --备注：attacks chain an additional time when in main hand
	["用弓攻击时额外发射 1 根箭矢"] = { mod("ProjectileCount", "BASE", 1, nil, ModFlag.Attack) }, --备注：adds an additional arrow
	["用弓攻击时额外发射 (%d+) 根箭矢"] = function(num) return { mod("ProjectileCount", "BASE", num, nil, ModFlag.Attack) } end, --备注：(%d+) additional arrows
	["bow attacks fire an additional arrow"] = { mod("ProjectileCount", "BASE", 1, nil, ModFlag.Bow) },
	["bow attacks fire (%d+) additional arrows"] = function(num) return { mod("ProjectileCount", "BASE", num, nil, ModFlag.Bow) } end,
	["技能可以额外发射 1 个投射物"] = { mod("ProjectileCount", "BASE", 1) }, --备注：skills fire an additional projectile
	["法术可以额外发射 1 个投射物"] = { mod("ProjectileCount", "BASE", 1, nil, ModFlag.Spell) }, --备注：spells have an additional projectile
	["装备在副手时，攻击可以额外发射 1 个投射物"] = { mod("ProjectileCount", "BASE", 1, nil, ModFlag.Attack, { type = "SlotNumber", num = 2 }) }, --备注：attacks have an additional projectile when in off hand
	["projectiles pierce an additional target"] = { mod("PierceCount", "BASE", 1) },
	["投射物会穿透 (%d+) 个额外目标"] = function(num) return { mod("PierceCount", "BASE", num) } end, --备注：projectiles pierce (%d+) targets?
	["projectiles pierce (%d+) additional targets?"] = function(num) return { mod("PierceCount", "BASE", num) } end,
	["处于【迷踪】状态时，投射物穿透 (%d+) 个额外目标"] = function(num) return { mod("PierceCount", "BASE", num, { type = "Condition", var = "Phasing" }) } end, --备注：projectiles pierce (%d+) additional targets while you have phasing
	["箭矢会穿透 1 个额外目标"] = { mod("PierceCount", "BASE", 1, nil, ModFlag.Attack) }, --备注：arrows pierce an additional target
	["arrows pierce one target"] = { mod("PierceCount", "BASE", 1, nil, ModFlag.Attack) },
	["arrows pierce (%d+) targets?"] = function(num) return { mod("PierceCount", "BASE", num, nil, ModFlag.Attack) } end,
	["always pierce with arrows"] = { flag("PierceAllTargets", nil, ModFlag.Attack) },
	["arrows always pierce"] = { flag("PierceAllTargets", nil, ModFlag.Attack) },
	["箭矢穿透所有目标"] = { flag("PierceAllTargets", nil, ModFlag.Attack) }, --备注：arrows pierce all targets
	["穿透后的箭矢造成流血"] = { mod("BleedChance", "BASE", 100, nil, bor(ModFlag.Attack, ModFlag.Projectile), { type = "StatThreshold", stat = "PierceCount", threshold = 1 }) }, --备注：arrows that pierce cause bleeding
	["穿透后的箭矢有 (%d+)%% 几率造成流血"] = function(num) return { mod("BleedChance", "BASE", num, nil, bor(ModFlag.Attack, ModFlag.Projectile), { type = "StatThreshold", stat = "PierceCount", threshold = 1 }) } end, --备注：arrows that pierce have (%d+)%% chance to cause bleeding
	["arrows that pierce deal (%d+)%% increased damage"] = function(num) return { mod("Damage", "INC", num, nil, bor(ModFlag.Attack, ModFlag.Projectile), { type = "StatThreshold", stat = "PierceCount", threshold = 1 }) } end,
	["每连锁弹射 1 次，投射物获得额外混沌伤害，其数值等同于非混沌伤害的 (%d+)%%"] = function(num) return { mod("NonChaosDamageGainAsChaos", "BASE", num, nil, ModFlag.Projectile, { type = "PerStat", stat = "Chain" }) } end, --备注：projectiles gain (%d+)%% of non%-chaos damage as extra chaos damage per chain
	-- Leech/Gain on Hit
	["不能偷取生命"] = { flag("CannotLeechLife") }, --备注：cannot leech life
	["不能偷取魔力"] = { flag("CannotLeechMana") }, --备注：cannot leech mana
	["低血时不能偷取"] = { flag("CannotLeechLife", { type = "Condition", var = "LowLife" }), flag("CannotLeechMana", { type = "Condition", var = "LowLife" }) }, --备注：cannot leech when on low life
	["暴击无法吸血"] = { flag("CannotLeechLife", { type = "Condition", var = "CriticalStrike" }) }, --备注：cannot leech life from critical strikes
	["leech applies instantly on critical strike"] = { flag("InstantLifeLeech", { type = "Condition", var = "CriticalStrike" }), flag("InstantManaLeech", { type = "Condition", var = "CriticalStrike" }) },
	["暴击时立即获得生命和魔力偷取"] = { flag("InstantLifeLeech", { type = "Condition", var = "CriticalStrike" }), flag("InstantManaLeech", { type = "Condition", var = "CriticalStrike" }) }, --备注：gain life and mana from leech instantly on critical strike
	["leech applies instantly during flask effect"] = { flag("InstantLifeLeech", { type = "Condition", var = "UsingFlask" }), flag("InstantManaLeech", { type = "Condition", var = "UsingFlask" }) },
	["gain life and mana from leech instantly during flask effect"] = { flag("InstantLifeLeech", { type = "Condition", var = "UsingFlask" }), flag("InstantManaLeech", { type = "Condition", var = "UsingFlask" }) },
	["装备 5 个被腐化物品时：生命偷取只按照造成的混沌伤害计算"] = { flag("LifeLeechBasedOnChaosDamage", { type = "MultiplierThreshold", var = "CorruptedItem", threshold = 5 }) }, --备注：with 5 corrupted items equipped: life leech recovers based on your chaos damage instead
	["you have vaal pact if you've dealt a critical strike recently"] = { mod("Keystone", "LIST", "Vaal Pact", { type = "Condition", var = "CritRecently" }) },
	["你每击中 1 个被【蜘蛛网】覆盖的敌人，便获得 (%d+) 能量护盾"] = function(num) return { mod("EnergyShieldOnHit", "BASE", num, { type = "MultiplierThreshold", actor = "enemy", var = "Spider's WebStack", threshold = 1 }) } end, --备注：gain (%d+) energy shield for each enemy you hit which is affected by a spider's web
	["(%d+) life gained for each enemy hit if you have used a vaal skill recently"] = function(num) return { mod("LifeOnHit", "BASE", num, { type = "Condition", var = "UsedVaalSkillRecently"}) } end,
	-- Defences
	["无法闪避敌人攻击"] = { flag("CannotEvade") }, --备注：cannot evade enemy attacks
	["无法格档"] = { flag("CannotBlockAttacks"), flag("CannotBlockSpells") }, --备注：cannot block
	["无法格挡攻击"] = { flag("CannotBlockAttacks") }, --备注：cannot block attacks
	["无法格挡法术"] = { flag("CannotBlockSpells") }, --备注：cannot block spells
	["无法回复生命"] = { flag("NoLifeRegen") }, --备注：you have no life regeneration
	["解除护甲或能量护盾"] = { --备注：you have no armour or energy shield
		mod("Armour", "MORE", -100),
		mod("EnergyShield", "MORE", -100),
	},
	["火焰、冰霜、闪电抗性为零"] = { --备注：elemental resistances are zero
		mod("FireResist", "OVERRIDE", 0),
		mod("ColdResist", "OVERRIDE", 0),
		mod("LightningResist", "OVERRIDE", 0)
	},
	["你的最大抗性为 (%d+)%%"] = function(num) return { --备注：your maximum resistances are (%d+)%%
		mod("FireResistMax", "OVERRIDE", num),
		mod("ColdResistMax", "OVERRIDE", num),
		mod("LightningResistMax", "OVERRIDE", num),
		mod("ChaosResistMax", "OVERRIDE", num)
	} end,
	["护甲将随绝对火焰抗性而提高"] = { mod("Armour", "INC", 1, { type = "PerStat", stat = "FireResistTotal", div = 1 }) }, --备注：armour is increased by uncapped fire resistance
	["闪避值将随绝对冰霜抗性提高"] = { mod("Evasion", "INC", 1, { type = "PerStat", stat = "ColdResistTotal", div = 1 }) }, --备注：evasion rating is increased by uncapped cold resistance
	["反射 (%d+) 物理伤害给近战攻击者"] = { }, --备注：reflects (%d+) physical damage to melee attackers
	["无视穿着护甲所带来的移动速度降低效果"] = { flag("Condition:IgnoreMovementPenalties") }, --备注：ignore all movement penalties from armour
	["获得等同于你魔力保留数值的护甲"] = { mod("Armour", "BASE", 1, { type = "PerStat", stat = "ManaReserved", div = 1 }) }, --备注：gain armour equal to your reserved mana
	["免疫晕眩"] = { mod("AvoidStun", "BASE", 100) }, --备注：cannot be stunned
	["近期内你若没有被击中，则免疫晕眩"] = { mod("AvoidStun", "BASE", 100, { type = "Condition", var = "BeenHitRecently", neg = true }) }, --备注：cannot be stunned if you haven't been hit recently
	["若你拥有 (%d+) 个以上的【深海屏障】，则无法被晕眩"] = function(num) return { mod("AvoidStun", "BASE", 100, { type = "StatThreshold", stat = "CrabBarriers", threshold = num }) } end, --备注：cannot be stunned if you have at least (%d+) crab barriers
	["cannot be shocked"] = { mod("AvoidShock", "BASE", 100) },
	["免疫感电"] = { mod("AvoidShock", "BASE", 100) }, --备注：immune to shock
	["免疫冰冻"] = { mod("AvoidFreeze", "BASE", 100) }, --备注：cannot be frozen
	["immune to freeze"] = { mod("AvoidFreeze", "BASE", 100) },
	["免疫冰缓"] = { mod("AvoidChill", "BASE", 100) }, --备注：cannot be chilled
	["免疫点燃"] = { mod("AvoidChill", "BASE", 100) }, --备注：immune to chill
	["cannot be ignited"] = { mod("AvoidIgnite", "BASE", 100) },
	["immune to ignite"] = { mod("AvoidIgnite", "BASE", 100) },
	["你在耐力球达到上限时无法被感电"] = { mod("AvoidShock", "BASE", 100, { type = "StatThreshold", stat = "EnduranceCharges", thresholdStat = "EnduranceChargesMax" }) }, --备注：you cannot be shocked while at maximum endurance charges
	["若智慧高于力量，则无法被感电"] = { mod("AvoidShock", "BASE", 100, { type = "Condition", var = "IntHigherThanStr" }) }, --备注：cannot be shocked if intelligence is higher than strength
	["若敏捷高于智慧，则无法被冰冻"] = { mod("AvoidFreeze", "BASE", 100, { type = "Condition", var = "DexHigherThanInt" }) }, --备注：cannot be frozen if dexterity is higher than intelligence
	["若力量高于敏捷，则无法被点燃"] = { mod("AvoidIgnite", "BASE", 100, { type = "Condition", var = "StrHigherThanDex" }) }, --备注：cannot be ignited if strength is higher than dexterity
	["cannot be inflicted with bleeding"] = { mod("AvoidBleed", "BASE", 100) },
	["免疫流血"] = { mod("AvoidBleed", "BASE", 100) }, --备注：you are immune to bleeding
	["药剂持续期间免疫感电效果"] = { mod("AvoidShock", "BASE", 100, { type = "Condition", var = "UsingFlask" }) }, --备注：immunity to shock during flask effect
	["药剂持续期间免疫冰冻和冰缓"] = {  --备注：immunity to freeze and chill during flask effect
		mod("AvoidFreeze", "BASE", 100, { type = "Condition", var = "UsingFlask" }), 
		mod("AvoidChill", "BASE", 100, { type = "Condition", var = "UsingFlask" }) 
	},
	["药剂持续期间免疫点燃"] = { mod("AvoidIgnite", "BASE", 100, { type = "Condition", var = "UsingFlask" }) }, --备注：immunity to ignite during flask effect
	["药剂持续期间免疫流血"] = { mod("AvoidBleed", "BASE", 100, { type = "Condition", var = "UsingFlask" }) }, --备注：immunity to bleeding during flask effect
	["药剂持续期间免疫中毒"] = { mod("AvoidPoison", "BASE", 100, { type = "Condition", var = "UsingFlask" }) }, --备注：immune to poison during flask effect
	["药剂持续期间免疫诅咒"] = { mod("AvoidCurse", "BASE", 100, { type = "Condition", var = "UsingFlask" }) }, --备注：immune to curses during flask effect
	["药剂持续期间，免疫冰冻、冰缓、诅咒和晕眩"] = {  --备注：immune to freeze, chill, curses and stuns during flask effect
		mod("AvoidFreeze", "BASE", 100, { type = "Condition", var = "UsingFlask" }), 
		mod("AvoidChill", "BASE", 100, { type = "Condition", var = "UsingFlask" }),
		mod("AvoidCurse", "BASE", 100, { type = "Condition", var = "UsingFlask" }),
		mod("AvoidStun", "BASE", 100, { type = "Condition", var = "UsingFlask" }),
	},
	["不受诅咒影响"] = { mod("CurseEffectOnSelf", "MORE", -100) }, --备注：unaffected by curses
	["你身上的冰缓效果颠倒"] = { flag("SelfChillEffectIsReversed") }, --备注：the effect of chill on you is reversed
	-- Knockback
	["无法击退敌人"] = { flag("CannotKnockback") }, --备注：cannot knock enemies back
	["长杖攻击暴击时击退敌人"] = { mod("EnemyKnockbackChance", "BASE", 100, nil, ModFlag.Staff, { type = "Condition", var = "CriticalStrike" }) }, --备注：knocks back enemies if you get a critical strike with a staff
	["弓类攻击暴击时击退敌人"] = { mod("EnemyKnockbackChance", "BASE", 100, nil, ModFlag.Bow, { type = "Condition", var = "CriticalStrike" }) }, --备注：knocks back enemies if you get a critical strike with a bow
	["近距离时，弓类攻击会击退敌人"] = { mod("EnemyKnockbackChance", "BASE", 100, nil, ModFlag.Bow, { type = "Condition", var = "AtCloseRange" }) }, --备注：bow knockback at close range
	["药剂持续期间，附加击退效果"] = { mod("EnemyKnockbackChance", "BASE", 100, { type = "Condition", var = "UsingFlask" }) }, --备注：adds knockback during flask effect
	["药剂持续期间，近战攻击会击退敌人"] = { mod("EnemyKnockbackChance", "BASE", 100, nil, ModFlag.Melee, { type = "Condition", var = "UsingFlask" }) }, --备注：adds knockback to melee attacks during flask effect
	-- Flasks
	["不会获得药剂的效果"] = { flag("FlasksDoNotApplyToPlayer") }, --备注：flasks do not apply to you
	["flasks apply to your zombies and spectres"] = { flag("FlasksApplyToMinion", { type = "SkillName", skillNameList = { "Raise Zombie", "Raise Spectre" } }) },
	["使用时制造一团烟雾"] = { }, --备注：creates a smoke cloud on use
	["creates chilled ground on use"] = { },
	["使用时制造奉献地面"] = { }, --备注：creates consecrated ground on use
	["药剂持续期间，获得不洁之力"] = { flag("Condition:UnholyMight", { type = "Condition", var = "UsingFlask" }) }, --备注：gain unholy might during flask effect
	["药剂持续期间获得【狂热誓言】"] = { mod("ZealotsOath", "FLAG", true, { type = "Condition", var = "UsingFlask" }) }, --备注：zealot's oath during flask effect
	["药剂持续期间，获得 (%d+) 级的【(.+)】诅咒光环"] = function(num, _, skill) return { mod("ExtraCurse", "LIST", { skillId = gemIdLookup[skill:gsub(" skill","")] or "Unknown", level = num }, { type = "Condition", var = "UsingFlask" }) } end, --备注：grants level (%d+) (.+) curse aura during flask effect
	["药剂持续期间，你绝对抗性最低的元素属性，会使你受到的该属性伤害降低 (%d+)%%"] = function(num) return { --备注：during flask effect, (%d+)%% reduced damage taken of each element for which your uncapped elemental resistance is lowest
		mod("LightningDamageTaken", "INC", -num, { type = "StatThreshold", stat = "LightningResistTotal", thresholdStat = "ColdResistTotal", upper = true }, { type = "StatThreshold", stat = "LightningResistTotal", thresholdStat = "FireResistTotal", upper = true }),
		mod("ColdDamageTaken", "INC", -num, { type = "StatThreshold", stat = "ColdResistTotal", thresholdStat = "LightningResistTotal", upper = true }, { type = "StatThreshold", stat = "ColdResistTotal", thresholdStat = "FireResistTotal", upper = true }),
		mod("FireDamageTaken", "INC", -num, { type = "StatThreshold", stat = "FireResistTotal", thresholdStat = "LightningResistTotal", upper = true }, { type = "StatThreshold", stat = "FireResistTotal", thresholdStat = "ColdResistTotal", upper = true }),
	} end,
	["药剂持续期间，你绝对抗性最高的元素属性，会使你穿透 (%d+)%% 该抗性"] = function(num) return { --备注：during flask effect, damage penetrates (%d+)%% o?f? ?resistance of each element for which your uncapped elemental resistance is highest
		mod("LightningPenetration", "BASE", num, { type = "StatThreshold", stat = "LightningResistTotal", thresholdStat = "ColdResistTotal" }, { type = "StatThreshold", stat = "LightningResistTotal", thresholdStat = "FireResistTotal" }),
		mod("ColdPenetration", "BASE", num, { type = "StatThreshold", stat = "ColdResistTotal", thresholdStat = "LightningResistTotal" }, { type = "StatThreshold", stat = "ColdResistTotal", thresholdStat = "FireResistTotal" }),
		mod("FirePenetration", "BASE", num, { type = "StatThreshold", stat = "FireResistTotal", thresholdStat = "LightningResistTotal" }, { type = "StatThreshold", stat = "FireResistTotal", thresholdStat = "ColdResistTotal" }),
	} end,
	["每秒受到等同 (%d+)%% 最大生命的混沌伤害"] = function(num) return { mod("ChaosDegen", "BASE", num/100, { type = "PerStat", stat = "Life", div = 1 }) } end, --备注：(%d+)%% of maximum life taken as chaos damage per second
	["药剂持续期间，你的暴击无法造成暴击伤害加成"] = { flag("NoCritMultiplier", { type = "Condition", var = "UsingFlask" }) }, --备注：your critical strikes do not deal extra damage during flask effect
	["grants perfect agony during flask effect"] = { mod("Keystone", "LIST", "Perfect Agony", { type = "Condition", var = "UsingFlask" }) },
	-- Jewels
	["未连结至天赋树的技能，仍然可以在范围内配置"] = { mod("JewelData", "LIST", { key = "intuitiveLeap", value = true }) }, --备注：passives in radius can be allocated without being connected to your tree
	["每 1 个聚光之石可使火焰、冰霜、闪电伤害提高 (%d+)%%"] = function(num) return {  --备注：(%d+)%% increased elemental damage per grand spectrum
		mod("ElementalDamage", "INC", num, { type = "Multiplier", var = "GrandSpectrum" }), 
		mod("Multiplier:GrandSpectrum", "BASE", 1) 
	} end,
	["每 1 个聚光之石可使护甲提高 (%d+)"] = function(num) return {  --备注：gain (%d+) armour per grand spectrum
		mod("Armour", "BASE", num, { type = "Multiplier", var = "GrandSpectrum" }), 
		mod("Multiplier:GrandSpectrum", "BASE", 1) 
	} end,
	["每 1 个聚光之石可使魔力提高 (%d+)"] = function(num) return { --备注：gain (%d+) mana per grand spectrum
		mod("Mana", "BASE", num, { type = "Multiplier", var = "GrandSpectrum" }),
		mod("Multiplier:GrandSpectrum", "BASE", 1) 
	} end,
	["起源珠宝"] = { mod("Multiplier:PrimordialItem", "BASE", 1) }, --备注：primordial
	["spectres have a base duration of (%d+) seconds"] = function(num) return { mod("SkillData", "LIST", { key = "duration", value = 6 }, { type = "SkillName", skillName = "召唤灵体" }) } end,
	-- Misc
	["iron will"] = { flag("IronWill") },
	["iron reflexes while stationary"] = { mod("Keystone", "LIST", "Iron Reflexes", { type = "Condition", var = "Stationary" }) },
	["you have zealot's oath if you haven't been hit recently"] = { mod("Keystone", "LIST", "Zealot's Oath", { type = "Condition", var = "BeenHitRecently", neg = true }) },
	["没有物理伤害"] = { flag("DealNoPhysical") }, --备注：deal no physical damage
	["无法造成火焰、冰霜、闪电伤害"] = { flag("DealNoLightning"), flag("DealNoCold"), flag("DealNoFire") }, --备注：deal no elemental damage
	["无法造成非火焰、冰霜、闪电伤害"] = { flag("DealNoPhysical"), flag("DealNoChaos") }, --备注：deal no non%-elemental damage
	["所有攻击都受到血魔法辅助"] = { flag("SkillBloodMagic", nil, ModFlag.Attack) }, --备注：attacks have blood magic
	["(%d+)%% chance to cast a? ?socketed lightning spells? on hit"] = function(num) return { mod("ExtraSupport", "LIST", { name = "SupportUniqueMjolnerLightningSpellsCastOnHit", level = 1 }, { type = "SocketedIn", slotName = "{SlotName}" }) } end,
	["cast a socketed lightning spell on hit"] = { mod("ExtraSupport", "LIST", { name = "SupportUniqueMjolnerLightningSpellsCastOnHit", level = 1 }, { type = "SocketedIn", slotName = "{SlotName}" }) },
	["trigger a socketed lightning spell on hit"] = { mod("ExtraSupport", "LIST", { name = "SupportUniqueMjolnerLightningSpellsCastOnHit", level = 1 }, { type = "SocketedIn", slotName = "{SlotName}" }) },
	["近战暴击时触发插槽内的冰霜技能"] = { mod("ExtraSupport", "LIST", { name = "SupportUniqueCosprisMaliceColdSpellsCastOnMeleeCriticalStrike", level = 1 }, { type = "SocketedIn", slotName = "{SlotName}" }) }, --备注：cast a socketed cold s[pk][ei]ll on melee critical strike
	["你的诅咒对有【无咒】词缀的敌人依然有效"] = { flag("CursesIgnoreHexproof") }, --备注：your curses can apply to hexproof enemies
	["当你拥有护体时获得【猛攻】状态"] = { flag("Condition:Onslaught", { type = "Condition", var = "Fortify" }) }, --备注：you have onslaught while you have fortify
	["保留 (%d+)%% 生命"] = function(num) return { mod("ExtraLifeReserved", "BASE", num) } end, --备注：reserves (%d+)%% of life
	["装备和技能石的属性需求降低 (%d+)%%"] = function(num) return { mod("GlobalAttributeRequirements", "INC", -num) } end, --备注：items and gems have (%d+)%% reduced attribute requirements
	["items and gems have (%d+)%% increased attribute requirements"] = function(num) return { mod("GlobalAttributeRequirements", "INC", num) } end,
	["捷光环的魔力保留总是 (%d+)%%"] = function(num) return { mod("SkillData", "LIST", { key = "manaCostForced", value = num }, { type = "SkillType", skillType = SkillType.Herald }) } end, --备注：mana reservation of herald skills is always (%d+)%%
	["【猫之势】不保留魔力值"] = { mod("SkillData", "LIST", { key = "manaCostForced", value = 0 }, { type = "SkillName", skillName = "猫之势" }) }, --备注：aspect of the cat reserves no mana
	["wrath reserves no mana"] = { mod("SkillData", "LIST", { key = "manaCostForced", value = 0 }, { type = "SkillName", skillName = "雷霆" }) },
	["hatred reserves no mana"] = { mod("SkillData", "LIST", { key = "manaCostForced", value = 0 }, { type = "SkillName", skillName = "憎恨" }) },
	["anger reserves no mana"] = { mod("SkillData", "LIST", { key = "manaCostForced", value = 0 }, { type = "SkillName", skillName = "愤怒" }) },
	["你的法术被禁用了"] = { flag("DisableSkill", { type = "SkillType", skillType = SkillType.Spell }) }, --备注：your spells are disabled
	["strength's damage bonus instead grants (%d+)%% increased melee physical damage per (%d+) strength"] = function(num, _, perStr) return { mod("StrDmgBonusRatioOverride", "BASE", num / tonumber(perStr)) } end,
	["受到【她的拥抱】影响时，每级根据你的最大生命和最大护盾总量，造成每秒 ([%d%.]+)%% 火焰伤害"] = function(num) return {  --备注：while in her embrace, take ([%d%.]+)%% of your total maximum life and energy shield as fire damage per second per level
		mod("FireDegen", "BASE", 0.005, { type = "PerStat", stat = "Life" }, { type = "Multiplier", var = "Level" }, { type = "Condition", var = "HerEmbrace" }),
		mod("FireDegen", "BASE", 0.005, { type = "PerStat", stat = "EnergyShield" }, { type = "Multiplier", var = "Level" }, { type = "Condition", var = "HerEmbrace" }),
	} end,
	["点燃敌人时获得【女神的祝福】 %d+ 秒"] = { flag("Condition:CanGainHerEmbrace") }, --备注：gain her embrace for %d+ seconds when you ignite an enemy
	["你被点燃时，击中怪物敌人无视其火焰抗性"] = { flag("IgnoreFireResistance", { type = "Condition", var = "Ignited" }) }, --备注：hits ignore enemy monster fire resistance while you are ignited
	["你的攻击和法术无法被致盲的敌人所闪避"] = { flag("CannotBeEvaded", { type = "ActorCondition", actor = "enemy", var = "Blinded" }) }, --备注：your hits can't be evaded by blinded enemies
	["投掷陷阱的技能受到血魔法辅助"] = { flag("BloodMagic", { type = "SkillType", skillType = SkillType.Trap }) }, --备注：skills which throw traps have blood magic
	["每秒失去 ([%d%.]+) 魔力"] = function(num) return { mod("ManaDegen", "BASE", num) } end, --备注：lose ([%d%.]+) mana per second
	["每秒失去 ([%d%.]+)%% 最大魔力"] = function(num) return { mod("ManaDegen", "BASE", num/100, { type = "PerStat", stat = "Mana" }) } end, --备注：lose ([%d%.]+)%% of maximum mana per second
	["力量不对最大生命提供加成"] = { flag("NoStrBonusToLife") }, --备注：strength provides no bonus to maximum life
	["智慧不对最大魔力提供加成"] = { flag("NoIntBonusToMana") }, --备注：intelligence provides no bonus to maximum mana
	["with a ghastly eye jewel socketed, minions have %+(%d+) to accuracy rating"] = function(num) return { mod("MinionModifier", "LIST", { mod = mod("Accuracy", "BASE", num) }, { type = "Condition", var = "HaveGhastlyEyeJewelIn{SlotName}" }) } end,
	-- Skill-specific enchantment modifiers
	["(%d+)%% increased decoy totem life"] = function(num) return { mod("TotemLife", "INC", num, { type = "SkillName", skillName = "诱饵图腾" }) } end,
	["(%d+)%% increased ice spear critical strike chance in second form"] = function(num) return { mod("CritChance", "INC", num, { type = "SkillName", skillName = "冰矛" }, { type = "SkillPart", skillPart = 2 }) } end,
	["shock nova ring deals (%d+)%% increased damage"] = function(num) return { mod("Damage", "INC", num, { type = "SkillName", skillName = "闪电新星" }, { type = "SkillPart", skillPart = 1 }) } end,
	["lightning strike pierces (%d) additional targets?"] = function(num) return { mod("PierceCount", "BASE", num, { type = "SkillName", skillName = "闪电打击" }) } end,
	["lightning trap pierces (%d) additional targets?"] = function(num) return { mod("PierceCount", "BASE", num, { type = "SkillName", skillName = "闪电陷阱" }) } end,
	["enemies affected by bear trap take (%d+)%% increased damage from trap or mine hits"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("TrapMineDamageTaken", "INC", num, { type = "GlobalEffect", effectType = "Debuff" }) }, { type = "SkillName", skillName = "捕熊陷阱" }) } end,
	["blade vortex has %+(%d+)%% to critical strike multiplier for each blade"] = function(num) return { mod("CritMultiplier", "BASE", num, { type = "Multiplier", var = "BladeVortexBlade" }, { type = "SkillName", skillName = "飞刃风暴" }) } end,
	["double strike has a (%d+)%% chance to deal double damage to bleeding enemies"] = function(num) return { mod("DoubleDamageChance", "BASE", num, { type = "ActorCondition", actor = "enemy", var = "Bleeding" }, { type = "SkillName", skillName = "双重打击" }) } end,
	["ethereal knives pierces an additional target"] = { mod("PierceCount", "BASE", 1, { type = "SkillName", skillName = "虚空匕首" }) },
	["frost bomb has (%d+)%% increased debuff duration"] = function(num) return { mod("SecondaryDuration", "INC", num, { type = "SkillName", skillName = "寒霜爆" }) } end,
	["incinerate has %+(%d+) to maximum stages"] = function(num) return {
		mod("Multiplier:IncinerateStage", "BASE", num/2, 0, 0, { type = "SkillPart", skillPart = 2 }),
		mod("Multiplier:IncinerateStage", "BASE", num, 0, 0, { type = "SkillPart", skillPart = 3 })
	} end,
	["scourge arrow has (%d+)%% chance to poison per stage"] = function(num) return { mod("PoisonChance", "BASE", num, { type = "SkillName", skillName = "Scourge Arrow" }, { type = "Multiplier", var = "ScourgeArrowStage" }) } end,
	-- Display-only modifiers
	["prefixes:"] = { },
	["suffixes:"] = { },
	["当你在你在天赋树上连接到一个职业的出发位置时，你获得："] = { }, --备注：while your passive skill tree connects to a class' starting location, you gain:
	["触发后，插槽内闪电法术的法术伤害提高 (%d+)%%"] = { }, --备注：socketed lightning spells [hd][ae][va][el] (%d+)%% increased spell damage if triggered
	["【幻化之刃德尔维希】会使你主手和副手武器装备栏失效"] = { }, --备注：manifeste?d? dancing dervish disables both weapon slots
	["【幻化之刃德尔维希】在暴走结束时死亡"] = { }, --备注：manifeste?d? dancing dervish dies when rampage ends
}
local keystoneList = {
	-- List of keystones that can be found on uniques
"移形换影",
"先祖魂约",
"箭矢闪跃",
"火之化身",
"祭血术",
"能量连接",
"玫红之舞",
"异能魔力",
"元素之相",
"元素超载",
"灵能护体",
"钢铁之握",
"霸体",
"心灵升华",
"复仇之灵",
"苦痛灵曲",
"完美苦痛",
"移灵换影",
"零点射击",
"坚毅之心",
"烈士意志",
"瓦尔冥约",
"狂热誓言",
}
for _, name in pairs(keystoneList) do
	specialModList[name:lower()] = { mod("Keystone", "LIST", name) }
end
local oldList = specialModList
specialModList = { }
for k, v in pairs(oldList) do
	specialModList["^"..k.."$"] = v
end

-- Modifiers that are recognised but unsupported
local unsupportedModList = {
	["culling strike"] = true,
	["properties are doubled while in a breach"] = true,
}

-- Special lookups used for various modifier forms
local suffixTypes = {
	["as extra lightning damage"] = "GainAsLightning",
	["added as lightning damage"] = "GainAsLightning",
	["gained as extra lightning damage"] = "GainAsLightning",
	["as extra cold damage"] = "GainAsCold",
	["added as cold damage"] = "GainAsCold",
	["gained as extra cold damage"] = "GainAsCold",
	["as extra fire damage"] = "GainAsFire",
	["added as fire damage"] = "GainAsFire",
	["gained as extra fire damage"] = "GainAsFire",
	["as extra chaos damage"] = "GainAsChaos",
	["added as chaos damage"] = "GainAsChaos",
	["gained as extra chaos damage"] = "GainAsChaos",
	["转换为闪电"] = "ConvertToLightning", --备注：converted to lightning
	["转换为闪电伤害"] = "ConvertToLightning", --备注：converted to lightning damage
	["转换为冰霜伤害"] = "ConvertToCold", --备注：converted to cold damage
	["转换为火焰伤害"] = "ConvertToFire", --备注：converted to fire damage
	["转换为混沌伤害"] = "ConvertToChaos", --备注：converted to chaos damage
	["added as energy shield"] = "GainAsEnergyShield",
	["的额外能量护盾"] = "GainAsEnergyShield", --备注：as extra maximum energy shield
	["converted to energy shield"] = "ConvertToEnergyShield",
	["as physical damage"] = "AsPhysical",
	["as lightning damage"] = "AsLightning",
	["as cold damage"] = "AsCold",
	["转化为火焰伤害"] = "AsFire", --备注：as fire damage
	["as chaos damage"] = "AsChaos",
	["生命和魔力"] = "Leech", --备注：leeched as life and mana
	["生命偷取"] = "LifeLeech", --备注：leeched as life
	["转化为生命偷取"] = "LifeLeech", --备注：is leeched as life
	["魔力偷取"] = "ManaLeech", --备注：leeched as mana
	["转化为魔力偷取"] = "ManaLeech", --备注：is leeched as mana
}
local dmgTypes = {
	["物理"] = "Physical", --备注：physical
	["闪电"] = "Lightning", --备注：lightning
	["冰霜"] = "Cold", --备注：cold
	["火焰"] = "Fire", --备注：fire
	["混沌"] = "Chaos", --备注：chaos
}
local penTypes = {
	["闪电抗性"] = "LightningPenetration", --备注：lightning resistance
	["冰霜抗性"] = "ColdPenetration", --备注：cold resistance
	["火焰抗性"] = "FirePenetration", --备注：fire resistance
	["火焰、冰霜、闪电抗性"] = "ElementalPenetration", --备注：elemental resistance
	["获得 ([%+%-]?%d+)%% 火焰、冰霜、闪电抗性"] = "ElementalPenetration", --备注：elemental resistances
}
local regenTypes = {
	["生命"] = "LifeRegen", --备注：life
	["最大生命"] = "LifeRegen", --备注：maximum life
	["life and mana"] = { "LifeRegen", "ManaRegen" },
	["魔力"] = "ManaRegen", --备注：mana
	["最大魔力"] = "ManaRegen", --备注：maximum mana
	["能量护盾"] = "EnergyShieldRegen", --备注：energy shield
	["最大能量护盾"] = "EnergyShieldRegen", --备注：maximum energy shield
	["maximum mana and energy shield"] = { "ManaRegen", "EnergyShieldRegen" },
}

-- Build active skill name lookup
local skillNameList = {
	[" corpse cremation " ] = { tag = { type = "SkillName", skillName = "火葬" } }, -- Sigh.
}
local preSkillNameList = { }
	--【中文化程序额外添加开始】
	 skillNameList["【旋涡】"] = { tag = { type = "SkillName", skillName = “漩涡” } }
	  skillNameList["先祖战士长图腾"] = { tag = { type = "SkillName", skillName = 先祖战士长 } }
	--【中文化程序额外添加结束】
for gemId, gemData in pairs(data["3_0"].gems) do
	local grantedEffect = gemData.grantedEffect
	if not grantedEffect.hidden and not grantedEffect.support then
		local skillName = grantedEffect.name
		skillNameList[" "..skillName:lower().." "] = { tag = { type = "SkillName", skillName = skillName } }
		preSkillNameList["^"..skillName:lower().." "] = { tag = { type = "SkillName", skillName = skillName } }
preSkillNameList["^"..skillName:lower().." has ?a? "] = { tag = { type = "SkillName", skillName = skillName } } preSkillNameList["^【"..skillName:lower().."】"] = { tag = { type = "SkillName", skillName = skillName } }  preSkillNameList["^【"..skillName:lower().."】的"] = { tag = { type = "SkillName", skillName = skillName } }
		preSkillNameList["^"..skillName:lower().." deals "] = { tag = { type = "SkillName", skillName = skillName } }
		preSkillNameList["^"..skillName:lower().." damage "] = { tag = { type = "SkillName", skillName = skillName } }
		if gemData.tags.totem then
			preSkillNameList["^"..skillName:lower().." totem deals "] = { tag = { type = "SkillName", skillName = skillName } }
			preSkillNameList["^"..skillName:lower().." totem grants "] = { addToSkill = { type = "SkillName", skillName = skillName }, tag = { type = "GlobalEffect", effectType = "Buff" } }
		end
		if grantedEffect.skillTypes[SkillType.Buff] or grantedEffect.baseFlags.buff then
			preSkillNameList["^"..skillName:lower().." grants "] = { addToSkill = { type = "SkillName", skillName = skillName }, tag = { type = "GlobalEffect", effectType = "Buff" } }
			preSkillNameList["^"..skillName:lower().." grants a?n? ?additional "] = { addToSkill = { type = "SkillName", skillName = skillName }, tag = { type = "GlobalEffect", effectType = "Buff" } }
		end
		if gemData.tags.aura or gemData.tags.herald then
skillNameList["受到【"..skillName:lower().."】影响时，"] = { tag = { type = "Condition", var = "AffectedBy"..skillName:gsub(" ","") } }
		end
		if gemData.tags.chaining then
			specialModList["^"..skillName:lower().." chains an additional time"] = { mod("ExtraSkillMod", "LIST", { mod = mod("ChainCountMax", "BASE", 1) }, { type = "SkillName", skillName = skillName }) }
			specialModList["^"..skillName:lower().." chains an additional (%d+) times"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ChainCountMax", "BASE", num) }, { type = "SkillName", skillName = skillName }) } end
		end
		if gemData.tags.bow then
			specialModList["^"..skillName:lower().." fires (%d+) additional arrows?"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ProjectileCount", "BASE", num) }, { type = "SkillName", skillName = skillName }) } end
		end
		if gemData.tags.bow or gemData.tags.projectile then
			specialModList["^"..skillName:lower().." fires an additional projectile"] = { mod("ExtraSkillMod", "LIST", { mod = mod("ProjectileCount", "BASE", 1) }, { type = "SkillName", skillName = skillName }) }
			specialModList["^"..skillName:lower().." fires (%d+) additional projectiles"] = function(num) return { mod("ExtraSkillMod", "LIST", { mod = mod("ProjectileCount", "BASE", num) }, { type = "SkillName", skillName = skillName }) } end
		end
	end	
end

-- Radius jewels that modify other nodes
local function getSimpleConv(srcList, dst, type, remove, factor)
	return function(node, out, data)
		if node then
			for _, src in pairs(srcList) do
				for _, mod in ipairs(node.modList) do
					if mod.name == src and mod.type == type then
						if remove then
							out:MergeNewMod(src, type, -mod.value, mod.source, mod.flags, mod.keywordFlags, unpack(mod))
						end
						if factor then
							out:MergeNewMod(dst, type, math.floor(mod.value * factor), mod.source, mod.flags, mod.keywordFlags, unpack(mod))
						else
							out:MergeNewMod(dst, type, mod.value, mod.source, mod.flags, mod.keywordFlags, unpack(mod))
						end
					end
				end	
			end
		end
	end
end
local jewelOtherFuncs = {
	--【中文化程序额外添加开始】
	["范围内提高闪电抗性或所有元素抗性的天赋也会以 35% 的比例提高法术伤害格挡几率"] = getSimpleConv({"LightningResist","ElementalResist"}, "SpellBlockChance", "BASE", false, 0.35),
	--【中文化程序额外添加结束】
	["将范围内天赋所给予的力量转换成敏捷"] = getSimpleConv({"Str"}, "Dex", "BASE", true), --备注：Strength from Passives in Radius is Transformed to Dexterity
	["将范围内天赋所给予的敏捷转换成力量"] = getSimpleConv({"Dex"}, "Str", "BASE", true), --备注：Dexterity from Passives in Radius is Transformed to Strength
	["将范围内天赋所给予的力量转换成智慧"] = getSimpleConv({"Str"}, "Int", "BASE", true), --备注：Strength from Passives in Radius is Transformed to Intelligence
	["将范围内天赋所给予的智慧转换成力量"] = getSimpleConv({"Int"}, "Str", "BASE", true), --备注：Intelligence from Passives in Radius is Transformed to Strength
	["将范围内天赋所给予的敏捷转换成智慧"] = getSimpleConv({"Dex"}, "Int", "BASE", true), --备注：Dexterity from Passives in Radius is Transformed to Intelligence
	["将范围内天赋所给予的智慧转换成敏捷"] = getSimpleConv({"Int"}, "Dex", "BASE", true), --备注：Intelligence from Passives in Radius is Transformed to Dexterity
	["范围内生命的增减转换成能量护盾"] = getSimpleConv({"Life"}, "EnergyShield", "INC", true), --备注：Increases and Reductions to Life in Radius are Transformed to apply to Energy Shield
	["范围内能量护盾的增减转换成 200% 的护甲"] = getSimpleConv({"EnergyShield"}, "Armour", "INC", true, 2), --备注：Increases and Reductions to Energy Shield in Radius are Transformed to apply to Armour at 200% of their value
	["范围内增减的生命转换成 200% 魔力"] = getSimpleConv({"Life"}, "Mana", "INC", true, 2), --备注：Increases and Reductions to Life in Radius are Transformed to apply to Mana at 200% of their value
	["范围内物理伤害的增减转换成冰霜伤害"] = getSimpleConv({"PhysicalDamage"}, "ColdDamage", "INC", true), --备注：Increases and Reductions to Physical Damage in Radius are Transformed to apply to Cold Damage
	["范围内冰霜伤害的增减转换成物理伤害"] = getSimpleConv({"ColdDamage"}, "PhysicalDamage", "INC", true), --备注：Increases and Reductions to Cold Damage in Radius are Transformed to apply to Physical Damage
	["范围内其他伤害类型的增减转换成火焰伤害"] = getSimpleConv({"PhysicalDamage","ColdDamage","LightningDamage","ChaosDamage"}, "FireDamage", "INC", true), --备注：Increases and Reductions to other Damage Types in Radius are Transformed to apply to Fire Damage
	["范围内提高闪电抗性的天赋也会以 35% 的比例提高法术格挡率"] = getSimpleConv({"LightningResist","ElementalResist"}, "SpellBlockChance", "BASE", false, 0.35), --备注：Passives granting Lightning Resistance or all Elemental Resistances in Radius also grant Chance to Block Spells at 35% of its value
	["范围内提高冰霜抗性的天赋也会以 35% 的比例提高躲避攻击击中几率"] = getSimpleConv({"ColdResist","ElementalResist"}, "AttackDodgeChance", "BASE", false, 0.35), --备注：Passives granting Cold Resistance or all Elemental Resistances in Radius also grant Chance to Dodge Attacks at 35% of its value
	["范围内提高火焰抗性的天赋也会以 35% 的比例提高攻击格挡率"] = getSimpleConv({"FireResist","ElementalResist"}, "BlockChance", "BASE", false, 0.35), --备注：Passives granting Fire Resistance or all Elemental Resistances in Radius also grant Chance to Block at 35% of its value
	["范围内的近战和近战武器加成转换成弓类武器加成"] = function(node, out, data) --备注：Melee and Melee Weapon Type modifiers in Radius are Transformed to Bow Modifiers
		if node then
			local mask1 = bor(ModFlag.Axe, ModFlag.Claw, ModFlag.Dagger, ModFlag.Mace, ModFlag.Staff, ModFlag.Sword, ModFlag.Melee)
			local mask2 = bor(ModFlag.Weapon1H, ModFlag.WeaponMelee)
			local mask3 = bor(ModFlag.Weapon2H, ModFlag.WeaponMelee)
			for _, mod in ipairs(node.modList) do
				if band(mod.flags, mask1) ~= 0 or band(mod.flags, mask2) == mask2 or band(mod.flags, mask3) == mask3 then
					out:MergeNewMod(mod.name, mod.type, -mod.value, mod.source, mod.flags, mod.keywordFlags, unpack(mod))
					out:MergeNewMod(mod.name, mod.type, mod.value, mod.source, bor(band(mod.flags, bnot(bor(mask1, mask2, mask3))), ModFlag.Bow), mod.keywordFlags, unpack(mod))
				elseif mod[1] then
					local using = { UsingAxe = true, UsingClaw = true, UsingDagger = true, UsingMace = true, UsingStaff = true, UsingSword = true, UsingMeleeWeapon = true }
					for _, tag in ipairs(mod) do
						if tag.type == "Condition" and using[tag.var] then
							local newTagList = copyTable(mod)
							for _, tag in ipairs(newTagList) do
								if tag.type == "Condition" and using[tag.var] then
									tag.var = "UsingBow"
									break
								end
							end
							out:MergeNewMod(mod.name, mod.type, -mod.value, mod.source, mod.flags, mod.keywordFlags, unpack(mod))
							out:MergeNewMod(mod.name, mod.type, mod.value, mod.source, mod.flags, mod.keywordFlags, unpack(newTagList))
							break
						end
					end
				end
			end
		end
	end,
	["范围内的非核心天赋技能效果提高 50%"] = function(node, out, data) --备注：50% increased Effect of non-Keystone Passive Skills in Radius
		if node and node.type ~= "Keystone" then
			out:NewMod("PassiveSkillEffect", "INC", 50, data.modSource)
		end
	end,
	["范围内配置的核心天赋技能不会提供任何加成"] = function(node, out, data) --备注：Notable Passive Skills in Radius grant nothing
		if node and node.type == "Notable" then
			out:NewMod("PassiveSkillHasNoEffect", "FLAG", true, data.modSource)
		end
	end,
	["范围内配置的小天赋点技能不会提供任何加成"] = function(node, out, data) --备注：Allocated Small Passive Skills in Radius grant nothing
		if node and node.type == "Normal" then
			out:NewMod("PassiveSkillHasNoEffect", "FLAG", true, data.modSource)
		end
	end,
}

-- Radius jewels that modify the jewel itself based on nearby allocated nodes
local function getPerStat(dst, modType, flags, stat, factor)
	return function(node, out, data)
		if node then
			data[stat] = (data[stat] or 0) + out:Sum("BASE", nil, stat)
		elseif data[stat] ~= 0 then
			out:NewMod(dst, modType, math.floor((data[stat] or 0) * factor + 0.5), data.modSource, flags)
		end
	end
end
local jewelSelfFuncs = {
	["Adds 1 to maximum Life per 3 Intelligence in Radius"] = getPerStat("Life", "BASE", 0, "Int", 1 / 3),
	["范围内每配置 3 点智慧，最大生命提高 1 点"] = getPerStat("Life", "BASE", 0, "Int", 1 / 3), --备注：Adds 1 to Maximum Life per 3 Intelligence Allocated in Radius
	["范围内每配置 3 点敏捷，闪避值提高 1%"] = getPerStat("Evasion", "INC", 0, "Dex", 1 / 3), --备注：1% increased Evasion Rating per 3 Dexterity Allocated in Radius
	["范围内每配置 3 点敏捷，爪类武器物理伤害提高 1%"] = getPerStat("PhysicalDamage", "INC", ModFlag.Claw, "Dex", 1 / 3), --备注：1% increased Claw Physical Damage per 3 Dexterity Allocated in Radius
	["空手攻击时，范围内每分配 3 点敏捷，近战物理伤害提高 1%"] = getPerStat("PhysicalDamage", "INC", ModFlag.Unarmed, "Dex", 1 / 3), --备注：1% increased Melee Physical Damage while Unarmed per 3 Dexterity Allocated in Radius
	["3% increased Totem Life per 10 Strength in Radius"] = getPerStat("TotemLife", "INC", 0, "Str", 3 / 10),
	["范围内每配置 10 点力量，图腾生命提高 3%"] = getPerStat("TotemLife", "INC", 0, "Str", 3 / 10), --备注：3% increased Totem Life per 10 Strength Allocated in Radius
	["范围内每配置 1 点敏捷，攻击附加 1 点最大闪电伤害"] = getPerStat("LightningMax", "BASE", ModFlag.Attack, "Dex", 1), --备注：Adds 1 maximum Lightning Damage to Attacks per 1 Dexterity Allocated in Radius
	["5% increased Chaos damage per 10 Intelligence from Allocated Passives in Radius"] = getPerStat("ChaosDamage", "INC", 0, "Int", 5 / 10),
	["范围内来自天赋的敏捷和智慧转为力量近战伤害加成"] = function(node, out, data) --备注：Dexterity and Intelligence from passives in Radius count towards Strength Melee Damage bonus
		if node then
			data.Dex = (data.Dex or 0) + node.modList:Sum("BASE", nil, "Dex")
			data.Int = (data.Int or 0) + node.modList:Sum("BASE", nil, "Int")
		else
			out:NewMod("DexIntToMeleeBonus", "BASE", data.Dex + data.Int, data.modSource)
		end
	end,
	["范围内每配置 1 点力量，便获得 -1 点力量"] = getPerStat("Str", "BASE", 0, "Str", -1), --备注：-1 Strength per 1 Strength on Allocated Passives in Radius
	["范围内每配置 10 点力量，便获得 1% 额外物理伤害减免"] = getPerStat("PhysicalDamageReduction", "BASE", 0, "Str", 1 / 10), --备注：1% additional Physical Damage Reduction per 10 Strength on Allocated Passives in Radius
	["范围内每配置 1 点智慧，便获得 -1 点智慧"] = getPerStat("Int", "BASE", 0, "Int", -1), --备注：-1 Intelligence per 1 Intelligence on Allocated Passives in Radius
	["范围内每配置 10 点智慧，则每秒回复 0.4% 能量护盾"] = getPerStat("EnergyShieldRegenPercent", "BASE", 0, "Int", 0.4 / 10), --备注：0.4% of Energy Shield Regenerated per Second for every 10 Intelligence on Allocated Passives in Radius
	["范围内每配置 1 点敏捷，便获得 -1 点敏捷"] = getPerStat("Dex", "BASE", 0, "Dex", -1), --备注：-1 Dexterity per 1 Dexterity on Allocated Passives in Radius
	["范围内每配置 10 点敏捷，移动速度提高 2%"] = getPerStat("MovementSpeed", "INC", 0, "Dex", 2 / 10), --备注：2% increased Movement Speed per 10 Dexterity on Allocated Passives in Radius
}
local jewelSelfUnallocFuncs = {
	["范围内若未配置力量，则每 10 点 +5% 攻击和法术暴击伤害加成"] = getPerStat("CritMultiplier", "BASE", 0, "Str", 5 / 10), --备注：+5% to Critical Strike Multiplier per 10 Strength on Unallocated Passives in Radius
	["范围内若未配置敏捷，则每 10 点 +15 最大魔力"] = getPerStat("Mana", "BASE", 0, "Dex", 15 / 10), --备注：+15 to maximum Mana per 10 Dexterity on Unallocated Passives in Radius
	["范围内若未配置智慧，则每 10 点 +100 最大命中值"] = getPerStat("Accuracy", "BASE", 0, "Int", 100 / 10), --备注：+100 to Accuracy Rating per 10 Intelligence on Unallocated Passives in Radius
	["范围内未配置的小天赋点技能会提供任何加成"] = function(node, out, data) --备注：Grants all bonuses of Unallocated Small Passive Skills in Radius
		if node then
			if node.type == "Normal" then
				data.modList = data.modList or common.New("ModList")
				data.modList:AddList(node.modList)
			end
		elseif data.modList then
			out:AddList(data.modList)
		end
	end,
}

-- Radius jewels with bonuses conditional upon attributes of nearby nodes
local function getThreshold(attrib, name, modType, value, ...)
	local baseMod = mod(name, modType, value, "", ...)
	return function(node, out, data)
		if node then
			if type(attrib) == "table" then
				for _, att in ipairs(attrib) do
					local nodeVal = out:Sum("BASE", nil, att)
					data[att] = (data[att] or 0) + nodeVal
					data.total = (data.total or 0) + nodeVal
				end
			else
				local nodeVal = out:Sum("BASE", nil, attrib)
				data[attrib] = (data[attrib] or 0) + nodeVal
				data.total = (data.total or 0) + nodeVal
			end
		elseif (data.total or 0) >= 40 then
			local mod = copyTable(baseMod)
			mod.source = data.modSource
			if type(value) == "table" and value.mod then
				value.mod.source = data.modSource
			end
			out:AddMod(mod)
		end
	end
end
local jewelThresholdFuncs = {
	["若范围内含有 40 点敏捷，【冰霜之刃】造成的近战伤害穿透 15% 冰霜抗性"] = getThreshold("Dex", "ColdPenetration", "BASE", 15, ModFlag.Melee, { type = "SkillName", skillName = "冰霜之刃" }), --备注：With at least 40 Dexterity in Radius, Frost Blades Melee Damage Penetrates 15% Cold Resistance
	["若范围内含有 40 点敏捷，【冰霜之刃】造成的近战伤害穿透 15% 冰霜抗性"] = getThreshold("Dex", "ColdPenetration", "BASE", 15, ModFlag.Melee, { type = "SkillName", skillName = "冰霜之刃" }), --备注：With at least 40 Dexterity in Radius, Melee Damage dealt by Frost Blades Penetrates 15% Cold Resistance
	["若范围内含有 40 点敏捷，\\n【冰霜之刃】的投射物速度提高 25%"] = getThreshold("Dex", "ProjectileSpeed", "INC", 25, { type = "SkillName", skillName = "冰霜之刃" }), --备注：With at least 40 Dexterity in Radius, Frost Blades has 25% increased Projectile Speed
	["若范围配置了 40 点敏捷，【冰霜射击】的范围扩大 25%"] = getThreshold("Dex", "AreaOfEffect", "INC", 25, { type = "SkillName", skillName = "冰霜射击" }), --备注：With at least 40 Dexterity in Radius, Ice Shot has 25% increased Area of Effect
	["若范围配置了 40 点敏捷，【冰霜射击】会穿透 5 个额外目标"] = getThreshold("Dex", "PierceCount", "BASE", 5, { type = "SkillName", skillName = "冰霜射击" }), --备注：Ice Shot Pierces 5 additional Targets with 40 Dexterity in Radius
	["若范围配置了 40 点敏捷，【冰霜射击】会穿透 3 个额外目标"] = getThreshold("Dex", "PierceCount", "BASE", 3, { type = "SkillName", skillName = "冰霜射击" }), --备注：With at least 40 Dexterity in Radius, Ice Shot Pierces 3 additional Targets
	["若范围配置了 40 点敏捷，【冰霜射击】会穿透 5 个额外目标"] = getThreshold("Dex", "PierceCount", "BASE", 5, { type = "SkillName", skillName = "冰霜射击" }), --备注：With at least 40 Dexterity in Radius, Ice Shot Pierces 5 additional Targets
	["若范围内含有 40 点智慧，【寒冰弹】会额外发射 2 个投射物"] = getThreshold("Int", "ProjectileCount", "BASE", 2, { type = "SkillName", skillName = "寒冰弹" }), --备注：With at least 40 Intelligence in Radius, Frostbolt fires 2 additional Projectiles
	["若范围内含有 40 点智慧，【熔岩之核】会额外发射 1 个投射物"] = getThreshold("Int", "ProjectileCount", "BASE", 1, { type = "SkillName", skillName = "熔岩之核" }), --备注：With at least 40 Intelligence in Radius, Magma Orb fires an additional Projectile
	["若范围内含有 40 点智慧，【熔岩之核】每次连锁弹射的范围扩大 10%"] = getThreshold("Int", "AreaOfEffect", "INC", 10, { type = "SkillName", skillName = "熔岩之核" }, { type = "PerStat", stat = "Chain" }), --备注：With at least 40 Intelligence in Radius, Magma Orb has 10% increased Area of Effect per Chain
	["若范围内含有 40 点敏捷，\\n则【流星射击】的范围效果扩大 25%"] = getThreshold("Dex", "AreaOfEffect", "INC", 25, { type = "SkillName", skillName = "流星射击" }), --备注：With at least 40 Dexterity in Radius, Shrapnel Shot has 25% increased Area of Effect
	["若范围内含有 40 点敏捷，【流星射击】的锥形范围内有 50% 几率造成双倍伤害"] = getThreshold("Dex", "DoubleDamageChance", "BASE", 50, { type = "SkillName", skillName = "流星射击" }, { type = "SkillPart", skillPart = 2 }), --备注：With at least 40 Dexterity in Radius, Shrapnel Shot's cone has a 50% chance to deal Double Damage
	["若范围内含有 40 点智慧，则【冰霜脉冲】额外发射 2 个投射物"] = getThreshold("Int", "ProjectileCount", "BASE", 2, { type = "SkillName", skillName = "冰霜脉冲" }), --备注：With at least 40 Intelligence in Radius, Freezing Pulse fires 2 additional Projectiles
	["当范围内含有至少 40 点智慧时，近期内你若粉碎被冰冻的敌人，则【冰霜脉冲】伤害提高 25%"] = getThreshold("Int", "Damage", "INC", 25, { type = "SkillName", skillName = "冰霜脉冲" }, { type = "Condition", var = "ShatteredEnemyRecently" }), --备注：With at least 40 Intelligence in Radius, 25% increased Freezing Pulse Damage if you've Shattered an Enemy Recently
	["若范围内含有 40 点敏捷，\\n则【虚空匕首】会额外发射 10 个投射物"] = getThreshold("Dex", "ProjectileCount", "BASE", 10, { type = "SkillName", skillName = "虚空匕首" }), --备注：With at least 40 Dexterity in Radius, Ethereal Knives fires 10 additional Projectiles
	["若范围内含有 40 点敏捷，\\n则【虚空匕首】会额外发射 5 个投射物"] = getThreshold("Dex", "ProjectileCount", "BASE", 5, { type = "SkillName", skillName = "虚空匕首" }), --备注：With at least 40 Dexterity in Radius, Ethereal Knives fires 5 additional Projectiles
	["若范围内含有 40 点力量，【熔岩之击】会额外发射 2 个投射物"] = getThreshold("Str", "ProjectileCount", "BASE", 2, { type = "SkillName", skillName = "熔岩之击" }), --备注：With at least 40 Strength in Radius, Molten Strike fires 2 additional Projectiles
	["若范围内含有 40 点力量，【熔岩之击】的范围扩大 25%"] = getThreshold("Str", "AreaOfEffect", "INC", 25, { type = "SkillName", skillName = "熔岩之击" }), --备注：With at least 40 Strength in Radius, Molten Strike has 25% increased Area of Effect
	["若范围内含有 40 点力量，则【冰霜之锤】25% 的物理伤害会转化为冰霜伤害"] = getThreshold("Str", "SkillPhysicalDamageConvertToCold", "BASE", 25, { type = "SkillName", skillName = "冰霜之锤" }), --备注：With at least 40 Strength in Radius, 25% of Glacial Hammer Physical Damage converted to Cold Damage
	["若范围内含有 40 点力量，【重击】有 20% 几率造成双倍伤害"] = getThreshold("Str", "DoubleDamageChance", "BASE", 20, { type = "SkillName", skillName = "重击" }), --备注：With at least 40 Strength in Radius, Heavy Strike has a 20% chance to deal Double Damage
	["若范围内含有 40 点力量，【重击】有 20% 几率造成双倍伤害"] = getThreshold("Str", "DoubleDamageChance", "BASE", 20, { type = "SkillName", skillName = "重击" }), --备注：With at least 40 Strength in Radius, Heavy Strike has a 20% chance to deal Double Damage.
	["若范围内含有 40 点敏捷，双持打击时主手武器有 20% 几率造成双倍伤害"] = getThreshold("Dex", "DoubleDamageChance", "BASE", 20, { type = "SkillName", skillName = "双持打击" }, { type = "Condition", var = "MainHandAttack" }), --备注：With at least 40 Dexterity in Radius, Dual Strike has a 20% chance to deal Double Damage with the Main-Hand Weapon
	["若范围内含有 40 点智慧，【魔卫复苏】的重击攻击会使冷却回复速度提高 100%"] = getThreshold("Int", "MinionModifier", "LIST", { mod = mod("CooldownRecovery", "INC", 100, { type = "SkillId", skillId = "ZombieSlam" }) }), --备注：With at least 40 Intelligence in Radius, Raised Zombies' Slam Attack has 100% increased Cooldown Recovery Speed
	["若范围内含有 40 点智慧，【魔卫复苏】的重击攻击伤害提高 30%"] = getThreshold("Int", "MinionModifier", "LIST", { mod = mod("Damage", "INC", 30, { type = "SkillId", skillId = "ZombieSlam" }) }), --备注：With at least 40 Intelligence in Radius, Raised Zombies' Slam Attack deals 30% increased Damage
	["若范围内有 40 点敏捷，敌人身上的每层中毒会使【毒蛇打击】的攻击伤害提高 2%"] = getThreshold("Dex", "Damage", "INC", 2, ModFlag.Attack, { type = "SkillName", skillName = "毒蛇打击" }, { type = "Multiplier", actor = "enemy", var = "PoisonStack" }), --备注：With at least 40 Dexterity in Radius, Viper Strike deals 2% increased Attack Damage for each Poison on the Enemy
	["若范围内有 40 点敏捷，敌人身上的每层中毒会使【毒蛇打击】的击中和中毒伤害提高 2%"] = getThreshold("Dex", "Damage", "INC", 2, 0, bor(KeywordFlag.Hit, KeywordFlag.Poison), { type = "SkillName", skillName = "毒蛇打击" }, { type = "Multiplier", actor = "enemy", var = "PoisonStack" }), --备注：With at least 40 Dexterity in Radius, Viper Strike deals 2% increased Damage with Hits and Poison for each Poison on the Enemy
	["若范围内含有 40 点智慧，【电球】会发射 2 个额外投射物"] = getThreshold("Int", "ProjectileCount", "BASE", 2, { type = "SkillName", skillName = "电球" }), --备注：With at least 40 Intelligence in Radius, Spark fires 2 additional Projectiles
	["若范围内含有 40 点智慧，【枯萎】的干扰持续时间延长 50%"] = getThreshold("Int", "SecondaryDuration", "INC", 50, { type = "SkillName", skillName = "枯萎" }), --备注：With at least 40 Intelligence in Radius, Blight has 50% increased Hinder Duration
	["若范围内含有 40 点智慧，被【枯萎】干扰的敌人受到的混沌伤害提高 25%"] = getThreshold("Int", "ExtraSkillMod", "LIST", { mod = mod("ChaosDamageTaken", "INC", 25, { type = "GlobalEffect", effectType = "Debuff" }) }, { type = "SkillName", skillName = "枯萎" }, { type = "ActorCondition", actor = "enemy", var = "Hindered" }), --备注：With at least 40 Intelligence in Radius, Enemies Hindered by Blight take 25% increased Chaos Damage
	["若范围内含有 40 点智慧，【冰川之刺】物理伤害的 20%\\n转化为冰霜伤害"] = getThreshold("Int", "SkillPhysicalDamageConvertToCold", "BASE", 20, { type = "SkillName", skillName = "冰川之刺" }), --备注：With 40 Intelligence in Radius, 20% of Glacial Cascade Physical Damage Converted to Cold Damage
	["若范围内含有 40 点智慧，【冰川之刺】物理伤害的 20% 转化为冰霜伤害"] = getThreshold("Int", "SkillPhysicalDamageConvertToCold", "BASE", 20, { type = "SkillName", skillName = "冰川之刺" }), --备注：With at least 40 Intelligence in Radius, 20% of Glacial Cascade Physical Damage Converted to Cold Damage
	["范围内含的智慧和敏捷总计 40 点时，【元素打击】的火焰伤害降低 50%"] = getThreshold({"Int","Dex"}, "FireDamage", "MORE", -50, { type = "SkillName", skillName = "元素打击" }), --备注：With 40 total Intelligence and Dexterity in Radius, Elemental Hit deals 50% less Fire Damage
	["范围内含的力量和智慧总计 40 点时，【元素打击】的冰冷伤害降低 50%"] = getThreshold({"Str","Int"}, "ColdDamage", "MORE", -50, { type = "SkillName", skillName = "元素打击" }), --备注：With 40 total Strength and Intelligence in Radius, Elemental Hit deals 50% less Cold Damage
	["范围内含的敏捷和力量总计 40 点时，【元素打击】的闪电伤害降低 50%"] = getThreshold({"Dex","Str"}, "LightningDamage", "MORE", -50, { type = "SkillName", skillName = "元素打击" }), --备注：With 40 total Dexterity and Strength in Radius, Elemental Hit deals 50% less Lightning Damage
}

-- Unified list of jewel functions
local jewelFuncList = { }
for k, v in pairs(jewelOtherFuncs) do
	jewelFuncList[k:lower()] = { func = v, type = "Other" }
end
for k, v in pairs(jewelSelfFuncs) do
	jewelFuncList[k:lower()] = { func = v, type = "Self" }
end
for k, v in pairs(jewelSelfUnallocFuncs) do
	jewelFuncList[k:lower()] = { func = v, type = "SelfUnalloc" }
end
for k, v in pairs(jewelThresholdFuncs) do
	jewelFuncList[k:lower()] = { func = v, type = "Threshold" }
end

-- Scan a line for the earliest and longest match from the pattern list
-- If a match is found, returns the corresponding value from the pattern list, plus the remainder of the line and a table of captures
local function scan(line, patternList, plain)
	local bestIndex, bestEndIndex
	local bestPattern = ""
	local bestVal, bestStart, bestEnd, bestCaps
	local lineLower = line:lower()
	for pattern, patternVal in pairs(patternList) do
		local index, endIndex, cap1, cap2, cap3, cap4, cap5 = lineLower:find(pattern, 1, plain)
		if index and (not bestIndex or index < bestIndex or (index == bestIndex and (endIndex > bestEndIndex or (endIndex == bestEndIndex and #pattern > #bestPattern)))) then
			bestIndex = index
			bestEndIndex = endIndex
			bestPattern = pattern
			bestVal = patternVal
			bestStart = index
			bestEnd = endIndex
			bestCaps = { cap1, cap2, cap3, cap4, cap5 }
		end
	end
	if bestVal then
		return bestVal, line:sub(1, bestStart - 1) .. line:sub(bestEnd + 1, -1), bestCaps
	else
		return nil, line
	end
end

local function parseMod(line, order)
	-- Check if this is a special modifier
	local lineLower = line:lower()
	local jewelFunc = jewelFuncList[lineLower]
	if jewelFunc then
		return { mod("JewelFunc", "LIST", jewelFunc) }
	end
	if unsupportedModList[lineLower] then
		return { }, line
	end
	local specialMod, specialLine, cap = scan(line, specialModList)
	if specialMod and #specialLine == 0 then
		if type(specialMod) == "function" then
			return specialMod(tonumber(cap[1]), unpack(cap))
		else
			return copyTable(specialMod)
		end
	end

	line = line .. " "

	-- Check for a flag/tag specification at the start of the line
	local preFlag
	preFlag, line = scan(line, preFlagList)

	-- Check for skill name at the start of the line
	local skillTag
	skillTag, line = scan(line, preSkillNameList)

	-- Scan for modifier form
	local modForm, formCap
	modForm, line, formCap = scan(line, formList)
	if not modForm then
		return nil, line
	end
	local num = tonumber(formCap[1])

	-- Check for tags (per-charge, conditionals)
	local modTag, modTag2, tagCap
	modTag, line, tagCap = scan(line, modTagList)
	if type(modTag) == "function" then
		modTag = modTag(tonumber(tagCap[1]), unpack(tagCap))
	end
	if modTag then
		modTag2, line, tagCap = scan(line, modTagList)
		if type(modTag2) == "function" then
			modTag2 = modTag2(tonumber(tagCap[1]), unpack(tagCap))
		end
	end
	
	-- Scan for modifier name and skill name
	local modName
	if order == 2 and not skillTag then
		skillTag, line = scan(line, skillNameList, true)
	end
	if modForm == "PEN" then
		modName, line = scan(line, penTypes, true)
		if not modName then
			return { }, line
		end
		local _
		_, line = scan(line, modNameList, true)
	else
		modName, line = scan(line, modNameList, true)
	end
	if order == 1 and not skillTag then
		skillTag, line = scan(line, skillNameList, true)
	end
	
	-- Scan for flags
	local modFlag
	modFlag, line = scan(line, modFlagList, true)

	-- Find modifier value and type according to form
	local modValue = num
	local modType = "BASE"
	local modSuffix
	if modForm == "INC" then
		modType = "INC"
	elseif modForm == "RED" then
		modValue = -num
		modType = "INC"
	elseif modForm == "MORE" then
		modType = "MORE"
	elseif modForm == "LESS" then
		if num == nill then
			--launch:ShowErrMsg2(spline) 
		else
			modValue = -num
			modType = "MORE"
		end
	elseif modForm == "BASE" then
		modSuffix, line = scan(line, suffixTypes, true)
	elseif modForm == "CHANCE" then
	elseif modForm == "REGENPERCENT" then
		modName = regenTypes[formCap[2]]
		modSuffix = "Percent"
	elseif modForm == "REGENFLAT" then
		modName = regenTypes[formCap[2]]
	elseif modForm == "DEGEN" then
		local damageType = dmgTypes[formCap[2]]
		if not damageType then
			return { }, line
		end
		modName = damageType .. "Degen"
		modSuffix = ""
	elseif modForm == "DMG" then
		local damageType = dmgTypes[formCap[3]]
		if not damageType then
			return { }, line
		end
		modValue = { tonumber(formCap[1]), tonumber(formCap[2]) }
		modName = { damageType.."Min", damageType.."Max" }
	elseif modForm == "DMGATTACKS" then
		local damageType = dmgTypes[formCap[3]]
		if not damageType then
			return { }, line
		end
		modValue = { tonumber(formCap[1]), tonumber(formCap[2]) }
		modName = { damageType.."Min", damageType.."Max" }
		modFlag = modFlag or { keywordFlags = KeywordFlag.Attack }
	elseif modForm == "DMGSPELLS" then
		local damageType = dmgTypes[formCap[3]]
		if not damageType then
			return { }, line
		end
		modValue = { tonumber(formCap[1]), tonumber(formCap[2]) }
		modName = { damageType.."Min", damageType.."Max" }
		modFlag = modFlag or { keywordFlags = KeywordFlag.Spell }
	elseif modForm == "DMGBOTH" then
		local damageType = dmgTypes[formCap[3]]
		if not damageType then
			return { }, line
		end
		modValue = { tonumber(formCap[1]), tonumber(formCap[2]) }
		modName = { damageType.."Min", damageType.."Max" }
		modFlag = modFlag or { keywordFlags = bor(KeywordFlag.Attack, KeywordFlag.Spell) }
	end
	if not modName then
		return { }, line
	end

	-- Combine flags and tags
	local flags = 0
	local keywordFlags = 0
	local tagList = { }
	local misc = { }
	for _, data in pairs({ modName, preFlag, modFlag, modTag, modTag2, skillTag }) do
		if type(data) == "table" then
			flags = bor(flags, data.flags or 0)
			keywordFlags = bor(keywordFlags, data.keywordFlags or 0)
			if data.tag then
				t_insert(tagList, copyTable(data.tag))
			elseif data.tagList then
				for _, tag in ipairs(data.tagList) do
					t_insert(tagList, copyTable(tag))
				end
			end
			for k, v in pairs(data) do
				misc[k] = v
			end
		end
	end

	-- Generate modifier list
	local nameList = modName
	local modList = { }
	for i, name in ipairs(type(nameList) == "table" and nameList or { nameList }) do
		modList[i] = {
			name = name .. (modSuffix or misc.modSuffix or ""),
			type = modType,
			value = type(modValue) == "table" and modValue[i] or modValue,
			flags = flags,
			keywordFlags = keywordFlags,
			unpack(tagList)
		}
	end
	if modList[1] then
		-- Special handling for various modifier types
		if misc.addToAura then
			-- Modifiers that add effects to your auras
			for i, effectMod in ipairs(modList) do
				modList[i] = mod("ExtraAuraEffect", "LIST", { mod = effectMod })
			end
		elseif misc.newAura then
			-- Modifiers that add extra auras
			for i, effectMod in ipairs(modList) do
				local tagList = { }
				for i, tag in ipairs(effectMod) do
					tagList[i] = tag
					effectMod[i] = nil
				end
				modList[i] = mod("ExtraAura", "LIST", { mod = effectMod, onlyAllies = misc.newAuraOnlyAllies }, unpack(tagList))
			end
		elseif misc.affectedByAura then
			-- Modifiers that apply to actors affected by your auras
			for i, effectMod in ipairs(modList) do
				modList[i] = mod("AffectedByAuraMod", "LIST", { mod = effectMod })
			end
		elseif misc.addToMinion then
			-- Minion modifiers
			for i, effectMod in ipairs(modList) do
				modList[i] = mod("MinionModifier", "LIST", { mod = effectMod }, misc.addToMinionTag)
			end
		elseif misc.addToSkill then
			-- Skill enchants or socketed gem modifiers that add additional effects
			for i, effectMod in ipairs(modList) do
				modList[i] = mod("ExtraSkillMod", "LIST", { mod = effectMod }, misc.addToSkill)
			end
		end
	end
	return modList, line:match("%S") and line
end

local cache = { }
local unsupported = { }
local count = 0
--local foo = io.open("../unsupported.txt", "w")
--foo:close()
return function(line, isComb)
	if not cache[line] then
		local modList, extra = parseMod(line, 1)
		if modList and extra then
			modList, extra = parseMod(line, 2)
		end
		cache[line] = { modList, extra }
		if foo and not isComb and not cache[line][1] then
			local form = line:gsub("[%+%-]?%d+%.?%d*","{num}")
			if not unsupported[form] then
				unsupported[form] = true
				count = count + 1
				foo = io.open("../unsupported.txt", "a+")
				foo:write(count, ': ', form, (cache[line][2] and #cache[line][2] < #line and ('    {' .. cache[line][2]).. '}') or "", '\n')
				foo:close()
			end
		end
	end
	return unpack(copyTable(cache[line]))
end, cache
