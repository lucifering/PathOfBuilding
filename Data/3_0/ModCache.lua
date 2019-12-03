local c=...c["你的奉献技能会同时影响你"]={{[1]={[1]={skillNameList={[1]="骸骨奉献",[2]="血肉奉献",[3]="灵魂奉献",[4]="血脉奉献"},type="SkillName"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="buffNotPlayer",value=false}}}}},nil}
c["受到【怨毒光环】影响时，生命和能量护盾回复率提高 20%"]={{[1]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=20},[2]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=20}},nil}
c["技能魔力消耗降低 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-50}},nil}
c["被击中时有 30% 几率获得耐力球 获得耐力球时有 25% 几率转而以提升你的耐力球上限 近期内你若被击中，则每秒获得 1 个耐力球 +1 耐力球数量上限"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=262144,name="EnduranceChargesMax",type="BASE",value=30}},"被时获得耐力球 获得耐力球时有 25% 几率转而以提升你的耐力球上限 每秒获得 1 个耐力球 +1  "}c["该装备的能量护盾提高 350%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=350}},nil}
c["闪避值提高 24%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=24}},nil}
c["生命偷取总回复上限提高 5%"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="INC",value=5}},nil}
c["近战击中时有 10% 几率获得护体效果 受到你嘲讽的敌人所承受的伤害提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人 你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=256,keywordFlags=0,name="DamageTaken",type="BASE",value=10}}}},"击中时获得护体效果 受到你嘲讽的敌人所提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人 移动速度提高 8% "}c["近期内你若被击中过，则每有 1 个耐力球，就会每秒受到 400 火焰伤害"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},[2]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="FireDegen",type="BASE",value=400}},nil}
c["击败敌人会回复自身 1% 最大魔力"]={nil,"击败敌人会回复自身 1% 最大魔力 "}c["若全部装备塑界者物品，则击中无视敌方怪物的混沌抗性"]={{[1]={[1]={threshold=0,type="MultiplierThreshold",upper=true,var="NonShaperItem"},flags=0,keywordFlags=0,name="IgnoreChaosResistances",type="FLAG",value=true}},nil}
c["当你的怒火至少有 25 点时，免疫晕眩"]={{[1]={[1]={threshold=25,type="MultiplierThreshold",var="Rage"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["法术伤害提高 140%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=140}},nil}
c["3% 几率避免元素异常状态"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=3},[2]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=3},[3]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=3},[4]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=3}},nil}
c["你与周围队友共享能量球 周围至少有 5 个友军时，你和周围友军获得【猛攻】状态"]={nil,"你与周围队友共享能量球 周围至少有 5 个友军时，你和【猛攻】状态 "}c["能量护盾从生命护盾变成魔力护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldProtectsMana",type="FLAG",value=true}},nil}
c["冰冻的敌人物品稀有度提高 40% 攻击技能的冰霜伤害提高 40%"]={{[1]={flags=0,keywordFlags=65536,name="EnemyFreezeChance",type="INC",value=40}},"的敌人物品稀有度 冰霜伤害提高 40% "}c["当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结"]={nil,"当你身旁有召唤的寒冰时，你无法被冰缓或冻结 "}c["魔力回复速度提高 43%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=43}},nil}
c["+55 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=55}},nil}
c["从盾牌获取的防御提高 60%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="Defences",type="INC",value=60}},nil}
c["每个耐力球可使范围效果扩大 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["火焰、冰霜、闪电伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=8}},nil}
c["你和队友的伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=15}}}},nil}
c["击中满血敌人时，将使他们永久受到威吓"]={nil,"击中满血敌人时，将使他们永久受到威吓 "}c["命中值提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["护甲提高 100%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=100}},nil}
c["每个【召唤纯净哨兵】的范围效果扩大 10% 召唤的哨兵会使用【圣战猛击】 召唤生物命中值提高 100% 召唤生物在击中时威吓敌人 4 秒"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=262144,name="AreaOfEffect",type="INC",value=10}}}},"每个【召唤纯净哨兵】的 召唤的哨兵会使用【圣战猛击】 命中值提高 100% 召唤生物在时威吓敌人 4 秒 "}c["攻击和法术暴击率提高 35%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=35}},nil}
c["每个暴击球使你的【灵巧】效果提高 9%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="ElusiveEffectOnSelf",type="INC",value=9}},nil}
c["火焰抗性 75%"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="OVERRIDE",value=75}},nil}
c["近战物理伤害提高 26%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=26}},nil}
c["使用魔力药剂时也会回复 10% 最大生命 药剂的非即时生效类魔力回复也会同时回复生命"]={nil,"使用魔力药剂时也会回复 10% 最大生命 药剂的非即时生效类魔力回复也会同时回复生命 "}c["击败敌人时有 10% 几率获得 1 个随机能量球"]={{},"击败敌人时获得 1 个随机能量球 "}c["每秒回复 1% 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=1}},nil}
c["持盾牌时造成的攻击伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["近战物理伤害提高 14%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["格挡攻击时反射 44 物理伤害 格挡时，用 5 级的【脆弱】诅咒敌人"]={nil,"格挡攻击时反射 44 物理伤害 格挡时，用 5 级的【脆弱】诅咒敌人 "}c["法杖攻击的攻击速度提高 8%"]={{[1]={flags=8388609,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["使用药剂时移除流血状态"]={nil,"使用药剂时移除流血状态 "}c["近期内你若打出过暴击，则攻击附加 20 - 30 物理伤害"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=1,keywordFlags=0,name="PhysicalMin",type="BASE",value=20},[2]={[1]={type="Condition",var="CritRecently"},flags=1,keywordFlags=0,name="PhysicalMax",type="BASE",value=30}},nil}
c["你幻化的武器将额外复制 1 把"]={{},"你幻化的将"}c["护体时近战伤害提高 30%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=256,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["剑类攻击的命中值提高 15%"]={{[1]={flags=4194304,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["投射物会穿透 2 个额外目标"]={{[1]={flags=0,keywordFlags=0,name="PierceCount",type="BASE",value=2}},nil}
c["暴击时获得一个疾电球 +20 最大疾电球数量上限"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="BlitzChargesMax",type="BASE",value=20}},"获得一个疾电球   "}c["护甲提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=6}},nil}
c["法术伤害提高 80%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=80}},nil}
c["双持时，施法速度提高 2%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=16,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["无视诅咒数量上限，当格挡近战攻击时施放 15 级【惩戒】 无视诅咒数量上限，当格挡投射物攻击时施放 15 级【时空锁链】"]={nil,"无视诅咒数量上限，当格挡近战攻击时施放 15 级【惩戒】 无视诅咒数量上限，当格挡投射物攻击时施放 15 级【时空锁链】 "}c["弓类技能的持续伤害效果提高 30%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=30}},nil}
c["该装备的能量护盾提高 280%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=280}},nil}
c["With at least 40 Intelligence in Radius, Cold Snap has a 25% chance to grant a Power Charge on Kill {variant:2}With at least 40 Intelligence in Radius, Cold Snap has a 50% chance to grant a Power Charge on Kill"]={nil,"With at least 40 Intelligence in Radius, Cold Snap has a 25% chance to grant a Power Charge on Kill {variant:2}With at least 40 Intelligence in Radius, Cold Snap has a 50% chance to grant a Power Charge on Kill "}c["近期内你若使用了召唤生物技能，则召唤生物伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={type="Condition",var="UsedMinionSkillRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}}}},nil}
c["暴击时触发 12 级的【雷霆万钧】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=12,skillId="LightningSpell"}}},nil}
c["伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["伤害提高 14%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["持续伤害效果提高 8%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["每 10 点敏捷提高 +1 最大生命"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="Life",type="BASE",value=1}},nil}
c["Projectile Damage increased by 50% of Arrow Pierce Chance {variant:2}箭矢对其穿透的目标所造成的击中伤害和异常状态伤害提高 50%"]={{[1]={[1]={stat="PierceCount",threshold=1,type="StatThreshold"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=50}},"Projectile Damage increased by 50% of Arrow Pierce Chance {variant:2} "}c["追忆词缀"]={{[1]={flags=0,keywordFlags=0,name="Multiplier:SynthesisedItem",type="BASE",value=1}},nil}
c["召唤【德瑞的塑像】时可以触发插槽内的诅咒技能 插槽内的诅咒技能无视诅咒限制"]={nil,"召唤【德瑞的塑像】时可以触发插槽内的诅咒技能 插槽内的诅咒技能无视诅咒限制 "}c["血量低于 20% 的敌人被你的技能击中时，会直接被终结 击败稀有或者传奇敌人时，攻击速度提高 10%，持续 20秒"]={{[1]={flags=1,keywordFlags=262144,name="Speed",type="BASE",value=20}},"血量低于 敌人被你的技能时，会直接被终结 击败稀有或者传奇敌人时，提高 10%，持续 20秒 "}c["持盾牌时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=24}},nil}
c["从生命偷取中获得的每秒总恢复量提高 25%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=25}},nil}
c["近期内你若穿刺过敌人，你和周围友军获得护甲 +1000"]={{[1]={[1]={type="Condition",var="ImpaledRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Armour",type="BASE",value=1000}}}},nil}
c["当幻化守卫击败一个敌人时，触发 20 级的【幻化守卫武器】"]={nil,"当幻化守卫击败一个敌人时，触发 20 级的【幻化守卫武器】 "}c["若范围内含有 40 点智慧，在受到你或友军的【激励战吼】期间，受到伤害的 10% 会在 4 秒内回复为魔力"]={nil,"若范围内含有 40 点智慧，在受到你或友军的【激励战吼】期间，受到伤害的 10% 会在 4 秒内回复为魔力 "}c["所有插槽都是白色的"]={nil,"所有插槽都是白色的 "}c["法术附加 400 - 600 基础物理伤害"]={{[1]={flags=0,keywordFlags=131072,name="PhysicalMin",type="BASE",value=400},[2]={flags=0,keywordFlags=131072,name="PhysicalMax",type="BASE",value=600}},nil}
c["爪类攻击的物理伤害提高 24%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["攻击与法术暴击率提高 10%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=10}},nil}
c["+8 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=8}},nil}
c["你在拥有最大数量的狂怒球时，得到【迷踪】状态"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Condition:Phasing",type="FLAG",value=true}},nil}
c["燃烧蹄印"]={nil,"燃烧蹄印 "}c["持盾牌时攻击伤害格挡几率 +2%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=2}},nil}
c["每 200 点命中值可使攻击暴击率提高 2%"]={{[1]={[1]={div=200,stat="Accuracy",type="PerStat"},flags=1,keywordFlags=0,name="CritChance",type="INC",value=2}},nil}
c["攻击伤害提高 10%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["该装备的闪避与能量护盾提高 400%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=400}},nil}
c["格挡时有 25% 几率制造奉献地面 {variant:2}格挡时有 50% 几率制造奉献地面"]={{},"格挡时制造奉献地面 {variant:2}格挡时有 50% 几率制造奉献地面 "}c["最大生命提高 4%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=4}},nil}
c["格挡攻击时反射 1 - 1000 物理伤害 {variant:2,3}你反射给怪物的 10% 伤害会变为回复生命"]={nil,"格挡攻击时反射 1 - 1000 物理伤害 {variant:2,3}你反射给怪物的 10% 伤害会变为回复生命 "}c["你的攻击击中每个敌人会回复 +10 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=10}},nil}
c["你的移动速度变为基础值的 150%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="OVERRIDE",value=1.5}},nil}
c["此武器攻击击中被点燃敌人时附加 100 - 200 基础物理伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="PhysicalMin",type="BASE",value=100},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="PhysicalMax",type="BASE",value=200}},nil}
c["插上 1 个蓝色技能石时获得 +100% 闪电抗性 所有插槽都是白色的"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=100}},"插上 1 个蓝色技能石时  所有插槽都是白色的 "}c["获得 1 级的主动技能【冰风暴】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,skillId="IcestormUniqueStaff12"}}},nil}
c["持法杖时，攻击类技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingWand"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["每个你召唤出的魔像可使魔像伤害提高 20% 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个你召唤出的可使魔像 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 "}c["攻击击中时有 15% 几率穿刺敌人"]={{[1]={flags=0,keywordFlags=0,name="ImpaleChance",type="BASE",value=15}},nil}
c["长杖攻击的攻击速度提高 4%"]={{[1]={flags=2097153,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["受到【清晰】影响时，你使用技能时有 15% 几率回复 10% 最大魔力 {variant:10}受到【清晰】影响时，非持续吟唱技能的总魔力消耗 -5"]={{[1]={[1]={skillType=58,type="SkillType"},[2]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=15}},"你使用技能时回复 10%  {variant:10}受到【清晰】影响时，非总魔力消耗 -5 "}c["若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 5 个魔侍法师 {variant:3}若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 15 个魔侍法师"]={nil,"若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 5 个魔侍法师 {variant:3}若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 15 个魔侍法师 "}c["双持攻击时武器的物理伤害提高 18%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=18}},nil}
c["+100 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=100},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=100},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=100}},nil}
c["+23 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=23}},nil}
c["技能效果持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=10}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 12% {variant:1}物理伤害提高 100%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},"攻击的 {variant:1}物理伤害提高 100% "}c["法术伤害提高 19%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=19}},nil}
c["+10% 地雷暴击伤害加成"]={{[1]={flags=0,keywordFlags=8192,name="CritMultiplier",type="BASE",value=10}},nil}
c["每秒魔力偷取提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ManaLeechRate",type="INC",value=30}},nil}
c["护体时护甲和闪避值 +1000"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="ArmourAndEvasion",type="BASE",value=1000}},nil}
c["+15% 陷阱暴击伤害加成"]={{[1]={flags=0,keywordFlags=4096,name="CritMultiplier",type="BASE",value=15}},nil}
c["持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=15}},nil}
c["照亮范围的扩大和缩小也同样作用于命中值"]={{[1]={flags=0,keywordFlags=0,name="LightRadiusAppliesToAccuracy",type="FLAG",value=true}},nil}
c["你在专注时，冰缓周围敌人，使其行动速度降低 30% 专注的冷却回复速度提高 25%"]={{[1]={[1]={type="Condition",var="Focused"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=-30}},"你在冰缓周围敌人，使其行动速度 专注的提高 25% "}c["暴击时有 10% 几率获得暴击球 非暴击时有 20% 几率获得 1 个暴击球"]={{},"获得暴击球 非有 20% 几率获得 1 个暴击球 "}c["攻击速度提高 12%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["药剂每 3 秒获得 3 次使用机会 有 20% 几率使用药剂时不消耗充能"]={{},"药剂每 3 秒获得 3 次使用机会 不消耗充能 "}c["受【奋锐光环】影响时，暴击穿透敌人 10% 的元素抗性"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="AffectedBy奋锐光环"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=10}},nil}
c["终结 生命回满时不会取消生命偷取效果"]={nil,"终结 生命回满时不会取消生命偷取效果 "}c["锤类和短杖攻击的伤害提高 8%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["不会被致盲"]={nil,"不会被致盲 "}c["中毒持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=10}},nil}
c["诅咒持续时间延长 15%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=15}},nil}
c["法术伤害提高 20%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["低魔时受到的法术伤害提高 25%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=25}},"低魔时受到的 "}c["击败敌人时有 30% 几率额外获得 1 个瓦尔灵魂 已腐化"]={{},"击败敌人时额外获得 1 个灵魂 已腐化 "}c["技能效果持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=30}},nil}
c["+10% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=10}},nil}
c["使用该武器时，敌人晕眩门槛降低 20%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-20}},nil}
c["击败敌人时回复 2% 最大生命"]={nil,"击败敌人时回复 2% 最大生命 "}c["近期内你若有击败敌人，则攻击伤害的 2% 转化为偷取生命和魔力"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=2}},nil}
c["异能魔力"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="异能魔力"}},nil}
c["钢铁意志"]={nil,"钢铁意志 "}c["【猛攻】状态下攻击伤害提高 20%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=1,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["持爪时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["+50 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=50}},nil}
c["受到【怨毒光环】影响时，技能持续时间提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="Duration",type="INC",value=30}},nil}
c["受到【元素净化】影响时，承受的反射元素伤害减低 50% {variant:45}受到【元素净化】影响时，+50% 混沌抗性"]={{[1]={[1]={type="Condition",var="AffectedBy元素净化"},flags=0,keywordFlags=0,name="ElementalDamage",type="BASE",value=50}},"承受的反射减低 50% {variant:45}受到【元素净化】影响时， 混沌抗性 "}c["暴击时获得【不洁之力】 2 秒"]={nil,"暴击时获得【不洁之力】 2 秒 "}c["【猛攻】的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=20}},"【猛攻】的 "}c["法术伤害提高 40%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["法术暴击率提高 25%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["你身上的护体效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FortifyEffectOnSelf",type="INC",value=10}},nil}
c["若范围内含有 40 点力量，【裂地之击】的角度扩大 35% {variant:3}若范围内含有 40 点力量，【裂地之击】的角度扩大 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=35}},"若内含有 40 点，【裂地之击】的角度 {variant:3}若范围内含有 40 点力量，【裂地之击】的角度扩大 50% "}c["闪电技能击中有 20% 几率造成中毒"]={{[1]={flags=0,keywordFlags=64,name="PoisonChance",type="BASE",value=20}},nil}
c["移动速度提高 2%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=2}},nil}
c["物理伤害提高 13%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=13}},nil}
c["先祖魂约"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="先祖魂约"}},nil}
c["光环技能范围提高 30%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=30}},nil}
c["受到【优雅】影响时，有 50% 几率使击中你的敌人致盲"]={{},"使你的敌人致盲 "}c["每 10 点奉献可使范围伤害提高 4%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=512,keywordFlags=0,name="Damage",type="INC",value=4}},nil}
c["长杖攻击暴击时击退敌人"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=2097152,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=100}},nil}
c["你所施放诅咒的效果降低 33%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=-33}},nil}
c["对流血敌人造成的攻击伤害的 1% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["该装备的能量护盾提高 60%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=60}},nil}
c["最大生命降低 10%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=-10}},nil}
c["周围盟友在你死亡时，会回复等同你最大生命 2% 的生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=2}},"周围盟友在你死亡时，会回复等同你 生命 "}c["对敌人施加的非伤害性异常状态效果的伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=20},[2]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=20},[3]={flags=0,keywordFlags=0,name="EnemyFreezeEffech",type="INC",value=20}},nil}
c["过去 10 秒内你若成功格挡传奇怪物，则物理伤害提高 80%"]={{[1]={[1]={type="Condition",var="BlockedHitFromUniqueEnemyInPast10Sec"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=80}},nil}
c["被点燃时免疫冰冻和冰缓 近期内你若有过格挡，则伤害穿透 15% 火焰抗性"]={{[1]={[1]={type="Condition",var="Ignited"},[2]={type="Condition",var="BlockedRecently"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=15}},"免疫和冰缓 伤害  "}c["持锤时，攻击技能造成的异常状态伤害提高 22%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=22}},nil}
c["被击中时，有 10% 的伤害优先由你的幽魂承受"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=10}},"被时，有 优先由你的幽魂承受 "}c["从偷取获取的每秒能量护盾回复提高 30%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldLeechRate",type="INC",value=30}},nil}
c["+45 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=45}},nil}
c["不会受到暴击所造成的额外暴击伤害"]={nil,"不会受到暴击所造成的额外暴击伤害 "}c["最大生命提高 25%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=25}},nil}
c["周围友军伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=30},onlyAllies=true}}},nil}
c["有 2 个插槽"]={{[1]={flags=0,keywordFlags=0,name="SocketCount",type="BASE",value=2}},nil}
c["药剂持续期间，获得额外混沌伤害，其数值等同于 15% 火焰、冰霜、闪电伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=15}},nil}
c["你的混沌伤害有 60% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="ChaosPoisonChance",type="BASE",value=60}},nil}
c["该装备的攻击暴击率提高 90%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=90}},nil}
c["技能石可以无视此物品上的插槽颜色"]={nil,"技能石可以无视此物品上的插槽颜色 "}c["对被冰冻敌人的击中伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Frozen"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=40}},nil}
c["此物品上的技能石魔力消耗降低 50%"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-50}}}},nil}
c["溢出伤害的 20% 转为生命偷取"]={nil,"溢出伤害的 20% 转为生命偷取 "}c["你中毒时也会被冰缓"]={nil,"你中毒时也会被冰缓 "}c["受到【闪电净化】影响时，承受的反射闪电伤害降低 50% {variant:61}受到【活力】影响时，伤害的 1.5% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="AffectedBy闪电净化"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=-50}},"承受的反射 {variant:61}受到【活力】影响时，伤害的 1.5% 转化为生命偷取 "}c["周围的友军和敌人跟你共享能量球 击中你的敌人有 10% 的几率获得一个耐力球，狂怒球或暴击球"]={{},"周围的友军和敌人跟你共享能量球 你的敌人有 几率获得一个耐力球，狂怒球或暴击球 "}c["图腾放置速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=15}},nil}
c["5% 几率使敌人受到冰冻，感电与点燃"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=5},[3]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=5}},nil}
c["受到【奋锐光环】影响时，施法速度提高 15%"]={{[1]={[1]={type="Condition",var="AffectedBy奋锐光环"},flags=16,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["拥有魔像时，伤害提高 20% 魔像提供的增益效果提高 30% 魔像生命提高 15% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"拥有时， 魔像提供的增益效果提高 30% 魔像生命提高 15% +1 魔像数量上限 "}c["药剂消退时回复 100% 最大生命"]={nil,"药剂消退时回复 100% 最大生命 "}c["插槽内的的技能石被 20 级的 猛毒 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportDebilitate"}}},nil}
c["闪避值提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=18}},nil}
c["你击中造成的感电，必定会使对方所承受伤害提高至少 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="BASE",value=20}},nil}
c["受到【冰霜净化】影响时，不受【冻伤】影响"]={nil,"受到【冰霜净化】影响时，不受【冻伤】影响 "}c["物品掉落数量提高 5%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=5}},nil}
c["装备时施放 7 级的【艾贝拉斯之怒】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=7,skillId="RepeatingShockwave"}}},nil}
c["陷阱伤害提高 10%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=10}},nil}
c["当你没有能量护盾时，护甲提高 100%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=100}},"当你没有时，护甲 "}c["双持攻击时武器的伤害提高 12%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["物理伤害提高 190%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=190}},nil}
c["反射 30 混沌伤害给近战攻击者 照亮范围缩小 25%"]={{[1]={flags=256,keywordFlags=0,name="ChaosDamage",type="INC",value=-25}},"反射 30 给者 照亮范围 "}c["爪类攻击的暴击率提高 50%"]={{[1]={flags=262144,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["受到【闪电净化】影响时，不受感电地面影响"]={nil,"受到【闪电净化】影响时，不受感电地面影响 "}c["近期内你若有击败敌人，则法术暴击率提高 150%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=2,keywordFlags=0,name="CritChance",type="INC",value=150}},nil}
c["每有 1 个图腾，你和你的图腾每秒便回复 1% 生命"]={nil,"每有 1 个图腾，你和你的图腾每秒便回复 1% 生命 "}c["斧类攻击的物理伤害提高 16%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["暴击后获得 2 秒的【猛攻】状态"]={nil,"暴击后获得 2 秒的【猛攻】状态 "}c["物品掉落数量提高 10%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=10}},nil}
c["长杖攻击的命中值提高 6%"]={{[1]={flags=2097152,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["范围内天赋点附加的闪电抗性同时提高击败敌人时获得暴击球的概率"]={nil,"范围内天赋点附加的闪电抗性同时提高击败敌人时获得暴击球的概率 "}c["剑类攻击的物理伤害提高 22%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=22}},nil}
c["对冰冻敌人造成伤害的 1% 转化为魔力偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Frozen"},flags=0,keywordFlags=0,name="DamageManaLeech",type="BASE",value=1}},nil}
c["当你获得【猛攻】状态时状态时无法被冰缓"]={nil,"当你获得【猛攻】状态时状态时无法被冰缓 "}c["诅咒范围扩大 40%"]={{[1]={flags=0,keywordFlags=2,name="AreaOfEffect",type="INC",value=40}},nil}
c["陷阱被敌人触发时，有 30% 几率获得 4 秒暗影迷踪"]={{},"被敌人触发时，获得 4 秒暗影迷踪 "}c["4% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=4}},nil}
c["最大能量护盾为 0"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="OVERRIDE",value=0}},nil}
c["获得冈姆麾下 18000 名武士的领导权"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC冈姆",type="FLAG",value=true}},nil}
c["图腾的生命提高 15%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=15}},nil}
c["图腾施放的技能暴击率提高 15%"]={{[1]={flags=0,keywordFlags=16384,name="CritChance",type="INC",value=15}},nil}
c["你的晕眩门槛将基于魔力的 500%，而非生命"]={nil,"你的晕眩门槛将基于魔力的 500%，而非生命 "}c["受到【怨毒光环】影响时，不受【烈毒】影响 {variant:76}受到【怨毒光环】影响时，不受【流血】影响"]={nil,"受到【怨毒光环】影响时，不受【烈毒】影响 {variant:76}受到【怨毒光环】影响时，不受【流血】影响 "}c["受到的暴击伤害降低 20%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-20}},"受到的暴击 "}c["法术伤害提高 160%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=160}},nil}
c["图腾施放的技能暴击率提高 25%"]={{[1]={flags=0,keywordFlags=16384,name="CritChance",type="INC",value=25}},nil}
c["15% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=15}},nil}
c["火焰、冰霜、闪电伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},nil}
c["敌人被晕眩时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=100}},nil}
c["药剂持续期间，免疫冰冻、冰缓、诅咒和晕眩"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidFreeze",type="BASE",value=100},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidChill",type="BASE",value=100},[3]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidCurse",type="BASE",value=100},[4]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["法术格挡率翻倍"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="MORE",value=100}},nil}
c["此物品上装备的【光环技能石】等级 +5"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="aura",value=5}}},nil}
c["能量护盾回复速度提高 18%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=18}},nil}
c["如果敏捷高于智慧，则 +40% 暴击伤害加成"]={{[1]={[1]={type="Condition",var="DexHigherThanInt"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=40}},nil}
c["+50% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=50}},nil}
c["你的近战伤害晕眩敌人时有 20% 几率获得护体 当你拥有护体时获得【猛攻】状态"]={{[1]={[1]={type="Condition",var="Fortify"},flags=256,keywordFlags=0,name="Damage",type="BASE",value=20}},"你的晕眩敌人时获得护体 获得【猛攻】状态 "}c["药剂持续期间获得【狂热誓言】"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ZealotsOath",type="FLAG",value=true}},nil}
c["反击附加 250 - 300 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=250},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=300}},"反击 "}c["能量护盾启动回复比平常快 80%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=80}},nil}
c["被你至少覆盖 1 层蜘蛛网的敌人伤害降低 10% 受你至少 1 层蜘蛛网影响的敌人，所有抗性 -10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-10}},"被你至少覆盖 1 层蜘蛛网的敌人 受你至少 1 层蜘蛛网影响的敌人，所有抗性 -10% "}c["施法速度提高 20%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["受到【火焰净化】影响时，不受【易燃】影响"]={nil,"受到【火焰净化】影响时，不受【易燃】影响 "}c["周围友军击中时恐惧敌人，持续 4 秒 周围友军击中时威吓敌人，持续 4 秒"]={nil,"周围友军击中时恐惧敌人，持续 4 秒 周围友军击中时威吓敌人，持续 4 秒 "}c["攻击附加 35 - 90 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=35},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=90}},nil}
c["以此种方式触发的奉献技能也会影响你"]={nil,"以此种方式触发的奉献技能也会影响你 "}c["对致盲的敌人的击中和异常状态伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=40}},nil}
c["+12% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=12}},nil}
c["受到【坚定】影响时，获得额外 8% 物理伤害减免"]={{[1]={[1]={type="Condition",var="AffectedBy坚定"},flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=8}},nil}
c["【尊严】的光环效果提高 53%"]={{[1]={[1]={skillName="尊严",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=53}},nil}
c["每个暴击球可使法杖攻击伤害提高 10%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=8388608,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["范围伤害提高 50%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["敌人被点燃的持续时间延长 33%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=33}},nil}
c["施法速度提高 18%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=18}},nil}
c["投射物伤害提高 40%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["决斗者：攻击伤害的 1% 会转化为生命偷取"]={{[1]={[1]={type="Condition",var="ConnectedTo决斗者Start"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["5% 几率使用冰霜伤害击中时冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=5}},nil}
c["不再获得生命回复效果。"]={{[1]={flags=0,keywordFlags=0,name="NoLifeRegen",type="FLAG",value=true}},nil}
c["闪避值提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=50}},nil}
c["暴击时有 50% 几率获得 1 充能 药剂持续期间，移动速度提高 30%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="MovementSpeed",type="BASE",value=50}},"获得 1 充能 提高 30% "}c["持长杖时，暴击率提高 60%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["持盾牌时攻击速度提高 3%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["火焰伤害提高 28%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=28}},nil}
c["每个暴击球 +10% 暴击伤害加成"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=10}},nil}
c["格挡回复提高 30%"]={{[1]={flags=0,keywordFlags=0,name="BlockRecovery",type="INC",value=30}},nil}
c["药剂持续期间，获得的充能数提高 50% 药剂持续期间，魔力回复提高 50%"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=50}},"的充能数 提高 50% "}c["箭矢会穿透 1 个额外目标"]={{[1]={flags=1,keywordFlags=0,name="PierceCount",type="BASE",value=1}},nil}
c["召唤生物总生命额外提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="MORE",value=20}}}},nil}
c["混沌伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=12}},nil}
c["烙印技能暴击率提高 50%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒"]={nil,"击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 "}c["获得耐力球时有 25% 几率转而以提升你的耐力球上限 近期内你若被击中，则每秒获得 1 个耐力球 +1 耐力球数量上限"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="EnduranceChargesMax",type="BASE",value=25}},"获得耐力球时转而以提升你的耐力球上限 每秒获得 1 个耐力球 +1  "}c["召唤生物的伤害提高 35%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=35}}}},nil}
c["周围友军的范围效果扩大 30%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=30},onlyAllies=true}}},nil}
c["赞美 10000 名被高阶圣堂武僧威纳留斯转化的新信徒"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC威纳留斯",type="FLAG",value=true}},nil}
c["对被干扰敌人的伤害提高 80%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Hindered"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=80}},nil}
c["周围敌人被诅咒的效果提高 18%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=18}}}},nil}
c["闪电伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=8}},nil}
c["持近战武器时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingMeleeWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["分裂后的箭矢攻击暴击率提高 100% {variant:3}分裂后的箭矢攻击暴击率提高 200%"]={{[1]={flags=1,keywordFlags=0,name="CritChance",type="INC",value=100}},"分裂后的箭矢 {variant:3}分裂后的箭矢暴击率提高 200% "}c["+38% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=38}},nil}
c["使用时扣除最大能量护盾的 20% 使用时承受最大生命 10% 的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=10}},"使用时扣除的 20% 使用时承受最大生命 混沌伤害 "}c["晕眩敌人时有 15% 几率获得 1 个狂怒球"]={{},"晕眩敌人时获得 1 个狂怒球 "}c["近期内你若使用过战吼，则移动速度提高 15%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["火焰技能的施法速度提高 5%"]={{[1]={flags=16,keywordFlags=16,name="Speed",type="INC",value=5}},nil}
c["放置地雷或投掷陷阱类技能的魔力消耗降低 25%"]={{[1]={flags=0,keywordFlags=8192,name="ManaCost",type="INC",value=-25}},"放置或投掷陷阱类 "}c["近战伤害提高 10%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["击中敌人后有 25% 几率使其致盲"]={{},"敌人后使其致盲 "}c["地雷持续时间延长 40%"]={{[1]={flags=0,keywordFlags=0,name="MineDuration",type="INC",value=40}},nil}
c["陷阱触发范围扩大 60%"]={{[1]={flags=0,keywordFlags=0,name="TrapTriggerAreaOfEffect",type="INC",value=60}},nil}
c["流血状态下移动不再承受额外的伤害 投射物的伤害随着飞行距离提升，击中目标时最多提高 50%"]={{},"状态下移动不再承受"}c["闪避值提高 25%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=25}},nil}
c["获得等同 35% 物理攻击伤害的火焰伤害"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=35}},nil}
c["获得等同 15% 物理攻击伤害的闪电伤害"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=15}},nil}
c["近期内你若被击中但没有受到伤害，则伤害提高 40%"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["敏捷提高 5%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=5}},nil}
c["周围敌人受到的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=10}}}},nil}
c["双持攻击时武器的物理伤害提高 6%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=6}},nil}
c["偷取时攻击速度提高 15%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=1,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["召唤生物获得 +5% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=5}}}},nil}
c["伤害穿透 4% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=4}},nil}
c["你每使敌人受到一种异常状态，它们受到的伤害便提高 5%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Frozen"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}}},[2]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}}},[3]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}}},[4]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}}},[5]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}}},[6]={[1]={actor="enemy",type="ActorCondition",var="Poisoned"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}}}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 22%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=22}},nil}
c["当幻化武器击败一个敌人时，有 10% 几率触发 18 级的【幻化守卫武器】 你无法拥有非幻化类召唤生物"]={{},"当幻化击败一个敌人时，触发 18 级的【幻化守卫武器】 你无法拥有非幻化类 "}c["持法杖时，攻击类技能造成的异常状态伤害提高 40%"]={{[1]={[1]={type="Condition",var="UsingWand"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=40}},nil}
c["在任何满溢圣杯药剂持续期间无法获得药剂充能"]={nil,"在任何满溢圣杯药剂持续期间无法获得药剂充能 "}c["受到【坚定】影响时，承受的反射物理伤害降低 50% {variant:18}受到【坚定】影响时，+1000 点护甲"]={{[1]={[1]={type="Condition",var="AffectedBy坚定"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-50}},"承受的反射 {variant:18}受到【坚定】影响时，+1000 点护甲 "}c["+30% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=30}},nil}
c["攻击技能有 20% 几率获得暴击球"]={{},"获得暴击球 "}c["持斧时，攻击技能造成的异常状态伤害提高 35%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=35}},nil}
c["使用瓦尔技能时，获得【迷踪】状态，持续 10 秒"]={nil,"使用瓦尔技能时，获得【迷踪】状态，持续 10 秒 "}c["+12 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=12}},nil}
c["击中敌人时，用 10 级的【易燃】诅咒敌人"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,noSupports=true,skillId="Flammability"}}},nil}
c["受到【闪电净化】影响时，免疫感电 {variant:57}受到【闪电净化】影响时，受到击中物理伤害的 10% 转换为闪电伤害"]={nil,"受到【闪电净化】影响时，免疫感电 {variant:57}受到【闪电净化】影响时，受到击中物理伤害的 10% 转换为闪电伤害 "}c["使用尊严时有 12% 几率造成双倍伤害"]={{[1]={[1]={type="Condition",var="UsedBy尊严"},flags=0,keywordFlags=0,name="DoubleDamageChance",type="BASE",value=12}},nil}
c["移动速度降低 25%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-25}},nil}
c["你的暴击伤害无法被反射"]={nil,"你的暴击伤害无法被反射 "}c["你被晕眩的时间延长 50% 每 1 个耐力球可使近战伤害提高 4%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=256,keywordFlags=0,name="Damage",type="INC",value=50}},"你被晕眩的时间 提高 4% "}c["该装备的能量护盾提高 190%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=190}},nil}
c["你使敌人感电时，回复 3% 最大魔力"]={nil,"你使敌人感电时，回复 3% 最大魔力 "}c["当你有图腾存在时，攻击和施法速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveTotem"},flags=0,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["获得护体时，攻击伤害提高 30%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=1,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["召唤生物的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=8}}}},nil}
c["无法偷取"]={nil,"无法偷取 "}c["此武器的攻击穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=5}},nil}
c["穿透后的箭矢有 50% 几率造成流血"]={{[1]={[1]={stat="PierceCount",threshold=1,type="StatThreshold"},flags=1025,keywordFlags=0,name="BleedChance",type="BASE",value=50}},nil}
c["对近战攻击的总闪避率额外降低 20% "]={{[1]={flags=0,keywordFlags=0,name="MeleeEvadeChance",type="MORE",value=-20}},nil}
c["保留 30% 生命"]={{[1]={flags=0,keywordFlags=0,name="ExtraLifeReserved",type="BASE",value=30}},nil}
c["火焰伤害的 0.2% 会转化为能量护盾偷取"]={{[1]={flags=0,keywordFlags=0,name="FireDamageEnergyShieldLeech",type="BASE",value=0.2}},nil}
c["当你使用弓箭攻击时触发 5 级的【箭雨】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=5,skillId="RainOfArrows"}}},nil}
c["拥有能量护盾时有 5% 几率闪避攻击击中"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="EvadeChance",type="BASE",value=5}},nil}
c["每 10 点敏捷可使近战物理伤害提高 2%"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=2}},nil}
c["蓝色插槽内的技能石额外获得 25% 经验 穿戴对人物属性无需求"]={{},"蓝色插槽内的技能石"}c["物理伤害提高 70%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=70}},nil}
c["受到防卫技能增益效果影响时，+250 护甲 被击中时，有 10% 几率获得双倍护甲效果"]={{[1]={flags=0,keywordFlags=262144,name="Armour",type="BASE",value=250}},"受到防卫技能增益效果影响时，  被时，有 10% 几率获得双倍护甲效果 "}c["最大生命提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=12}},nil}
c["此物品上的技能石投射物会以环状的方式发射"]={nil,"投射物会以环状的方式发射 "}c["+18% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=18}},nil}
c["药剂持续期间，物品数量提高 18%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=18}},nil}
c["+300 智慧需求"]={{[1]={flags=0,keywordFlags=0,name="IntRequirement",type="BASE",value=300}},nil}
c["能量护盾启动回复比平常快 10%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=10}},nil}
c["持长杖时，法术伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["你获得【肾上腺素】时移除所有异常状态和燃烧状态"]={nil,"你获得【肾上腺素】时移除所有异常状态和燃烧状态 "}c["此物品上装备的【主动技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="active_skill",value=1}}},nil}
c["+30% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["魔像的总生命额外降低 45%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="MORE",value=-45}}}},nil}
c["魔力保留降低 6%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-6}},nil}
c["持锤时，攻击技能造成的异常状态伤害提高 18%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=18}},nil}
c["长杖攻击的物理伤害提高 28%"]={{[1]={flags=2097152,keywordFlags=0,name="PhysicalDamage",type="INC",value=28}},nil}
c["受到【冰霜净化】影响时，免疫冰冻 {variant:52}受到【冰霜净化】影响时，受到击中物理伤害的 10% 转换为冰霜伤害"]={nil,"受到【冰霜净化】影响时，免疫冰冻 {variant:52}受到【冰霜净化】影响时，受到击中物理伤害的 10% 转换为冰霜伤害 "}c["【迷踪】状态时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["持斧时，攻击技能造成的异常状态伤害提高 26%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=26}},nil}
c["耐力球持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=10}},nil}
c["范围效果扩大 8%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=8}},nil}
c["格挡法术伤害的最大几率等同于格挡攻击伤害的最大几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChanceMaxIsBlockChanceMax",type="FLAG",value=true}},nil}
c["药剂持续期间， +50% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=50}},nil}
c["持续吟唱技能的攻击速度提高 4%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["魔侍的持续时间延长 200%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=200}},nil}
c["当你成功格挡攻击伤害时，有 10% 几率获得一个狂怒球"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},"当你成功伤害时，获得一个狂怒球 "}c["闪避值提高 90%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=90}},nil}
c["施法时有 25% 几率免疫晕眩打断 +20 力量和敏捷"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=25}},"施法时免疫晕眩打断 +20  "}c["能量护盾启动回复比平常慢 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=-50}},nil}
c["你偷取生命或魔力时，免疫流血"]={nil,"你偷取生命或魔力时，免疫流血 "}c["每 1 个聚光之石可使火焰、冰霜、闪电伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=5},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["物理伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=25}},nil}
c["【蛛之势】的范围效果扩大 60%"]={{[1]={[1]={skillName="蛛之势",type="SkillName"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=60}},nil}
c["锤类攻击的伤害提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["剑类攻击的伤害提高 14%"]={{[1]={flags=4194304,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["火焰伤害击中时有 20% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=20}},nil}
c["护甲提高 220%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=220}},nil}
c["每个召唤的魔像可使你的伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使你的 "}c["若范围内含有 40 点敏捷，则【燃烧箭矢】有 10% 几率在点燃敌人时产生燃烧地面"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE",value=10}},"若内含有 40 点，则【燃烧箭矢】在点燃敌人时产生燃烧地面 "}c["地雷伤害提高 20%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=20}},nil}
c["闪避值与护甲提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=10}},nil}
c["当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 最多可同时拥有额外 1 个魔像"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE"}}}},"当你召唤出烈焰时，你无法被 当你召唤出闪电魔像时，你无法被感电 最多可同时拥有"}c["被冰冻后，你有 3 秒免疫冰冻"]={nil,"被冰冻后，你有 3 秒免疫冰冻 "}c["技能魔力消耗降低 3%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-3}},nil}
c["从偷取获取的每秒生命回复提高 10%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=10}},nil}
c["击中敌人后有 25% 几率使其致盲 周围敌人被致盲"]={{},"敌人后使其致盲 周围敌人被致盲 "}c["召唤生物获得等同 20% 物理伤害的额外冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=20}}}},nil}
c["魔侍的施法速度提高 9%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=9}}}},nil}
c["当力量超过 400 点时，每秒回复 2% 生命"]={{[1]={[1]={stat="Str",threshold=400,type="StatThreshold"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["+40% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=40}},nil}
c["耐力球持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=50}},nil}
c["+150 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=150}},nil}
c["你每使敌人附着一种烙印，它们受到的伤害便提高 10% 【烙印召回】冷却回复速度提高 30% 烙印的附着范围效果扩大 14%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你每使敌人附着一种烙印，它们 【烙印召回】冷却回复速度提高 30% 附着范围效果扩大 14% "}c["【蛛之势】的减益持续时间提高 50%"]={{[1]={[1]={skillName="蛛之势",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=50}},nil}
c["+30 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=30}},nil}
c["对被点燃敌人的伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=40}},nil}
c["药剂持续期间，移动速度提高 30%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=30}},nil}
c["所有物品上装备的【召唤生物技能石】等级 +2"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keywordList={[1]="active_skill",[2]="minion",[3]=0},value=2}}},nil}
c["该装备的能量护盾提高 160%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=160}},nil}
c["+23% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=23}},nil}
c["附加 1 - 59 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=59}},nil}
c["你流血时也会被冰缓"]={nil,"你流血时也会被冰缓 "}c["无法造成冻结或冰缓"]={{[1]={flags=0,keywordFlags=0,name="CannotFreeze",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="CannotChill",type="FLAG",value=true}},nil}
c["每个暴击球会提供攻击伤害 0.2% 的魔力偷取"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.2}},nil}
c["物理伤害提高 90%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=90}},nil}
c["暴击时有 50% 几率造成流血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=50}},nil}
c["击中时获得神圣球"]={nil,"击中时获得神圣球 "}c["近期内你若有过格挡，+600 护甲"]={{[1]={[1]={type="Condition",var="BlockedRecently"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=600}},nil}
c["获得耐力球时有 25% 几率转而以提升你的耐力球上限"]={{},"获得耐力球时转而以提升你的耐力球上限 "}c["【迷踪】状态时有 6% 几率躲避攻击击中"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=6}},nil}
c["持盾牌击败敌人时有 5% 几率获得耐力球 持盾牌时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},"持盾牌击败敌人时获得耐力球  +4% "}c["此物品上的技能石受到 11 级的 技能陷阱化 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=11,skillId="SupportTrap"}}},nil}
c["附加 3 - 30 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=3},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=30}},nil}
c["附加 6 - 13 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=6},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=13}},nil}
c["附加 5 - 25 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=25}},nil}
c["附加 8 - 19 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=8},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=19}},nil}
c["附加 7 - 15 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=7},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=15}},nil}
c["近期内你若没有被击中，则免疫晕眩"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["持单手武器时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["受到的陷阱与地雷伤害降低 10%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=-10}},"受到的与地雷 "}c["魔像的攻击和施法速度提高 18%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=18}}}},nil}
c["你每使敌人附着一种烙印，它们受到的伤害便提高 10% 【烙印召回】冷却回复速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你每使敌人附着一种烙印，它们 【烙印召回】冷却回复速度提高 30% "}c["持盾牌时攻击伤害格挡几率 +5%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["召唤生物持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Duration",type="INC",value=15}}}},nil}
c["不受感电影响 {variant:1}击败感电敌人时会爆炸，造成等同敌人最大生命 10% 的闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"不受感电影响 {variant:1}击败感电敌人时会爆炸，造成等同敌人 闪电伤害 "}c["长杖攻击的物理伤害提高 30%"]={{[1]={flags=2097152,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["匕首攻击的物理伤害提高 16%"]={{[1]={flags=524288,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["10 每秒魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=10}},nil}
c["受到【纯净之捷】影响时，获得额外 4% 物理伤害减免"]={{[1]={[1]={type="Condition",var="AffectedBy纯净之捷"},flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=4}},nil}
c["击败敌人后有 20% 几率获得 1 个精神球"]={{},"击败敌人后获得 1 个精神球 "}c["目盲不影响你的照亮范围"]={{},nil}
c["低血时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["受到【迅捷】影响时获得【迷踪】状态"]={{[1]={[1]={type="Condition",var="AffectedBy迅捷"},flags=0,keywordFlags=0,name="Condition:Phasing",type="FLAG",value=true}},nil}
c["图腾所使用攻击的攻击速度提高 5%"]={{[1]={flags=1,keywordFlags=16384,name="Speed",type="INC",value=5}},nil}
c["暴击时有 10% 几率获得暴击球 击中时有 40% 几率使目标中毒 近期内你若有击败敌人，则移动速度提高 10% 你的暴击伤害无法被反射"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=262144,name="MovementSpeed",type="BASE",value=10}},"获得暴击球 时有 40% 几率使目标中毒 提高 10% 你的暴击伤害无法被反射 "}c["每秒对周围敌人造成 450 混沌伤害 {variant:1}击败敌人后 10 秒内持续承受 450 混沌伤害"]={nil,"每秒对周围敌人造成 450 混沌伤害 {variant:1}击败敌人后 10 秒内持续承受 450 混沌伤害 "}c["护甲提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=18}},nil}
c["被冰冻后，你有 3 秒免疫冰冻 在被点燃后，你有 3 秒免疫点燃"]={nil,"被冰冻后，你有 3 秒免疫冰冻 在被点燃后，你有 3 秒免疫点燃 "}c["每个插槽内的红色技能石使攻击技能额外获得 5% 的物理伤害的额外火焰伤害 {variant:4}当插槽内全部为红色技能石时，获得【瓦尔冥约】"]={{},"每个插槽内的红色技能石使"}c["近期内你若有击败敌人，则移动速度提高 20%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["物理攻击伤害的 0.2% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.2}},nil}
c["内在信念"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="内在信念"}},nil}
c["+100 点闪避值和能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="BASE",value=100}},nil}
c["持单手武器时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=25}},nil}
c["若你有至少 150 点智慧，则中毒持续时间延长 25%"]={{[1]={[1]={stat="Int",threshold=150,type="StatThreshold"},flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=25}},nil}
c["火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}},nil}
c["物理伤害可以造成冰缓"]={{[1]={flags=0,keywordFlags=0,name="PhysicalCanChill",type="FLAG",value=true}},nil}
c["你暴击造成的中毒总伤害额外提高 30%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=1048576,name="Damage",type="MORE",value=30}},nil}
c["图腾放置速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=20}},nil}
c["每个暴击球使你的【灵巧】效果提高 10%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="ElusiveEffectOnSelf",type="INC",value=10}},nil}
c["闪避值提高 420%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=420}},nil}
c["【憎恨】不保留魔力"]={{[1]={[1]={skillName="憎恨",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["战吼立即施放 战吼的增益效果提高 20%"]={{[1]={flags=0,keywordFlags=4,name="BuffEffect",type="INC",value=20}},"立即施放  "}c["火焰、冰霜、闪电伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},nil}
c["法术暴击率提高 100%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=100}},nil}
c["双手近战武器攻击的物理伤害提高 30%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["装备在主手时全局暴击率提高 70%"]={{[1]={[1]={type="Global"},[2]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=70}},nil}
c["满血时近战伤害提高 60%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=256,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["伤害穿透 1% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=1}},nil}
c["周围友军获得【终结】效果"]={nil,"【终结】效果 "}c["该装备的能量护盾提高 215%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=215}},nil}
c["击败敌人有 5% 几率获得暴击球 每个暴击球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=5}},"击败敌人获得暴击球 提高 5% "}c["25% 机率焦灼敌人 无法造成点燃"]={nil,"25% 机率焦灼敌人 无法造成点燃 "}c["斧类攻击的暴击率提高 20%"]={{[1]={flags=65536,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["图腾的生命提高 50%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=50}},nil}
c["在【精准】影响下造成暴击时，恢复 1 次药剂使用次数"]={nil,"在【精准】影响下造成暴击时，恢复 1 次药剂使用次数 "}c["+13% 所有元素抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=13}},nil}
c["5% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 100%"]={{[1]={flags=0,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=5}},nil}
c["近期内，你或你的召唤生物每击败一个敌人，则每秒回复你 1% 能量护盾，最多 30%"]={{[1]={[1]={limit=30,limitTotal=true,type="Multiplier",varList={[1]="EnemyKilledRecently",[2]="EnemyKilledByMinionsRecently"}},flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=1}},nil}
c["30% 几率避免被冰冻"]={{[1]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=30}},nil}
c["插槽无法被调整 此物品上装备的技能石等级 +1"]={{},"插槽无法被调整 此物品上装备的技能石等级  "}c["攻击和法术附加 9 - 18 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=9},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=18}},nil}
c["该装备的护甲与能量护盾提高 240%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=240}},nil}
c["生命偷取速度上限翻倍。"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="MORE",value=100}},nil}
c["每个图腾每秒使你回复 0.5%  魔力 可以召唤一个图腾的技能改为召唤两个图腾"]={nil,"每个图腾每秒使你回复 0.5%  魔力 可以召唤一个图腾的技能改为召唤两个图腾 "}c["+8% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=8}},nil}
c["你从激活的先祖图腾获得的增益效果提高 50%"]={{},"你从激活的先祖获得的增益效果 "}c["双手近战武器攻击的物理伤害提高 10%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["物理伤害提高 125%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=125}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["斧类攻击的命中值提高 25%"]={{[1]={flags=65536,keywordFlags=0,name="Accuracy",type="INC",value=25}},nil}
c["击中满血的敌人并造成伤害时必造成晕眩"]={nil,"击中满血的敌人并造成伤害时必造成晕眩 "}c["获得耐力球时有 25% 几率转而以提升你的耐力球上限 近期内你若被击中，则每秒获得 1 个耐力球"]={{},"获得耐力球时转而以提升你的耐力球上限 每秒获得 1 个耐力球 "}c["你的【毒力】消退减缓 50% 在药剂生效期间，你造成的中毒效果有 40% 几率伤害提高 100%"]={{[1]={flags=0,keywordFlags=1048576,name="FlaskDuration",type="BASE",value=40}},"你的【毒力】消退减缓 50% 在药剂你造成的效果伤害提高 100% "}c["药剂持续期间，免疫元素异常状态"]={nil,"药剂持续期间，免疫元素异常状态 "}c["剑类攻击的攻击速度提高 6%"]={{[1]={flags=4194305,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["每个你召唤出的魔像可使魔像伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个你召唤出的可使魔像 "}c["斧类攻击的物理伤害提高 15%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["当你在你在天赋树上连接到一个职业的出发位置时，你获得："]={{},nil}
c["暴击时有 15% 几率获得 1 充能 {variant:3}暴击时有 50% 几率获得 1 充能"]={{},"获得 1 充能 {variant:3}有 50% 几率获得 1 充能 "}c["击碎敌人时有 15% 几率制造冰缓地面 当你击碎冰冻的敌人时，制造奉献地面"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=15}},"击碎敌人时制造冰缓地面 当你击碎的敌人时，制造奉献地面 "}c["此物品上的红色技能石额外获得 10% 的物理伤害，并转化为火焰伤害"]={{[1]={[1]={keyword="strength",slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=10}}}},nil}
c["全局伤害提高 275%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Damage",type="INC",value=275}},nil}
c["副手武器击败敌人时，有 25% 几率获得 1 个耐力球"]={{},"击败敌人时，获得 1 个耐力球 "}c["每个暴击球可使法术附加 3 - 9 基础闪电伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=3},[2]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=9}},nil}
c["陷阱伤害提高 40%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=40}},nil}
c["13% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=13}},nil}
c["爪类攻击的命中值提高 20%"]={{[1]={flags=262144,keywordFlags=0,name="Accuracy",type="INC",value=20}},nil}
c["偷取时伤害提高 30%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["攻击与施法速度提高 3%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["施法速度提高 7%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=7}},nil}
c["斧类攻击的物理伤害提高 35%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=35}},nil}
c["每 10 点敏捷可使元素伤害提高 1%"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=1}},nil}
c["【纪律】不保留魔力"]={{[1]={[1]={skillName="纪律",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["你的奉献技能对自身的效果降低 50%"]={{[1]={[1]={skillNameList={[1]="骸骨奉献",[2]="血肉奉献",[3]="灵魂奉献",[4]="血脉奉献"},type="SkillName"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="BuffEffectOnPlayer",type="INC",value=-50}}}},nil}
c["锤类攻击的暴击率提高 25%"]={{[1]={flags=1048576,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["法杖攻击的命中值提高 15%"]={{[1]={flags=8388608,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["弓类攻击造成的晕眩时间延长 30%"]={{[1]={flags=131072,keywordFlags=0,name="EnemyStunDuration",type="INC",value=30}},nil}
c["+28% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=28}},nil}
c["双手近战武器攻击的暴击率提高 20%"]={{[1]={flags=570425344,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["双手近战武器攻击的物理伤害提高 25%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=25}},nil}
c["近期内你若使用过移动技能，则魔力回复速度提高 30%"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=30}},nil}
c["每装备 1 个【裂界之器】，异常状态的伤害便提高 15%"]={{[1]={[1]={type="Multiplier",var="ElderItem"},flags=2048,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["+45 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=45}},nil}
c["击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 你获得【肾上腺素】时移除所有异常状态和燃烧状态"]={nil,"击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 你获得【肾上腺素】时移除所有异常状态和燃烧状态 "}c["敌人解冻后受到冰缓效果"]={nil,"敌人解冻后受到冰缓效果 "}c["药剂持续期间使用技能会获得【终息】，魔力消耗 600%"]={nil,"药剂持续期间使用技能会获得【终息】，魔力消耗 600% "}c["闪电抗性降低 53%"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="INC",value=-53}},nil}
c["25% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 25%"]={{[1]={flags=0,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=6.25}},nil}
c["每有 1 个轮回球，便获得额外混沌伤害，其数值等同于非混沌伤害的 4%"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=4}},nil}
c["击败敌人时获得 4 秒【迷踪】状态"]={nil,"击败敌人时获得 4 秒【迷踪】状态 "}c["5% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=5}},nil}
c["闪避值提高 125%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=125}},nil}
c["+190 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=190}},nil}
c["在召唤魔像后的 8 秒内伤害提高 30% 魔像在召唤后的 8 秒内伤害提高 45%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=30}}}},"在召唤后的 8 秒内 魔像在召唤后的 8 秒内伤害提高 45% "}c["最大魔力提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=8}},nil}
c["此物品上的火焰、冰霜、闪电技能石等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="elemental",value=1}}},nil}
c["奉献技能的持续时间降低 50%"]={{[1]={[1]={skillNameList={[1]="骸骨奉献",[2]="血肉奉献",[3]="灵魂奉献",[4]="血脉奉献"},type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=-50}},nil}
c["获得等同 20% 最大生命的额外最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="LifeGainAsEnergyShield",type="BASE",value=20}},nil}
c["你和友军受你的光环技能影响时，伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="AffectedByAuraMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=30}}}},nil}
c["该装备的能量护盾提高 120%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=120}},nil}
c["若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球"]={nil,"若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球 "}c["使用此武器攻击时，每 10 点力量附加 4 - 7 基础火焰伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=4},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=7}},nil}
c["获得【召唤时空先驱者】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={skillId="SummonHarbingerOfTime"}}},nil}
c["法术附加 35 - 65 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=35},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=65}},nil}
c["物品掉落数量提高 25%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=25}},nil}
c["半径：18 你击中造成的冰缓必定使目标减速 10%"]={nil,"半径：18 你击中造成的冰缓必定使目标减速 10% "}c["怒火的效果变为三倍"]={{[1]={flags=0,keywordFlags=0,name="Multiplier:RageEffect",type="BASE",value=2}},nil}
c["持盾牌时施法速度提高 3%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=16,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["药剂持续期间，能量护盾回复速度提高 400%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=400}},nil}
c["使用时承受最大生命 10% 的混沌伤害 使用时获得 1 个暴击球"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"使用时承受 混沌伤害 使用时获得 1 个暴击球 "}c["【异灵魔侍】的击中无法闪避"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CannotBeEvaded",type="FLAG",value=true}}}},nil}
c["+16 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=16},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=16},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=16}},nil}
c["旅行技能的冷却回复速度提高 65%"]={{[1]={[1]={skillType=91,type="SkillType"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=65}},nil}
c["在真菌地表上被你击败的敌人会爆炸，造成它们 5% 生命的混沌伤害"]={nil,"在真菌地表上被你击败的敌人会爆炸，造成它们 5% 生命的混沌伤害 "}c["你造成流血的敌人若没有冰缓，则受到冰缓"]={nil,"你造成流血的敌人若没有冰缓，则受到冰缓 "}c["每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使你的 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限 "}c["火焰技能 +10% 暴击伤害加成"]={{[1]={flags=0,keywordFlags=16,name="CritMultiplier",type="BASE",value=10}},nil}
c["技能总魔力消耗额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="MORE",value=-50}},nil}
c["+8% 对投射物伤害格挡几率 持盾牌时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1025,keywordFlags=0,name="Damage",type="BASE",value=8}}," 对格挡几率 伤害格挡几率 +4% "}c["+60 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=60}},nil}
c["低血时获得每秒 2% 能量护盾回复 {variant:2}每秒回复 1% 能量护盾"]={{},"获得每秒 2% 回复 {variant:2}"}c["获得额外冰霜伤害， 其数值等同于法杖物理伤害的 10%"]={{[1]={flags=8388608,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=10}},nil}
c["长杖攻击 +15% 暴击伤害加成"]={{[1]={flags=2097152,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["箭矢对其穿透的目标所造成的击中伤害和异常状态伤害提高 50%"]={{[1]={[1]={stat="PierceCount",threshold=1,type="StatThreshold"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=50}},nil}
c["+24 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=24}},nil}
c["+45% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=45}},nil}
c["召唤生物的伤害提高 45%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=45}}}},nil}
c["每装备 1 个被腐化的物品，最大生命提高 6%"]={{[1]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="Life",type="INC",value=6}},nil}
c["攻击技能可使混沌伤害提高 30%"]={{[1]={flags=0,keywordFlags=65536,name="ChaosDamage",type="INC",value=30}},nil}
c["获得暴击球时有 25% 几率获得 1 个耐力球 当你放置图腾时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球"]={{},"获得暴击球时获得 1 个耐力球 当你放置时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 "}c["力量提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=10}},nil}
c["附加 160 - 240 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=160},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=240}},nil}
c["击中和异常状态对流血敌人的伤害提高 50%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=50}},nil}
c["尚未吞噬任何宝石"]={nil,"尚未吞噬任何宝石 "}c["装备的护盾上每有 5 点最大能量护盾，便 +20 闪避值"]={{[1]={[1]={div=5,stat="EnergyShieldOnWeapon 2",type="PerStat"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=20}},nil}
c["全局防御提高 18%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=18}},nil}
c["+1 爪的近战攻击范围"]={{[1]={flags=262144,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1}},nil}
c["你受到的冰缓效果降低 75%"]={{[1]={flags=0,keywordFlags=0,name="SelfChillEffect",type="INC",value=-75}},nil}
c["非旗帜光环不保留魔力"]={nil,"非旗帜光环不保留魔力 "}c["每 10 点奉献使自身受到的元素异常时间缩短 4%"]={{},"自身受到的元素异常时间 "}c["混沌伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=8}},nil}
c["召唤生物有额外 12% 躲避击中几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=12}}}},nil}
c["+20 敏捷与智慧"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=20}},nil}
c["流血状态下移动不再承受额外的伤害"]={nil,"流血状态下移动不再承受额外的伤害 "}c["+300 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=300}},nil}
c["技能的总魔力消耗 +50"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=50}},nil}
c["无法闪避敌人攻击"]={{[1]={flags=0,keywordFlags=0,name="CannotEvade",type="FLAG",value=true}},nil}
c["施放战吼时回复 25% 生命和魔力"]={nil,"施放战吼时回复 25% 生命和魔力 "}c["受到【活力】影响时，生命回复速度提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy活力"},flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=30}},nil}
c["护甲提高 165%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=165}},nil}
c["火焰技能有 20% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=16,name="PoisonChance",type="BASE",value=20}},nil}
c["击退距离延长 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyKnockbackDistance",type="INC",value=25}},nil}
c["暴走状态时创造一团烟雾"]={nil,"暴走状态时创造一团烟雾 "}c["在娜斯玛的阿卡拉中指派 4250 名德卡拉的服务"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC娜斯玛",type="FLAG",value=true}},nil}
c["召唤生物击中时有 15% 几率使敌人致盲"]={{},"时使敌人致盲 "}c["弓类攻击的暴击率提高 50%"]={{[1]={flags=131072,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["+20% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=20}},nil}
c["技能魔力消耗提高 60%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=60}},nil}
c["击败敌人时有 10% 几率获得 4 秒【猛攻】状态"]={{},"击败敌人时获得 4 秒【猛攻】状态 "}c["每级 +1 能量护盾"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=1}},nil}
c["+250 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=250}},nil}
c["敌人被点燃的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=20}},nil}
c["击败普通怪物的物品掉落数量提高 100%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=100}},"击败普通怪物的 "}c["若范围内含有 40 点敏捷，【弹幕】的第一次和最后一次攻击会附加 2 个额外的投射物"]={nil,"若范围内含有 40 点敏捷，【弹幕】的第一次和最后一次攻击会附加 2 个额外的投射物 "}c["低魔时受到的法术伤害提高 100% {variant:2}低魔时受到的法术伤害提高 25%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=100}},"低魔时受到的 {variant:2}低魔时受到的伤害提高 25% "}c["烙印技能伤害提高 20%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["混沌伤害可以造成点燃、冰缓和感电效果"]={{[1]={flags=0,keywordFlags=0,name="ChaosCanIgnite",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="ChaosCanChill",type="FLAG",value=true},[3]={flags=0,keywordFlags=0,name="ChaosCanShock",type="FLAG",value=true}},nil}
c["20% increased Damage against Chilled Enemies {variant:2,3}击中冰缓敌人的伤害提高 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=20}},"20% increased Damage against Chilled Enemies {variant:2,3} "}c["每个生效中的狂怒球给予 1 秒【猛攻】状态 {variant:3}每个生效中的狂怒球给予 2 秒【猛攻】状态"]={nil,"每个生效中的狂怒球给予 1 秒【猛攻】状态 {variant:3}每个生效中的狂怒球给予 2 秒【猛攻】状态 "}c["攻击附加 1 - 34 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=34}},nil}
c["+135 点闪避值和能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="BASE",value=135}},nil}
c["--30% 闪电抗性 {variant:1}暴击率将随绝对闪电抗性而提高"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=-30}},"-  {variant:1}暴击率将随绝对闪电抗性而提高 "}c["你和你的图腾有 20% 几率各获得 1 个耐力球"]={{},"你和你的各获得 1 个耐力球 "}c["光环技能范围效果扩大 30%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=30}},nil}
c["获得 20 级的主动技能【多里亚尼之触】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="TouchOfGod"}}},nil}
c["晕眩回复和格挡回复提高 20%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=20}},nil}
c["陷阱所使用的技能范围扩大 20%"]={{[1]={flags=0,keywordFlags=4096,name="AreaOfEffect",type="INC",value=20}},nil}
c["获得等级 20 的【骨制战甲】技能"]={{},"获得等级 【骨制战甲】技能 "}c["药剂持续期间无法获得魔力 生效期间，瓦尔技能的伤害提高 100%"]={{[1]={flags=0,keywordFlags=256,name="Mana",type="INC",value=100}},"药剂持续期间无法获得 生效期间，的伤害 "}c["魔像每秒回复 2% 最大生命"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}}}},nil}
c["暴击时有 10% 几率获得暴击球 击中时有 40% 几率使目标中毒"]={{},"获得暴击球 时有 40% 几率使目标中毒 "}c["若此武器装备在副手，此武器击中敌人时造成 1 秒的冰缓"]={nil,"若此武器装备在副手，此武器击中敌人时造成 1 秒的冰缓 "}c["近期内你若有使用战吼，你和周围友军的攻击，施法和移动速度提高 20%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=20}}},[2]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}}}},nil}
c["双持攻击的攻击速度提高 6%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=1,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["召唤生物的攻击速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=5}}}},nil}
c["承受攻击造成的物理伤害 (-7--5)"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-7}}," (--5) "}c["每 5 秒触发 20 级的【骸骨奉献】、【血肉奉献】或【灵魂奉献】"]={nil,"每 5 秒触发 20 级的【骸骨奉献】、【血肉奉献】或【灵魂奉献】 "}c["以此种方式触发的奉献技能也会影响你 【未鉴定词缀】"]={nil,"以此种方式触发的奉献技能也会影响你 【未鉴定词缀】 "}c["近战暴击有 25% 几率使敌人中毒 {variant:3}暴击时有 50% 几率造成中毒"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=256,keywordFlags=0,name="PoisonChance",type="BASE",value=25}},"暴击 {variant:3}有 50% 几率造成中毒 "}c["异灵魔侍被击中时让敌人受到【灰烬缠身】 异灵魔侍每秒将其最大生命的 30% 转化为火焰伤害"]={nil,"异灵魔侍被击中时让敌人受到【灰烬缠身】 异灵魔侍每秒将其最大生命的 30% 转化为火焰伤害 "}c["冰霜抗性降低 53%"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="INC",value=-53}},nil}
c["46% 法术格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=46}},nil}
c["5% 几率避免元素异常状态"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=5},[3]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=5},[4]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=5}},nil}
c["近期内你若有击中敌人，移动速度提高 6%"]={{[1]={[1]={type="Condition",var="HitRecently"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=6}},nil}
c["攻击技能的元素伤害提高 26%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=26}},nil}
c["击中稀有或传奇敌人时，有 10% 几率获得 1 点怒火"]={{},"稀有或传奇敌人时，获得 1 点怒火 "}c["近战物理伤害提高 16%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["移动速度提高 12%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=12}},nil}
c["药剂持续期间，有 10% 几率点燃"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=10}},nil}
c["附加 260 - 285 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=260},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=285}},nil}
c["药剂持续期间，法术格挡率提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=20}},nil}
c["附加 265 - 335 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=265},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=335}},nil}
c["此物品上的诅咒技能石受到 20 级的 诅咒光环 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportBlasphemy"}}},nil}
c["+30 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=30}},nil}
c["闪电抗性 75%"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="OVERRIDE",value=75}},nil}
c["受到【纪律】影响时，能量护盾提早 40% 开始恢复"]={{[1]={[1]={type="Condition",var="AffectedBy纪律"},flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=40}},nil}
c["总计消耗 200 点魔力后可以获得 1 个暴击球"]={nil,"总计消耗 200 点魔力后可以获得 1 个暴击球 "}c["持近战武器时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingMeleeWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["每个狂怒球可使击中时有 2% 几率免疫元素伤害 每个狂怒球可使攻击伤害的 0.5% 转化为生命偷取"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},[2]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=262144,name="ElementalDamage",type="BASE",value=2}},"时免疫 攻击伤害的 0.5% 转化为生命偷取 "}c["若过去 8 秒内你打出过暴击，则伤害提高 30%"]={{[1]={[1]={type="Condition",var="CritInPast8Sec"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["火焰伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=25}},nil}
c["持盾牌时有 20% 几率避免晕眩"]={{},"避免晕眩 "}c["烙印的附着范围效果扩大 14%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=14}},"附着 "}c["攻击速度提高 23%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=23}},nil}
c["近期内你每击败 1 个感电敌人，则附加 1-10 基础闪电伤害"]={{[1]={[1]={type="Multiplier",var="ShockedEnemyKilledRecently"},flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={[1]={type="Multiplier",var="ShockedEnemyKilledRecently"},flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=10}},nil}
c["魔像提供的增益效果提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=20}},nil}
c["击中稀有或传奇敌人时，有 10% 几率创造【奉献地面】，持续 8 秒 位于奉献地面之上时，免疫元素异常状态"]={{},"稀有或传奇敌人时，创造【奉献地面】，持续 8 秒 位于奉献地面之上时，免疫元素异常状态 "}c["闪避值将随绝对冰霜抗性提高"]={{[1]={[1]={div=1,stat="ColdResistTotal",type="PerStat"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=1}},nil}
c["圣堂武僧：伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="ConnectedTo圣堂武僧Start"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=5}},nil}
c["获得【女神的祝福】时有 33% 几率致盲周围敌人 获得【女神的祝福】时无法被冰冻，冰缓，或点燃"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=33}},"获得【女神的祝福】时致盲周围敌人 获得【女神的祝福】时无法被，冰缓，或点燃 "}c["+20 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=20}},nil}
c["晕眩回复和格挡回复提高 35%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=35}},nil}
c["近期内你若有击败敌人，则总伤害额外提高 20%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="Damage",type="MORE",value=20}},nil}
c["附加 44 - 82 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=44},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=82}},nil}
c["使用技能时，有 20% 几率回复 10% 魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"使用技能时，回复 10%  "}c["暴击球的持续时间延长 90%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=90}},nil}
c["若范围内含有 40 点智慧，【电球】会以环状向周围发射投射物 【电球】的持续时间缩短 15%"]={{[1]={flags=512,keywordFlags=0,name="Int",type="INC",value=-15}},"若内含有 40 点，【电球】会以环状向周围发射投射物 【电球】的持续时间 "}c["受到【坚定】影响时，不受【脆弱】影响 {variant:17}受到【坚定】影响时，承受的反射物理伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy坚定"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-50}},"不受【脆弱】影响 {variant:17}受到【坚定】影响时，承受的反射 "}c["伤害提高 45%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["物理伤害提高 49%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=49}},nil}
c["此物品上的技能石额外造成 63 - 94 火焰伤害"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=63},[2]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=94}},nil}
c["敌人晕眩门槛降低 18%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-18}},nil}
c["附加 11 - 21 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=11},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=21}},nil}
c["+38 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=38}},nil}
c["弓类攻击暴击时击退敌人"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=131072,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=100}},nil}
c["攻击速度提高 24%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=24}},nil}
c["被击中时有 25% 几率制造一团烟雾 {variant:1}对致盲的敌人的击中和异常状态伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="Damage",type="BASE",value=25}},"被时制造一团烟雾 {variant:1}击中和异常状态提高 40% "}c["攻击击中时，召唤生物有 5% 几率嘲讽敌人"]={{},"击中时，嘲讽敌人 "}c["召唤生物有 +40% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=40}}}},nil}
c["附加 36 - 68 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=36},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=68}},nil}
c["攻击速度提高 30%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=30}},nil}
c["战吼的增益效果提高 10%"]={{[1]={flags=0,keywordFlags=4,name="BuffEffect",type="INC",value=10}},nil}
c["该装备的物理伤害提高 49%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=49}},nil}
c["法杖攻击附加 2 - 40 基础闪电伤害"]={{[1]={flags=8388608,keywordFlags=0,name="LightningMin",type="BASE",value=2},[2]={flags=8388608,keywordFlags=0,name="LightningMax",type="BASE",value=40}},nil}
c["低血时不会被点燃"]={nil,"低血时不会被点燃 "}c["耐力球持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=15}},nil}
c["受到【纪律】影响时，最大能量护盾每秒回复 2.5%"]={{[1]={[1]={type="Condition",var="AffectedBy纪律"},flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=2.5}},nil}
c["攻击附加 4 - 53 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=53}},nil}
c["弓攻击附加 2 - 41 基础闪电伤害"]={{[1]={flags=131072,keywordFlags=0,name="LightningMin",type="BASE",value=2},[2]={flags=131072,keywordFlags=0,name="LightningMax",type="BASE",value=41}},nil}
c["使用时获得 1 个暴击球 使用时获得 1 个狂怒球"]={nil,"使用时获得 1 个暴击球 使用时获得 1 个狂怒球 "}c["法杖攻击的火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=8388608,keywordFlags=0,name="ElementalDamage",type="INC",value=30}},nil}
c["攻击附加 2 - 37 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=2},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=37}},nil}
c["弓攻击附加 4 - 58 基础闪电伤害"]={{[1]={flags=131072,keywordFlags=0,name="LightningMin",type="BASE",value=4},[2]={flags=131072,keywordFlags=0,name="LightningMax",type="BASE",value=58}},nil}
c["拥有 1 个额外的固有词缀 +30 全属性"]={{},"拥有 1 个"}c["攻击附加 3 - 53 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=3},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=53}},nil}
c["提高 135% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=135}},nil}
c["每 10 点敏捷可使近战物理伤害提高 1%"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=1}},nil}
c["近期内你若使用了召唤生物技能，则召唤生物的伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={type="Condition",var="UsedMinionSkillRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}}},nil}
c["伤害提高 23%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=23}},nil}
c["近期内你若使用了召唤生物技能，则召唤生物伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={type="Condition",var="UsedMinionSkillRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}}},nil}
c["拥有魔像时，伤害提高 20% 魔像提供的增益效果提高 30%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"拥有时， 魔像提供的增益效果提高 30% "}c["当你或你的图腾击败了燃烧中的敌人， 你和你的图腾有 20% 几率各获得 1 个耐力球 每个耐力球可使火焰伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=16384,name="FireDamage",type="BASE",value=20}},"当你或你的击败了燃烧中的敌人， 你和你的图腾各获得 1 个耐力球 提高 6% "}c["你流血时也会被冰缓 你造成流血的敌人若没有冰缓，则受到冰缓"]={nil,"你流血时也会被冰缓 你造成流血的敌人若没有冰缓，则受到冰缓 "}c["溢出伤害的 20% 转为生命偷取 偷取时免疫晕眩"]={nil,"溢出伤害的 20% 转为生命偷取 偷取时免疫晕眩 "}c["伤害穿透敌人 10% 的火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=10}},nil}
c["+10% 所有元素抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=10}},nil}
c["当你成功格挡攻击伤害时，有 10% 几率获得一个狂怒球 当你成功格挡法术伤害时，有 10% 几率获得一个暴击球"]={{[1]={flags=2,keywordFlags=0,name="BlockChance",type="BASE",value=10}},"当你成功伤害时，获得一个狂怒球 当你成功格挡伤害时，有 10% 几率获得一个暴击球 "}c["被冰缓时不会被感电 格挡时有 40% 几率使攻击者冰缓 4 秒"]={{},"被冰缓时不会被感电 格挡时使者冰缓 4 秒 "}c["照亮范围扩大 30%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=30}},nil}
c["召唤生物的移动速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=30}}}},nil}
c["攻击附加 5 - 7 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=7}},nil}
c["攻击附加 5 - 8 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=8}},nil}
c["该装备的护甲与闪避提高 225%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=225}},nil}
c["格挡时回复 5% 生命"]={nil,"格挡时回复 5% 生命 "}c["攻击和法术附加 1 - 70 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=70}},nil}
c["每 10 点奉献使烙印技能伤害提高 4%"]={{[1]={[1]={skillType=76,type="SkillType"},[2]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="Damage",type="INC",value=4}},nil}
c["击败敌人有 5% 几率获得耐力球"]={{},"击败敌人获得耐力球 "}c["受到【灰烬之捷】影响时，火焰伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy灰烬之捷"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=60}},nil}
c["46% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=46}},nil}
c["【召唤魔侍】有 +1 秒冷却时间"]={{},"有  秒冷却时间 "}c["+29% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=29}},nil}
c["经验值获取提高 5% {variant:2,3}经验值获取提高 3%"]={{},"经验值获取 {variant:2,3}经验值获取提高 3% "}c["流血总伤害额外提高 15%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="MORE",value=15}},nil}
c["召唤生物击败敌人时有 10% 几率获得 4 秒【猛攻】状态"]={{},"击败敌人时获得 4 秒【猛攻】状态 "}c["+29% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=29}},nil}
c["每秒回复 1.6% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1.6}},nil}
c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 每个狂怒球可使伤害提高 5% 每个暴击球可使伤害提高 5% 吟唱技能时，每秒获得一个暴击或狂怒球"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},[2]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 提高 5% 伤害提高 5% 吟唱技能时，每秒获得一个暴击或狂怒球 "}c["附加 93 - 140 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=93},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=140}},nil}
c["此物品上的技能石受到 18 级的 快速攻击 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportFasterAttack"}}},nil}
c["命中值翻倍"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="MORE",value=100}},nil}
c["+37% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=37}},nil}
c["此物品上的技能石火焰、冰霜、闪电总伤害额外提高 30%"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="MORE",value=30}}}},nil}
c["攻击附加 14 - 26 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=14},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=26}},nil}
c["范围伤害提高 21%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=21}},nil}
c["召唤生物有额外 4% 躲避击中几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=4}}}},nil}
c["施法速度提高 17%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=17}},nil}
c["穿透后的箭矢 +50% 暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},"穿透后的箭矢   "}c["此物品上的技能石受到 18 级的 集中效应 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportConcentratedEffect"}}},nil}
c["此物品上的技能石受到 18 级的 提高燃烧伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportIncreasedBurningDamage"}}},nil}
c["获得额外闪电伤害， 其数值等同于物理伤害的 15%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=15}},nil}
c["获得额外闪电伤害， 其数值等同于物理伤害的 31%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=31}},nil}
c["伤害穿透 6% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=6}},nil}
c["受到的持续性伤害降低 5%"]={{[1]={flags=0,keywordFlags=0,name="DamageTakenOverTime",type="INC",value=-5}},nil}
c["可以拥有多个大师工艺属性 {crafted}此物品上的技能石受到 1 级的 血魔法 辅助"]={nil,"可以拥有多个大师工艺属性 {crafted}此物品上的技能石受到 1 级的 血魔法 辅助 "}c["你每拥有 1 个魔卫，你和你的召唤生物获得 1% 物理伤害减免 你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 【复苏的魔卫】的重击攻击效果范围扩大 100% 【复苏的魔卫】打出重击攻击时，冷却回复速度提高 100% +2 魔卫数量上限"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="INC",value=100}}}},"你每拥有 1 个，你和你的 1%  你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 【复苏的魔卫】的重击攻击效果范围 【复苏的魔卫】打出重击攻击时，冷却回复速度提高 100% +2 魔卫数量上限 "}c["物理攻击伤害的 0.8% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.8}},nil}
c["施法速度提高 23%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=23}},nil}
c["每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="Evasion",type="INC",value=10}},"每 2 秒获得一个鬼影缠身，最大 3 个 被时，丢失一个鬼影缠身，回复 5% 等同于你的能量护盾 移动速度 "}c["投射物伤害提高 50%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["你的混沌伤害可使敌人中毒"]={nil,"你的混沌伤害可使敌人中毒 "}c["受到防卫技能增益效果影响时，+250 护甲 被击中时，有 10% 几率获得双倍护甲效果 受到防卫技能增益效果影响时，每秒回复 0.5% 最大生命"]={{[1]={flags=0,keywordFlags=262144,name="Armour",type="BASE",value=250}},"受到防卫技能增益效果影响时，  被时，有 10% 几率获得双倍护甲效果 受到防卫技能增益效果影响时，每秒回复 0.5% 最大生命 "}c["+25% 持续中毒伤害加成"]={{[1]={flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=25}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 26%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=26}},nil}
c["此物品上装备的【弓技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="bow",value=2}}},nil}
c["最大生命降低 20%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=-20}},nil}
c["每个暴击球每秒回复 2 魔力"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=2}},nil}
c["+140 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=140}},nil}
c["伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["附加 53 - 76 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=53},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=76}},nil}
c["移除魔力，施放所有技能改为消耗生命"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="MORE",value=-100},[2]={flags=0,keywordFlags=0,name="BloodMagic",type="FLAG",value=true}},nil}
c["你承受的流血伤害改为混沌伤害 +25% 几率中毒"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="BASE",value=25}},"你承受的改为混沌伤害 中毒 "}c["附加 175 - 300 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=175},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=300}},nil}
c["每个绿色插槽可为你和周围友军附加 56 - 88 基础冰霜伤害"]={{[1]={[1]={type="Multiplier",var="GreenSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=56}}},[2]={[1]={type="Multiplier",var="GreenSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=88}}}},nil}
c["附加 375 - 550 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=375},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=550}},nil}
c["魔像 +1000 护甲值"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Armour",type="BASE",value=1000}}}},nil}
c["击中未被诅咒目标时，有 20% 几率对其施放任意诅咒 {variant:1}被击中时有 5% 几率制造感电地面"]={{},"未被诅咒目标时，对其施放任意诅咒 {variant:1}被击中时有 5% 几率制造感电地面 "}c["能量护盾启动回复比平常快 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=50}},nil}
c["攻击及法术伤害格挡几率降低 30%"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="INC",value=-30},[2]={flags=0,keywordFlags=0,name="SpellBlockChance",type="INC",value=-30}},nil}
c["近战单手武器攻击的物理伤害提高 20%"]={{[1]={flags=301989888,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["技能魔力消耗降低 4%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-4}},nil}
c["被点燃时免疫冰冻和冰缓"]={nil,"被点燃时免疫冰冻和冰缓 "}c["附加 21 - 34 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=21},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=34}},nil}
c["火焰、冰霜、闪电伤害提高 14%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=14}},nil}
c["你格挡的攻击和法术无法将你晕眩 你的反击造成双倍伤害"]={nil,"你格挡的攻击和法术无法将你晕眩 你的反击造成双倍伤害 "}c["每个耐力球可使敌人被晕眩时间延长 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=5}},nil}
c["你身上的每层中毒状态使你每秒回复 50 能量护盾，最多可有 250 秒"]={{[1]={[1]={limit=250,limitTotal=true,type="Multiplier",var="PoisonStack"},flags=0,keywordFlags=0,name="EnergyShieldRegen",type="BASE",value=50}},nil}
c["中毒时 +3% 全部抗性上限"]={{[1]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=3},[2]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=3},[3]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=3},[4]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=0,name="ChaosResistMax",type="BASE",value=3}},nil}
c["获得等级 20 的【骨制战甲】技能 每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=20}}}},"获得等级 【骨制战甲】技能 每拥有一个，获得 1% ，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% "}c["使用瓦尔技能时，获得【迷踪】状态，持续 3 秒"]={nil,"使用瓦尔技能时，获得【迷踪】状态，持续 3 秒 "}c["药剂回复的魔力提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FlaskManaRecovery",type="INC",value=10}},nil}
c["凡人的信念"]={nil,"凡人的信念 "}c["每个你召唤出的魔像可使魔像伤害提高 20% 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个你召唤出的可使魔像 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 "}c["召唤生物获得额外混沌伤害，其数值等同于元素伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=20}}}},nil}
c["若范围内配置了 4 个关键天赋点，当你击败稀有怪物时，你会获得该怪物的 1 属性 20 秒"]={nil,"若范围内配置了 4 个关键天赋点，当你击败稀有怪物时，你会获得该怪物的 1 属性 20 秒 "}c["该装备的护甲与能量护盾提高 63%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=63}},nil}
c["+200 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=200}},nil}
c["若你至少拥有 500 点智慧，可以放置地雷的技能就会最多额外放置 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Int",type="BASE"}},"若你至少拥有 500 点，可以放置的技能就会最多"}c["中毒伤害提高 15%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=15}},nil}
c["附加 22 - 37 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=22},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=37}},nil}
c["使用移动技能时，承受 200 额外物理伤害 解除护甲或能量护盾"]={{[1]={flags=0,keywordFlags=8,name="PhysicalDamage",type="BASE",value=200}},"使用时，承受  解除护甲或能量护盾 "}c["被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾"]={nil,"被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 "}c["击败敌人时有 5% 几率给予周围敌人不洁之力 击败敌人时有 5% 几率给予周围敌人【猛攻】状态"]={{},"击败敌人时给予周围敌人不洁之力 击败敌人时有 5% 几率给予周围敌人【猛攻】状态 "}c["【脆弱】的魔力保留降低 100%"]={{[1]={[1]={skillName="脆弱",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["在奉献地面上时，每秒回复 200 能量护盾"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="EnergyShieldRegen",type="BASE",value=200}},nil}
c["格挡时回复能量护盾，数值等同于 4% 的护甲"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=4}},"格挡时回复，数值等同于 护甲 "}c["弓类攻击的物理伤害提高 20%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["近期内你若打出过暴击，则攻击速度提高 10%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["中毒伤害提高 20%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=20}},nil}
c["召唤生物的最大生命提高 14%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=14}}}},nil}
c["插槽内魔像技能的增益效果提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},[2]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=25}}}},nil}
c["暴击后的 8 秒内，火焰、冰霜和闪电总伤害额外提高 40%"]={{[1]={[1]={type="Condition",var="CritInPast8Sec"},flags=0,keywordFlags=0,name="ElementalDamage",type="MORE",value=40}},nil}
c["混沌伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=100}},nil}
c["投掷陷阱时移动速度提高 15%，持续 9 秒"]={{[1]={flags=0,keywordFlags=4096,name="MovementSpeed",type="INC",value=15}},"投掷时，持续 9 秒 "}c["将你身上的感电状态反射给周围所有敌人"]={nil,"将你身上的感电状态反射给周围所有敌人 "}c["获得【猛攻】时闪避值提高 40%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=40}},nil}
c["击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 获得【肾上腺素】时回复 25% 生命"]={nil,"击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 获得【肾上腺素】时回复 25% 生命 "}c["击败敌人时有 5% 几率触发 18 级的【召唤幽狼】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="18",skillId="召唤幽狼"}}},nil}
c["双持时，法术伤害提高 8%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["近期内你每吞噬过 1 个灵柩，你和周围队友每秒回复 5% 生命"]={{[1]={[1]={type="Condition",var="ConsumedCorpseRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=5}}}},nil}
c["+10 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=10}},nil}
c["当你失去耐力能量球时触发一个插槽内的战吼"]={nil,"当你失去耐力能量球时触发一个插槽内的战吼 "}c["+350 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=350}},nil}
c["最大耐力球达到上限时失去所有耐力球 当你失去耐力能量球时触发一个插槽内的战吼"]={nil,"最大耐力球达到上限时失去所有耐力球 当你失去耐力能量球时触发一个插槽内的战吼 "}c["物品掉落数量提高 17%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=17}},nil}
c["斧类攻击的物理伤害提高 10%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["获得持续 4 秒的感电汇流"]={{[1]={[1]={type="Condition",var="ShockingConflux"},flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=100},[2]={[1]={type="Condition",var="ShockingConflux"},flags=0,keywordFlags=0,name="PhysicalCanShock",type="FLAG",value=true},[3]={[1]={type="Condition",var="ShockingConflux"},flags=0,keywordFlags=0,name="ColdCanShock",type="FLAG",value=true},[4]={[1]={type="Condition",var="ShockingConflux"},flags=0,keywordFlags=0,name="FireCanShock",type="FLAG",value=true},[5]={[1]={type="Condition",var="ShockingConflux"},flags=0,keywordFlags=0,name="ChaosCanShock",type="FLAG",value=true}},nil}
c["你的物理伤害造成感电"]={{[1]={flags=0,keywordFlags=0,name="PhysicalCanShock",type="FLAG",value=true}},nil}
c["获得 -50% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-50}},nil}
c["8 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=8}},nil}
c["范围内配置的敏捷和力量总计 40 点时，【灵盾投掷】连锁时发射碎片投射物 范围内配置的敏捷和力量总计 40 点时，【灵盾投掷】的碎片投射物数量额外降低 75%"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"内配置的和力量总计 40 点时，【灵盾投掷】连锁时发射碎片投射物 范围内配置的敏捷和力量总计 40 点时，【灵盾投掷】的碎片投射物数量"}c["反射 70 物理伤害给近战攻击者"]={{},nil}
c["受到【憎恨】影响时，伤害穿透 15% 冰霜抗性"]={{[1]={[1]={type="Condition",var="AffectedBy憎恨"},flags=0,keywordFlags=0,name="ColdPenetration",type="BASE",value=15}},nil}
c["该装备的闪避与能量护盾提高 550%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=550}},nil}
c["苦痛共享"]={nil,"苦痛共享 "}c["格挡成功时获得不洁之力，持续3秒 持长杖时攻击伤害格挡几率 +5%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},"格挡成功时获得不洁之力，持续3秒   "}c["中毒伤害提高 40%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=40}},nil}
c["弓类技能的持续伤害效果提高 10%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=10}},nil}
c["击退方向颠倒 此物品上的技能石受到 10 级的 击退 辅助"]={nil,"击退方向颠倒 此物品上的技能石受到 10 级的 击退 辅助 "}c["9 每秒魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=9}},nil}
c["被点燃时，火焰伤害的 2% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="FireDamageLifeLeech",type="BASE",value=2}},nil}
c["陷阱伤害提高 23%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=23}},nil}
c["范围内力量和智慧总计 40 点时，【元素打击】和【狂野打击】无法选择冰霜元素"]={nil,"范围内力量和智慧总计 40 点时，【元素打击】和【狂野打击】无法选择冰霜元素 "}c["+27% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=27}},nil}
c["处于【灵巧】状态时，承受的伤害降低 8%"]={{[1]={[1]={type="Condition",var="Elusive"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-8}},nil}
c["获得 20 级的【捕熊陷阱】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillName="捕熊陷阱",type="SkillName"}}},nil}
c["投掷陷阱时，有 25% 的几率获得 1 个暴击球 {variant:1,2,3}获得 20 级的【捕熊陷阱】"]={{},"投掷时，有 几率获得 1 个暴击球 {variant:1,2,3}获得 20 级的【捕熊陷阱】 "}c["投掷陷阱时，有 25% 的几率获得 1 个暴击球"]={{},"投掷时，有 几率获得 1 个暴击球 "}c["你的攻击击中每个敌人会失去 25 生命 投射物可以连锁弹射 +1 次"]={{[1]={flags=1,keywordFlags=0,name="Life",type="BASE",value=1}},"你的击中每个敌人会失去 25  投射物可以连锁弹射  次 "}c["陷阱伤害提高 25%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=25}},nil}
c["+18 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=18},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=18},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=18}},nil}
c["当你获得【霸体】时，近距离用弓击中后的总伤害额外提高 30%"]={{[1]={[1]={type="Condition",var="AtCloseRange"},[2]={type="Condition",var="Have霸体Keystone"},flags=4,keywordFlags=0,name="Damage",type="MORE",value=30}},nil}
c["被你诅咒的敌人会遭受【恶语术】影响"]={{[1]={flags=0,keywordFlags=0,name="AffectedByCurseMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}}}},nil}
c["【复苏魔卫】不再需要灵枢"]={nil,"【复苏魔卫】不再需要灵枢 "}c["异灵魔侍被击中时让敌人受到【灰烬缠身】"]={nil,"异灵魔侍被击中时让敌人受到【灰烬缠身】 "}c["最大生命降低 25%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=-25}},nil}
c["魔力回复速度提高 90%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=90}},nil}
c["承受攻击造成的物理伤害 (-18--14)"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-18}}," (--14) "}c["陷阱伤害提高 28%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=28}},nil}
c["你使用瓦尔技能时获得 1 个暴击球 近期内你若使用过瓦尔技能，则击中每个敌人回复 10 生命"]={nil,"你使用瓦尔技能时获得 1 个暴击球 近期内你若使用过瓦尔技能，则击中每个敌人回复 10 生命 "}c["4% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=4}},nil}
c["格挡时有 10% 几率使怪物逃跑 对受诅咒敌人造成伤害的 1% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=2,name="Damage",type="BASE",value=10}},"格挡时使怪物逃跑 对受敌人造成的 1% 转化为生命偷取 "}c["当敌人移动时，你的流血无法造成额外伤害"]={{[1]={flags=0,keywordFlags=0,name="Condition:NoExtraBleedDamageToMovingEnemy",type="FLAG",value=true}},nil}
c["伤害提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["反射 260 物理伤害给近战攻击者"]={{},nil}
c["该装备的护甲与能量护盾提高 80%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=80}},nil}
c["你正在燃烧时总能点燃敌人"]={{[1]={[1]={type="Condition",var="Burning"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=100}},nil}
c["每个狂怒球可使移动速度提高 3%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=3}},nil}
c["获得 +48% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=48}},nil}
c["技能效果持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=15}},nil}
c["长杖攻击时，敌人被晕眩时间延长 20%"]={{[1]={flags=2097152,keywordFlags=0,name="EnemyStunDuration",type="INC",value=20}},nil}
c["被击中时有 25% 几率避免火焰伤害"]={{[1]={flags=0,keywordFlags=262144,name="FireDamage",type="BASE",value=25}},"被时避免 "}c["反射 23 物理伤害给近战攻击者"]={{},nil}
c["物理伤害提高 285%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=285}},nil}
c["+28 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=28}},nil}
c["附加 350 - 500 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=350},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=500}},nil}
c["此物品上的技能石受到 20 级的 元素穿透 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportElementalPenetration"}}},nil}
c["击败敌人时有 10% 几率给予周围友军 1 个暴击球"]={{},"击败敌人时给予周围友军 1 个暴击球 "}c["召唤生物的最大生命提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=20}}}},nil}
c["匕首攻击的物理伤害提高 6%"]={{[1]={flags=524288,keywordFlags=0,name="PhysicalDamage",type="INC",value=6}},nil}
c["10% increased Radius of Aura Skills {variant:2}光环技能范围提高 20%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=20}},"10% increased Radius of Aura Skills {variant:2} "}c["最大魔力提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=16}},nil}
c["10% increased Radius of Aura Skills"]={nil,"10% increased Radius of Aura Skills "}c["护甲提高 24%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=24}},nil}
c["诅咒持续时间延长 80%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=80}},nil}
c["图腾的生命提高 20%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=20}},nil}
c["+1 匕首的近战攻击范围"]={{[1]={flags=524288,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1}},nil}
c["附加 170 - 195 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=170},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=195}},nil}
c["持续吟唱技能伤害提高 60%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["持续吟唱技能伤害提高 70%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["不会承受反射的元素伤害 你身上的捷效果提高 40% 你击中造成的感电，必定会使对方所承受伤害提高至少 10% 最多可同时拥有额外 1 个魔像"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=262144,name="ElementalDamage",type="INC",value=40}}}},"不会承受反射的 你身上的捷效果 你造成的感电，必定会使对方所承受伤害提高至少 10% 最多可同时拥有额外 1 个 "}c["+20 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=20}},nil}
c["格挡时回复 +50 魔力 +5% 攻击格挡率"]={{[1]={flags=1,keywordFlags=0,name="Mana",type="BASE",value=50}},"格挡时回复   +5% 格挡率 "}c["物理伤害提高 360%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=360}},nil}
c["周围友军击中时威吓敌人，持续 4 秒"]={nil,"周围友军击中时威吓敌人，持续 4 秒 "}c["格挡时回复 +50 魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=50}},"格挡时回复   "}c["剑类攻击的暴击率提高 40%"]={{[1]={flags=4194304,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["召唤生物的最大生命提高 40%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=40}}}},nil}
c["血魔法"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="祭血术"}},nil}
c["受到【清晰】影响时，魔力回复速度提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=0,name="ManaRecoveryRate",type="INC",value=30}},nil}
c["+125 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=125}},nil}
c["+175 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=175}},nil}
c["召唤生物的最大生命提高 7%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=7}}}},nil}
c["闪电伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=20}},nil}
c["+45 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=45}},nil}
c["药剂持续期间，施法速度提高 36%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=16,keywordFlags=0,name="Speed",type="INC",value=36}},nil}
c["你被冰冻的持续时间缩短 50% {variant:1}每秒回复 1% 生命"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=-50}},"你被的持续时间 {variant:1}每秒回复 1% 生命 "}c["低血时每秒回复 3% 生命"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=3}},nil}
c["每 1 个聚光之石可使护甲提高 200"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=200},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["低血时每秒回复 5% 生命"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=5}},nil}
c["插槽内的诅咒技能无视诅咒限制"]={nil,"插槽内的诅咒技能无视诅咒限制 "}c["低血时每秒回复 6% 生命"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=6}},nil}
c["每秒回复 3% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=3}},nil}
c["你被冰冻的持续时间缩短 50% {variant:3}每秒回复 1% 生命"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=-50}},"你被的持续时间 {variant:3}每秒回复 1% 生命 "}c["拥有【秘术增强】时法术伤害提高 20%"]={{[1]={[1]={type="Condition",var="AffectedBy秘术增强"},flags=2,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["暴走状态时免疫物理伤害 1.5 秒 暴走"]={nil,"暴走状态时免疫物理伤害 1.5 秒 暴走 "}c["你被冰冻的持续时间缩短 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=-50}},"你被的持续时间 "}c["武器造成的伤害穿透 3% 火焰、冰霜、闪电抗性"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalPenetration",type="BASE",value=3}},nil}
c["拥有【秘术增强】时法术伤害提高 40%"]={{[1]={[1]={type="Condition",var="AffectedBy秘术增强"},flags=2,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["最大生命降低 8%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=-8}},nil}
c["格挡时有 100% 几率制造奉献地面"]={{},"格挡时制造奉献地面 "}c["+5% 全部抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=5},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=5},[4]={flags=0,keywordFlags=0,name="ChaosResistMax",type="BASE",value=5}},nil}
c["当你获得【火之化身】时，暴击率提高 200%"]={{[1]={[1]={type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=200}},nil}
c["20% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=20}},nil}
c["每 10 点智慧可以为攻击附加 0 - 3 基础闪电伤害"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=1,keywordFlags=0,name="LightningMax",type="BASE",value=3}},nil}
c["每 5% 的攻击格挡率会使法术伤害提高 8%"]={{[1]={[1]={div=5,stat="BlockChance",type="PerStat"},flags=2,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["80% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=80}},nil}
c["力量提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=8}},nil}
c["能量连接"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="能量连接"}},nil}
c["120% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=120}},nil}
c["装备时触发 20 级的【寒冰神盾】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="ColdAegis"}}},nil}
c["若你有 3 个起源天赋珠宝，可以额外召唤 1 个魔像"]={{[1]={[1]={threshold=3,type="MultiplierThreshold",var="PrimordialItem"},flags=0,keywordFlags=0,name="ActiveGolemLimit",type="BASE",value=1}},nil}
c["该装备的护甲与能量护盾提高 90%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=90}},nil}
c["攻击附加 3 - 38 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=3},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=38}},nil}
c["低血时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["对低血敌人，每个狂怒球可使伤害提高 6%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},[2]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=6}},nil}
c["长杖攻击的物理伤害提高 15%"]={{[1]={flags=2097152,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["低血时 +25% 火焰抗性"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="FireResist",type="BASE",value=25}},nil}
c["药剂持续期间，使周围的敌人感电，他们受到的伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SelfShockEffect",type="BASE",value=10}}}},nil}
c["装备 1 件魔法物品时，物品掉落数量提高 15%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="MagicItem"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=15}},nil}
c["+5% 火焰抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=5}},nil}
c["承受来自流血敌人的伤害降低 5%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},nil}
c["15% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=15}},nil}
c["+8% 火焰抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=8}},nil}
c["每 20 点力量可使火焰伤害提高 1%"]={{[1]={[1]={div=20,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=1}},nil}
c["20 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=20}},nil}
c["你的冰霜伤害会使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="ColdCanPoison",type="FLAG",value=true}},nil}
c["混沌伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=25}},nil}
c["6 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=6}},nil}
c["召唤的苦痛爬行者伤害提高 85%"]={{[1]={[1]={skillId="HeraldOfAgony",type="SkillId"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=85}}}},nil}
c["击中稀有或传奇敌人时，有 10% 几率获得【猛攻】效果，持续 10 秒 击败敌人时获得【猛攻】状态，持续 10 秒"]={{[1]={flags=0,keywordFlags=262144,name="OnslaughtEffect",type="BASE",value=10}},"稀有或传奇敌人时，获得，持续 10 秒 击败敌人时获得【猛攻】状态，持续 10 秒 "}c["智慧提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=10}},nil}
c["半径：18 你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20% 你击中造成的感电，必定会使对方所承受伤害提高至少 20%"]={{[1]={flags=0,keywordFlags=262144,name="AreaOfEffect",type="MORE"}},"：18 你造成的冰缓必定使目标减速 10 你击中造成的感电，必定会使对方所承受伤害提高至少 20% "}c["药剂持续期间，使用的瓦尔技能无法附加阻灵术效果 在任何灵魂撕裂者药剂持续期间无法获得药剂充能"]={nil,"药剂持续期间，使用的瓦尔技能无法附加阻灵术效果 在任何灵魂撕裂者药剂持续期间无法获得药剂充能 "}c["6% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=6}},nil}
c["此物品上的技能石降低 25% 魔力保留"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-25}}}},nil}
c["+200 锤类攻击的命中值"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="BASE",value=200}},nil}
c["+8% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=8}},nil}
c["冰霜伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=20}},nil}
c["装备时触发 20 级的【火焰神盾】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="FireAegis"}}},nil}
c["获得额外混沌伤害，其数值等同于物理伤害的 8%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=8}},nil}
c["物理攻击伤害的 2% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=2}},nil}
c["50% 几率避免被冰缓"]={{[1]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=50}},nil}
c["格挡时有 30% 几率获得 3 秒不洁之力 {variant:2}格挡时获得 10 秒不洁之力"]={{},"格挡时获得 3 秒不洁之力 {variant:2}格挡时获得 10 秒不洁之力 "}c["地雷引爆速度提高 20%"]={{},"引爆速度 "}c["使用时制造奉献地面"]={{},nil}
c["弓类攻击的命中值提高 6%"]={{[1]={flags=131072,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["法术伤害提高 24%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["受到你嘲讽的敌人所承受的伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="Taunted"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}}}},nil}
c["当你没有能量护盾时，护甲提高 100% {variant:1}格挡时有 30% 几率获得 3 秒不洁之力"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=100}},"当你没有时，护甲 {variant:1}格挡时有 30% 几率获得 3 秒不洁之力 "}c["药剂每 3 秒获得 3 次使用机会 伤害穿透敌人 6% 的火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=6}},"药剂每 3 秒获得 3 次使用机会  "}c["武器攻击的基础暴击几率为 7.5%"]={{[1]={flags=0,keywordFlags=0,name="WeaponBaseCritChance",type="OVERRIDE",value=7.5}},nil}
c["陷阱触发范围扩大 30%"]={{[1]={flags=0,keywordFlags=0,name="TrapTriggerAreaOfEffect",type="INC",value=30}},nil}
c["持续吟唱时，有 40% 几率避免晕眩 持续吟唱技能伤害提高 30% 持续吟唱技能魔力消耗 -3"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=40}},"持续吟唱时，避免晕眩 提高 30% 持续吟唱技能魔力消耗 -3 "}c["药剂回复的魔力提高 15%"]={{[1]={flags=0,keywordFlags=0,name="FlaskManaRecovery",type="INC",value=15}},nil}
c["召唤生物的伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=40}}}},nil}
c["混沌伤害的 0.4% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageLifeLeech",type="BASE",value=0.4}},nil}
c["该装备的护甲与能量护盾提高 350%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=350}},nil}
c["魔像体型缩小 25% 魔像的总伤害额外降低 45%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=-25}}}},"体型 魔像的总额外降低 45% "}c["格挡时回复能量护盾，数值等同于 2% 的护甲"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=2}},"格挡时回复，数值等同于 护甲 "}c["击中时有 10% 几率致盲敌人"]={{},"时致盲敌人 "}c["该装备的护甲与能量护盾提高 400%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=400}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 20% {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=20}},"攻击的 {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 20% "}c["法杖攻击的命中值提高 8%"]={{[1]={flags=8388608,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["双持攻击的命中值提高 16%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=16}},nil}
c["受到防卫技能增益效果影响时，+250 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=250}},"受到防卫技能增益效果影响时，  "}c["不能偷取魔力"]={{[1]={flags=0,keywordFlags=0,name="CannotLeechMana",type="FLAG",value=true}},nil}
c["+8 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=8}},nil}
c["图腾放置速度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=50}},nil}
c["你被感电的持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=100}},"你被感电的 "}c["近战攻击暴击率提高 30%"]={{[1]={flags=257,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["全局伤害提高 300%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Damage",type="INC",value=300}},nil}
c["+17 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=17},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=17},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=17}},nil}
c["受到【憎恨】影响时，附加 70 - 104 基础冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy憎恨"},flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=70},[2]={[1]={type="Condition",var="AffectedBy憎恨"},flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=104}},nil}
c["你获得【坚毅之心】时，物理伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},"你获得【坚毅之心】时， "}c["受到诅咒的持续时间延长 100%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=100}},"受到的 "}c["该装备的能量护盾提高 140%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=140}},nil}
c["格挡时回复 5% 生命 {crafted}{range:0.5}+64 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=64}},"格挡时回复 5%  {crafted}{range:0.5} 最大生命 "}c["18 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=18}},nil}
c["范围内含的智慧和敏捷总计 40 点时，【元素打击】的火焰冷伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内含的和敏捷总计 40 点时，【元素打击】的火焰冷伤害"}c["盾牌上的所有属性会套用于你的召唤生物，而非角色本身"]={{},nil}
c["攻击附加 12 - 15 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=12},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=15}},nil}
c["攻击附加 4 - 8 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=8}},nil}
c["攻击附加 4 - 8 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=8}},nil}
c["近期内你若格挡过法术，攻击伤害格挡几率 +20%"]={{[1]={[1]={type="Condition",var="BlockedSpellRecently"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},nil}
c["对流血敌人的击中火焰伤害和异常状态伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=786432,name="FireDamage",type="INC",value=100}},nil}
c["近期内你若格挡过法术，则有 20% 几率格挡攻击"]={{[1]={[1]={type="Condition",var="BlockedSpellRecently"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},nil}
c["+240 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=240}},nil}
c["+15 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=15}},nil}
c["冰霜伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=8}},nil}
c["近期内你若格挡过攻击，则有 20% 几率格挡法术"]={{[1]={[1]={type="Condition",var="BlockedAttackRecently"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=20}},nil}
c["该装备 +6% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=6}},nil}
c["低血时，法术伤害格挡几率额外 +30%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=30}},nil}
c["承受的范围伤害降低 5%"]={{[1]={flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},"的 "}c["低血时，120% 的攻击格挡率套用于法术格挡"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=120}},nil}
c["偷取时伤害提高 35%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=0,keywordFlags=0,name="Damage",type="INC",value=35}},nil}
c["火焰、冰霜、闪电抗性为零"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="OVERRIDE",value=0},[2]={flags=0,keywordFlags=0,name="ColdResist",type="OVERRIDE",value=0},[3]={flags=0,keywordFlags=0,name="LightningResist",type="OVERRIDE",value=0}},nil}
c["格挡回复提高 120%"]={{[1]={flags=0,keywordFlags=0,name="BlockRecovery",type="INC",value=120}},nil}
c["物品掉落数量提高 6%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=6}},nil}
c["每个激活的图腾提供 +300 护甲"]={{[1]={flags=0,keywordFlags=16384,name="Armour",type="BASE",value=300}},"每个激活的提供   "}c["无视诅咒数量上限，当格挡法术时施放 15 级【元素要害】"]={nil,"无视诅咒数量上限，当格挡法术时施放 15 级【元素要害】 "}c["法术伤害降低 15%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=-15}},nil}
c["近期内你若感电任意敌人，则伤害提高 35%"]={{[1]={[1]={type="Condition",var="ShockedEnemyRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=35}},nil}
c["击败敌人有 20% 几率时获得耐力球"]={{},"击败敌人时获得耐力球 "}c["从偷取获取的每秒生命回复提高 8%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=8}},nil}
c["附加 100 - 370 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=100},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=370}},nil}
c["每个被暴击的敌人给予你 1 个暴击球 {variant:2}内在信念"]={nil,"每个被暴击的敌人给予你 1 个暴击球 {variant:2}内在信念 "}c["附加 300 - 380 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=300},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=380}},nil}
c["附近每多一个敌人会 +10% 暴击伤害，最高 +100% -30% 周围敌人的暴击伤害"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE",value=10}},"附近每多一个敌人会  暴击，最高 +100% -30% 周围敌人的暴击伤害 "}c["无视诅咒数量上限，当格挡投射物攻击时施放 15 级【时空锁链】 无视诅咒数量上限，当格挡法术时施放 15 级【元素要害】"]={nil,"无视诅咒数量上限，当格挡投射物攻击时施放 15 级【时空锁链】 无视诅咒数量上限，当格挡法术时施放 15 级【元素要害】 "}c["地雷放置速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=5}},nil}
c["获得 20 级的【召唤兽化巨蛇】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillName="召唤兽化巨蛇",type="SkillName"}}},nil}
c["对传奇敌人时，总伤害额外提高 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="RareOrUnique"},flags=0,keywordFlags=0,name="Damage",type="MORE",value=20}},nil}
c["你的【召唤灵体】也会随你一起获得【秘术增强】"]={nil,"你的【召唤灵体】也会随你一起获得【秘术增强】 "}c["拥有能量护盾时法术躲避几率 +10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=10}},nil}
c["该装备的能量护盾提高 138%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=138}},nil}
c["10% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=10}},nil}
c["每 100 玩家最大生命提高 2% 法术伤害"]={{[1]={[1]={div=100,stat="PlayerLife",type="PerStat"},flags=2,keywordFlags=0,name="Damage",type="INC",value=2}},nil}
c["每 100 玩家最大生命提高 2% 法术暴击几率"]={{[1]={[1]={div=100,stat="PlayerLife",type="PerStat"},flags=2,keywordFlags=0,name="CritChance",type="INC",value=2}},nil}
c["暴击时获得一个疾电球"]={nil,"暴击时获得一个疾电球 "}c["召唤生物身上的光环效果提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AuraEffectOnSelf",type="INC",value=20}}}},nil}
c["当你触发或施法法术技能时牺牲 4% 的血量 {variant:3}每 100 玩家最大生命提高 2% 法术暴击几率"]={{[1]={flags=2,keywordFlags=0,name="Life",type="BASE",value=4}},"当你触发或施法技能时牺牲 血量 {variant:3}每 100 玩家提高 2% 法术暴击几率 "}c["火焰、冰霜、闪电伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=25}},nil}
c["双持时施法速度提高 4%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=16,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["60% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=60}},nil}
c["暴击时喷洒焦油"]={nil,"暴击时喷洒焦油 "}c["法术伤害提高 90%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=90}},nil}
c["召唤生物的攻击速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=15}}}},nil}
c["该装备的护甲与闪避提高 250%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=250}},nil}
c["每有 500 层能量护盾可每秒回复 1% 生命"]={{[1]={[1]={div="500",stat="EnergyShield",type="PerStat"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value="1"}},nil}
c["暴击球达到最大数量时，失去所有的暴击球 暴击球达到最大数量时，你被感电"]={nil,"暴击球达到最大数量时，失去所有的暴击球 暴击球达到最大数量时，你被感电 "}c["该装备的能量护盾提高 230%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=230}},nil}
c["攻击技能有 20% 几率获得暴击球 每个暴击球可使法术伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=65536,name="Damage",type="BASE",value=20}},"获得暴击球 提高 6% "}c["获得额外闪电伤害， 其数值等同于法杖物理伤害的 20%"]={{[1]={flags=8388608,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=20}},nil}
c["闪避值提高 350%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=350}},nil}
c["每装备 1 个【裂界之器】，非伤害性异常状态的效果便提高 8%"]={{[1]={[1]={type="Multiplier",var="ElderItem"},flags=2048,keywordFlags=0,name="EnemyShockEffect",type="INC",value=8},[2]={[1]={type="Multiplier",var="ElderItem"},flags=2048,keywordFlags=0,name="EnemyChillEffect",type="INC",value=8},[3]={[1]={type="Multiplier",var="ElderItem"},flags=2048,keywordFlags=0,name="EnemyFreezeEffech",type="INC",value=8}},nil}
c["该装备 +8% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=8}},nil}
c["受到【火焰净化】影响时，免疫点燃 {variant:47}受到【火焰净化】影响时，受到击中物理伤害的 10% 转换为火焰伤害"]={nil,"受到【火焰净化】影响时，免疫点燃 {variant:47}受到【火焰净化】影响时，受到击中物理伤害的 10% 转换为火焰伤害 "}c["该装备的能量护盾提高 538%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=538}},nil}
c["击中敌人时，用 10 级的【时空锁链】诅咒敌人"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,noSupports=true,skillId="TemporalChains"}}},nil}
c["诅咒持续时间延长 100%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=100}},nil}
c["近期内你若造成非暴击伤害，则 +25% 暴击伤害加成"]={{[1]={[1]={type="Condition",var="NonCritRecently"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=25}},nil}
c["法术附加 39 - 60 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=39},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=60}},nil}
c["承受攻击造成的物理伤害 -10"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-10}},nil}
c["该装备 +10% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},nil}
c["闪电伤害提高 13%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=13}},nil}
c["你的副手未装备武器时，冰霜伤害提高 100%"]={{[1]={[1]={type="Condition",var="OffHandIsEmpty"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=100}},nil}
c["没有格档率"]={{[1]={flags=0,keywordFlags=0,name="ArmourData",type="LIST",value={key="BlockChance",value=0}}},nil}
c["承受来自致盲敌人的法术伤害降低 30% 没有格档率"]={{[1]={flags=2,keywordFlags=0,name="DamageTaken",type="INC",value=-30}},"来自致盲敌人的 没有格档率 "}c["持长杖时，范围效果扩大 10%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},nil}
c["近期内你若使用过技能，每使用 1 个技能，你身上的【提速尾流】效果提高 10%，最多 100%"]={{[1]={[1]={limit=100,limitTotal=true,type="Multiplier",var="SkillUsedRecently"},flags=0,keywordFlags=0,name="TailwindEffectOnSelf",type="INC",value=10}},nil}
c["该装备的能量护盾提高 250%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=250}},nil}
c["弓类攻击的伤害提高 15%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["暴击时，+5% 持续点燃伤害加成"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=4194304,name="DotMultiplier",type="BASE",value=5}},nil}
c["属性需求提高 500%"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="INC",value=500},[2]={flags=0,keywordFlags=0,name="DexRequirement",type="INC",value=500},[3]={flags=0,keywordFlags=0,name="IntRequirement",type="INC",value=500}},nil}
c["插上 1 个蓝色技能石时获得 +100% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=100}},"插上 1 个蓝色技能石时  "}c["+60 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=60}},nil}
c["法杖攻击的暴击率提高 30%"]={{[1]={flags=8388608,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["烙印技能伤害提高 24%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["击中时触发插槽内的闪电法术 触发后，插槽内闪电法术的法术伤害提高 100%"]={{[1]={flags=2,keywordFlags=262144,name="Damage",type="INC",value=100}},"时触发插槽内的闪电法术 触发后，插槽内闪电法术的 "}c["主手武器击败敌人时，有 25% 几率获得狂怒球 副手武器击败敌人时，有 25% 几率获得 1 个耐力球 狂怒球达到上限时，物理总伤害额外提高 10% 耐力球达到上限时，受到的物理伤害降低 10%"]={{[1]={[1]={type="Condition",var="MainHandAttack"},[2]={type="Condition",var="OffHandAttack"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=25}},"击败敌人时，获得狂怒球 击败敌人时，有 25% 几率获得 1 个耐力球 狂怒球达到上限时，物理总额外提高 10% 耐力球达到上限时，受到的物理伤害降低 10% "}c["召唤愤怒狂灵的最大数量减少 75%"]={{[1]={flags=0,keywordFlags=0,name="ActiveRagingSpiritLimit",type="INC",value=-75}},nil}
c["你的陷阱触发后，随即触发 20 级的【战争迷雾】 {variant:1}对致盲敌人的火焰伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=266240,name="FireDamage",type="INC",value=30}},"你的触发后，随即触发 20 级的【战争迷雾】 {variant:1} "}c["攻击技能的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=24}},nil}
c["魔卫的物理伤害提高 100% {variant:4}魔卫的物理总伤害额外提高 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}}}},"的 {variant:4}魔卫的物理总伤害额外提高 100% "}c["你的陷阱触发后，随即触发 20 级的【战争迷雾】"]={nil,"你的陷阱触发后，随即触发 20 级的【战争迷雾】 "}c["受到的暴击伤害降低 20% 护甲提高 30% 你受到的诅咒效果降低 20%"]={{[1]={flags=0,keywordFlags=2,name="Damage",type="INC",value=-20}},"受到的暴击 护甲提高 30% 你受到的效果降低 20% "}c["流血伤害提高 25%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=25}},nil}
c["此物品上的陷阱技能石触发时制造一阵烟雾 {variant:3}你的陷阱触发后，随即触发 20 级的【战争迷雾】"]={nil,"此物品上的陷阱技能石触发时制造一阵烟雾 {variant:3}你的陷阱触发后，随即触发 20 级的【战争迷雾】 "}c["此物品上的陷阱技能石触发时制造一阵烟雾"]={nil,"此物品上的陷阱技能石触发时制造一阵烟雾 "}c["攻击速度提高 8%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["攻击和法术暴击率提高 70%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=70}},nil}
c["最大魔力降低 13%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-13}},nil}
c["攻击技能可使混沌伤害提高 15%"]={{[1]={flags=0,keywordFlags=65536,name="ChaosDamage",type="INC",value=15}},nil}
c["当不处于低血或低魔状态时，混沌伤害无法穿透能量护盾 将你身上的感电状态反射给周围所有敌人"]={nil,"当不处于低血或低魔状态时，混沌伤害无法穿透能量护盾 将你身上的感电状态反射给周围所有敌人 "}c["+450 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=450}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["获得 20 级的【幻象传送】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="MerveilWarp"}}},nil}
c["该装备的攻击暴击率提高 55%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=55}},nil}
c["攻击附加 18 - 32 基础混沌伤害"]={{[1]={flags=0,keywordFlags=65536,name="ChaosMin",type="BASE",value=18},[2]={flags=0,keywordFlags=65536,name="ChaosMax",type="BASE",value=32}},nil}
c["该装备的闪避与能量护盾提高 235%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=235}},nil}
c["反射感电"]={nil,"反射感电 "}c["【召唤魔像】的冷却速度提高 38%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=38}}}},nil}
c["+78 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=78}},nil}
c["无法造成元素伤害"]={{[1]={flags=0,keywordFlags=0,name="DealNoLightning",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="DealNoCold",type="FLAG",value=true},[3]={flags=0,keywordFlags=0,name="DealNoFire",type="FLAG",value=true}},nil}
c["击中流血敌人时有 30% 几率使敌人逃跑"]={{},"使敌人逃跑 "}c["使用战吼时获得 2 个暴击球"]={nil,"使用战吼时获得 2 个暴击球 "}c["击中被嘲讽的敌人回复 +3 魔力 {variant:2,3}使用战吼时获得 2 个暴击球"]={{[1]={flags=0,keywordFlags=262144,name="Mana",type="BASE",value=3}},"被嘲讽的敌人回复   {variant:2,3}使用战吼时获得 2 个暴击球 "}c["偷取时攻击伤害提高 50%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=1,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["该装备的闪避与能量护盾提高 170%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=170}},nil}
c["持续伤害效果提高 25%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["此物品上装备的【战吼技能石】等级 +3"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="warcry",value=3}}},nil}
c["附加 51 - 59 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=51},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=59}},nil}
c["低血时伤害提高 20%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["近期内你若有施放法术，则法术伤害提高 30%"]={{[1]={[1]={type="Condition",var="CastSpellRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["法术伤害提高 5%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["附加 11 - 23 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=11},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=23}},nil}
c["附加 21 - 38 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=21},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=38}},nil}
c["12% 额外物理伤害减伤"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=12}},nil}
c["你反射给怪物的 10% 伤害会变为回复生命"]={nil,"你反射给怪物的 10% 伤害会变为回复生命 "}c["该装备的能量护盾提高 235%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=235}},nil}
c["打击类技可以额外攻击 1 个周围敌人"]={{},"打击类技可以"}c["伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["近期内你若打出过暴击，则获得【瓦尔冥约】"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=0,keywordFlags=0,name="Keystone",type="LIST",value="瓦尔冥约"}},nil}
c["获得 +20% 元素抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=20}},nil}
c["生命和能量护盾回复率降低 30%"]={{[1]={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=-30},[2]={flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=-30}},nil}
c["+5% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["持斧时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["闪避值提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=16}},nil}
c["使用战吼后获得持续 4 秒的【猛攻】状态 {variant:2,3}战吼的增益效果提高 25%"]={{[1]={flags=0,keywordFlags=4,name="BuffEffect",type="INC",value=25}},"使用后获得持续 4 秒的【猛攻】状态 {variant:2,3} "}c["使用战吼后获得持续 4 秒的【猛攻】状态"]={nil,"使用战吼后获得持续 4 秒的【猛攻】状态 "}c["你和周围队友的移动速度提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=12}}}},nil}
c["当你放置图腾时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球"]={{},"当你放置时，获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 "}c["击败被嘲讽的敌人获得 2 秒【猛攻】状态 {variant:2,3}使用战吼后获得持续 4 秒的【猛攻】状态"]={nil,"击败被嘲讽的敌人获得 2 秒【猛攻】状态 {variant:2,3}使用战吼后获得持续 4 秒的【猛攻】状态 "}c["击败被嘲讽的敌人获得 2 秒【猛攻】状态"]={nil,"击败被嘲讽的敌人获得 2 秒【猛攻】状态 "}c["受到击中火焰伤害的 20% 转为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTakenAsCold",type="BASE",value=20}},nil}
c["近战攻击速度提高 4%"]={{[1]={flags=257,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["获得额外冰霜伤害， 其数值等同于物理伤害的 13%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=13}},nil}
c["护甲提高 225%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=225}},nil}
c["从盾牌获取的防御提高 30%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="Defences",type="INC",value=30}},nil}
c["反射 50 冰霜伤害给近战攻击者 +5% 攻击格挡率"]={{[1]={flags=256,keywordFlags=0,name="ColdDamage",type="BASE",value=5}},"反射 50 给者  攻击格挡率 "}c["该装备的闪避与能量护盾提高 110%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=110}},nil}
c["近战暴击时触发插槽内的冰霜技能"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,name="SupportUniqueCosprisMaliceColdSpellsCastOnMeleeCriticalStrike"}}},nil}
c["图腾所使用法术的施法速度提高 6%"]={{[1]={flags=16,keywordFlags=16384,name="Speed",type="INC",value=6}},nil}
c["获得克洛瓦麾下 18000 名武士的领导权"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC克洛瓦",type="FLAG",value=true}},nil}
c["反射 50 冰霜伤害给近战攻击者"]={nil,"反射 50 冰霜伤害给近战攻击者 "}c["持盾牌时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["附加 103 - 245 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=103},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=245}},nil}
c["反射 10 冰霜伤害给近战攻击者 {variant:2,3,4}反射 50 冰霜伤害给近战攻击者"]={nil,"反射 10 冰霜伤害给近战攻击者 {variant:2,3,4}反射 50 冰霜伤害给近战攻击者 "}c["附加 90 - 180 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=90},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=180}},nil}
c["野蛮人： 近战技能范围扩大 15%"]={{[1]={[1]={type="Condition",var="ConnectedTo野蛮人Start"},flags=256,keywordFlags=0,name="AreaOfEffect",type="INC",value=15}},nil}
c["10% 法术格挡率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=10}},nil}
c["有额外 10% 几率被暴击 {variant:3}击中你的额外暴击几率提高 200%"]={{},"被暴击 {variant:3}你的额外暴击几率提高 200% "}c["击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 获得【肾上腺素】时回复 25% 生命 你获得【肾上腺素】时移除所有异常状态和燃烧状态"]={nil,"击中满血敌人时，将使他们永久受到威吓 若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒 获得【肾上腺素】时回复 25% 生命 你获得【肾上腺素】时移除所有异常状态和燃烧状态 "}c["持近战武器时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingMeleeWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["12% 法术格挡率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=12}},nil}
c["击中流血敌人时有 10% 几率使其致盲"]={{},"使其致盲 "}c["攻击附加 12 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=12},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=20}},nil}
c["7 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=7}},nil}
c["该装备的闪避与能量护盾提高 263%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=263}},nil}
c["Nearby Allies' spells have Culling Strike"]={nil,"Nearby Allies' spells have Culling Strike "}c["【电球】的持续时间缩短 18%"]={{[1]={[1]={skillName="电球",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=-18}},nil}
c["受到【冰霜净化】影响时，承受的反射冰霜伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy冰霜净化"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=-50}},"承受的反射 "}c["持盾牌时攻击造成的物理伤害提高 24% "]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["可附加第二种附魔词缀"]={nil,"可附加第二种附魔词缀 "}c["每失去一个精神球，回复 3% 的能量护盾 当精神球失效或被消耗时，回复 3% 生命"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=3}},"每失去一个精神球，回复  当精神球失效或被消耗时，回复 3% 生命 "}c["击败敌人时有 5% 几率获得 3 秒【猛攻】状态"]={{},"击败敌人时获得 3 秒【猛攻】状态 "}c["武器攻击的火焰、冰霜、闪电伤害提高 20% +55 最大魔力"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=20}},"攻击的 +55 最大魔力 "}c["此武器的攻击造成双倍伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=4,keywordFlags=0,name="DoubleDamageChance",type="BASE",value=100}},nil}
c["此物品上的技能石受到 20 级的 元素扩散 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportElementalProliferation"}}},nil}
c["过去 10 秒内所吸收物理伤害总额的 1.5% 转化为每秒生命回复"]={nil,"过去 10 秒内所吸收物理伤害总额的 1.5% 转化为每秒生命回复 "}c["移动速度提高 9%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=9}},nil}
c["每个白色插槽可以扩大 +2 近战武器范围"]={{[1]={[1]={type="Multiplier",var="WhiteSocketIn{SlotName}"},flags=0,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=2}},nil}
c["点燃 1 个敌人后回复 1% 最大生命"]={nil,"点燃 1 个敌人后回复 1% 最大生命 "}c["被击中时有 20% 几率避免物理伤害"]={{[1]={flags=0,keywordFlags=262144,name="PhysicalDamage",type="BASE",value=20}},"被时避免 "}c["耐力球持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=30}},nil}
c["击败敌人回复 +15 能量护盾 神殿效果提高 75%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=15}},"击败敌人回复   神殿效果提高 75% "}c["耐力球持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=20}},nil}
c["可以施放 1 个额外烙印 被附着烙印的敌人受到烙印技能的伤害提高 30% 烙印技能的持续时间延长 10%"]={{},"可以施放 1 个"}c["有 5% 几率使晕眩时间延长 1 倍 持锤或短杖时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="EnemyStunDuration",type="BASE",value=5}},"使延长 1 倍 伤害提高 14% "}c["使用时回复生命上限 75% 的生命 {variant:3}使用时回复生命上限 100% 的生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=75}},"使用时回复上限 生命 {variant:3}使用时回复生命上限 100% 的生命 "}c["你所施放诅咒的效果提高 20%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=20}},nil}
c["不受诅咒影响"]={{[1]={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="MORE",value=-100}},nil}
c["匕首攻击的攻击速度提高 4%"]={{[1]={flags=524289,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["你可以对单一敌人造成最多 300 个点燃状态 {variant:2}你可以对敌人造成额外 1 个点燃效果"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE"}},"你可以对单一敌人造成最多 300 个状态 {variant:2}你可以对敌人造成"}c["持盾牌击败敌人时有 5% 几率获得耐力球"]={{},"持盾牌击败敌人时获得耐力球 "}c["诅咒反射 不受诅咒影响"]={nil,"诅咒反射 不受诅咒影响 "}c["被击中时有 30% 几率获得耐力球"]={{},"被时获得耐力球 "}c["药剂持续期间，近战攻击会击退敌人"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=256,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=100}},nil}
c["击败稀有或者传奇敌人时，获得【猛攻】状态 20 秒 血量低于 20% 的敌人被你的技能击中时，会直接被终结"]={{},"击败稀有或者传奇敌人时，获得【猛攻】状态 20 秒 血量低于 敌人被你的技能时，会直接被终结 "}c["以多里亚尼的名义用 4050 名祭品之血浸染"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC多里亚尼",type="FLAG",value=true}},nil}
c["诅咒反射"]={nil,"诅咒反射 "}c["物理攻击伤害的 1% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=1}},nil}
c["周围友军击中时恐惧敌人，持续 4 秒"]={nil,"周围友军击中时恐惧敌人，持续 4 秒 "}c["被诅咒时法术伤害格挡几率 +20%"]={{[1]={[1]={type="Condition",var="Cursed"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=20}},nil}
c["药剂持续期间间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=20}},nil}
c["受到诅咒的持续时间缩短 50% {variant:3}未被诅咒时攻击伤害格挡几率 +10%"]={{[1]={[1]={neg=true,type="Condition",var="Cursed"},flags=0,keywordFlags=2,name="Duration",type="INC",value=-50}},"受到的 {variant:3}攻击伤害格挡几率 +10% "}c["击败敌人回复 +25 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=25}},"击败敌人回复   "}c["伤害穿透 6% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=6}},nil}
c["近期内你若有使用战吼，则火焰、冰霜、闪电伤害提高 150%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=150}},nil}
c["投射物伤害提高 6%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["受到诅咒的持续时间缩短 50%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=-50}},"受到的 "}c["爪类攻击的物理伤害提高 10%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["图腾免疫火焰伤害"]={nil,"图腾免疫火焰伤害 "}c["+60 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=60}},nil}
c["获得额外混沌伤害， 其数值等同于火焰伤害的 5%"]={{[1]={flags=0,keywordFlags=0,name="FireDamageGainAsChaos",type="BASE",value=5}},nil}
c["格挡回复提高 50%"]={{[1]={flags=0,keywordFlags=0,name="BlockRecovery",type="INC",value=50}},nil}
c["当你召唤出闪电魔像时，你无法被感电"]={nil,"当你召唤出闪电时，你无法被感电 "}c["图腾伤害提高 40%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=40}},nil}
c["你偷取生命，数值等同于你的图腾造成伤害的 0.5%"]={{[1]={flags=0,keywordFlags=16384,name="DamageLifeLeechToPlayer",type="BASE",value=0.5}},nil}
c["药剂生命回复速度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecoveryRate",type="INC",value=50}},nil}
c["图腾使用技能造成伤害的 1% 转化为生命偷取 {variant:2,3}你偷取生命，数值等同于你的图腾造成伤害的 0.5%"]={nil,"图腾使用技能造成伤害的 1% 转化为生命偷取 {variant:2,3}你偷取生命，数值等同于你的图腾造成伤害的 0.5% "}c["+6% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=6}},nil}
c["图腾使用技能造成伤害的 1% 转化为生命偷取"]={nil,"图腾使用技能造成伤害的 1% 转化为生命偷取 "}c["反射 15 火焰伤害给近战攻击者 受到击中物理伤害的 20% 转化为火焰伤害"]={nil,"反射 15 火焰伤害给近战攻击者 受到击中物理伤害的 20% 转化为火焰伤害 "}c["持续伤害效果提高 12%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["图腾使用技能的范围效果扩大 15%"]={{[1]={flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=15}},nil}
c["当你格挡时有 10% 几率获得 1 个耐力球"]={{},"当你格挡时获得 1 个耐力球 "}c["每 10 点奉献 使魔力回复 0.6"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=0.6}},nil}
c["能量护盾回复总速度降低 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="MORE",value=-50}},nil}
c["近期有击中被诅咒的敌人，则魔力回复速度提高 30%"]={{[1]={flags=0,keywordFlags=262144,name="ManaRegen",type="INC",value=30}},"近期有被诅咒的敌人，则 "}c["每装备一个魔法物品，伤害提高 23%"]={{[1]={[1]={type="Multiplier",var="MagicItem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=23}},nil}
c["+25% 对投射物格挡率"]={{[1]={flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=25}}," 对格挡率 "}c["击败敌人时有 30% 几率额外获得 1 个瓦尔灵魂"]={{},"击败敌人时额外获得 1 个灵魂 "}c["击中总伤害降低 30%"]={{[1]={flags=4,keywordFlags=0,name="Damage",type="MORE",value=-30}},nil}
c["你技能的光环可使你和周围友方的物理伤害减免提高 +1%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAuraEffect",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=1}}}},nil}
c["附加 2 - 10 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=2},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=10}},nil}
c["击败敌人回复 +40 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaOnKill",type="BASE",value=40}},nil}
c["敌人对你造成的暴击伤害特别幸运"]={nil,"敌人对你造成的暴击伤害特别幸运 "}c["承受投射物攻击造成的物理伤害 (-80--50)"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCountTaken",type="BASE",value=-80}},"物理伤害 (--50) "}c["承受投射物攻击造成的物理伤害 -10 {variant:2,3}承受投射物攻击造成的物理伤害 (-80--50)"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCountTaken",type="BASE",value=-10}},"物理伤害  {variant:2,3}承受投射物攻击造成的物理伤害 (-80--50) "}c["物品掉落数量降低 10%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=-10}},nil}
c["击中时 10% 几率造成流血"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=10}},nil}
c["魔力保留降低 4%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-4}},nil}
c["获得等同于你力量数值的命中值"]={{[1]={[1]={stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=1}},nil}
c["战吼冷却回复速度提高 50%"]={{[1]={flags=0,keywordFlags=4,name="CooldownRecovery",type="INC",value=50}},nil}
c["15% chance of Projectiles Piercing"]={nil,"15% chance of Projectiles Piercing "}c["范围内提高冰霜抗性的天赋也会提高击败敌人时获得狂怒球的概率"]={nil,"范围内提高冰霜抗性的天赋也会提高击败敌人时获得狂怒球的概率 "}c["6% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=6}},nil}
c["此物品上装备的【战吼技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="warcry",value=1}}},nil}
c["偷取时免疫晕眩"]={nil,"偷取时免疫晕眩 "}c["持长杖时攻击伤害格挡几率 +2%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=2}},nil}
c["+90 点闪避值和能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="BASE",value=90}},nil}
c["持续吟唱技能攻击和施法速度提高 6%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["攻击附加 6 - 12 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=6},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=12}},nil}
c["3% 额外攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=3}},nil}
c["投射物会分裂"]={nil,"投射物会分裂 "}c["每 10 点奉献使自身受到诅咒的持续时间缩短 4%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=2,name="Duration",type="INC",value=-4}},"自身受到的 "}c["最多同时可额外放置 2 个遥控地雷"]={{[1]={flags=0,keywordFlags=0,name="ActiveMineLimit",type="BASE",value=2}},nil}
c["每有 1 个耐力球，便获得 1% 额外物理伤害减免"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=1}},nil}
c["装备 5 个被腐化物品时：受到混沌伤害的 50% 由能量护盾承受，受到物理伤害的 50% 会穿透能量护盾"]={nil,"装备 5 个被腐化物品时：受到混沌伤害的 50% 由能量护盾承受，受到物理伤害的 50% 会穿透能量护盾 "}c["持盾牌时攻击造成的物理伤害提高 20% "]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["该装备 +4% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["拥有能量护盾时有 20% 几率躲避法术击中"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=20}},nil}
c["+140 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=140}},nil}
c["受到的火焰总伤害额外降低 20%"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTaken",type="MORE",value=-20}},nil}
c["+25% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=25}},nil}
c["+170 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=170}},nil}
c["承受投射物攻击造成的物理伤害 -25 +5% 攻击格挡率"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCountTaken",type="BASE",value=-25}},"物理伤害  +5% 攻击格挡率 "}c["附加 115 - 260 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=115},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=260}},nil}
c["无法击退敌人"]={{[1]={flags=0,keywordFlags=0,name="CannotKnockback",type="FLAG",value=true}},nil}
c["+43% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=43}},nil}
c["护甲提高 135%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=135}},nil}
c["在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态，-15% 抗性"]={{},"在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态， 抗性 "}c["攻击和法术附加 14-33 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=14},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=33}},nil}
c["移动速度提高 7%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=7}},nil}
c["此物品上的技能石获得【元素之相】，效果降低 25%"]={{},"获得【元素之相】，效果 "}c["每一级在击败敌人时获得 +1 生命 {variant:1}每级提高 1%火焰、冰霜、闪电伤害"]={{[1]={[1]={type="Multiplier",var="Level"},[2]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="Life",type="BASE",value=1}},"击败敌人时  {variant:1}提高 1%火焰、冰霜、闪电伤害 "}c["击中时有 25% 几率对未受诅咒的敌人施放【衰弱】诅咒"]={{},"时对未受诅咒的敌人施放【衰弱】诅咒 "}c["击中敌人时有 10% 几率使敌人被衰弱 {variant:3,4}击中时有 25% 几率对未受诅咒的敌人施放【衰弱】诅咒"]={{},"敌人时使敌人被衰弱 {variant:3,4}击中时有 25% 几率对未受诅咒的敌人施放【衰弱】诅咒 "}c["战吼持续时间延长 30%"]={{[1]={flags=0,keywordFlags=4,name="Duration",type="INC",value=30}},nil}
c["当你用弓攻击时，有 25% 几率触发一个插槽内的法术"]={{},"当你用时，触发一个插槽内的法术 "}c["敏捷提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=10}},nil}
c["经验值获取提高 2%"]={{},"经验值获取 "}c["范围内的天赋被瓦尔抑制"]={{[1]={flags=0,keywordFlags=0,name="光彩夺目",type="FLAG",value=true}},nil}
c["3% chance to Avoid Elemental Status Ailments {variant:2}3% 几率避免元素异常状态"]={{[1]={flags=2048,keywordFlags=0,name="AvoidShock",type="BASE",value=3},[2]={flags=2048,keywordFlags=0,name="AvoidFrozen",type="BASE",value=3},[3]={flags=2048,keywordFlags=0,name="AvoidChilled",type="BASE",value=3},[4]={flags=2048,keywordFlags=0,name="AvoidIgnite",type="BASE",value=3}},"3% chance  {variant:2}避免元素 "}c["火焰、冰霜、闪电伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=15}},nil}
c["击中敌人时有 5% 几率使敌人被衰弱"]={{},"敌人时使敌人被衰弱 "}c["不能使用胸甲 {variant:1,2}15% 攻击格挡率"]={nil,"不能使用胸甲 {variant:1,2}15% 攻击格挡率 "}c["当你使用弓箭攻击时触发一个插槽内的弓类法术 攻击速度提高 12%"]={{[1]={flags=131073,keywordFlags=0,name="Speed",type="INC",value=12}},"当你使用箭攻击时触发一个插槽内的弓类法术  "}c["每个疾电球可使暴击几率降低 10%"]={{[1]={[1]={type="Multiplier",var="BlitzCharge"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=-10}},nil}
c["附加 110 - 170 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=110},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=170}},nil}
c["每个耐力球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["最大生命提高 14%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=14}},nil}
c["每个图腾每秒使你回复 0.5%  魔力 可以召唤一个图腾的技能改为召唤两个图腾 每有 1 个图腾，你和你的图腾每秒便回复 1% 生命"]={nil,"每个图腾每秒使你回复 0.5%  魔力 可以召唤一个图腾的技能改为召唤两个图腾 每有 1 个图腾，你和你的图腾每秒便回复 1% 生命 "}c["你所施放诅咒的效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=10}},nil}
c["双持时，攻击速度提高 2%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=1,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["+5% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=5}},nil}
c["攻击和法术附加 15-35 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=15},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=35}},nil}
c["暴击时触发 20 级的【雷霆万钧】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="LightningSpell"}}},nil}
c["召唤生物的最大生命提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=15}}}},nil}
c["+3% 持续流血伤害加成"]={{[1]={flags=0,keywordFlags=2097152,name="DotMultiplier",type="BASE",value=3}},nil}
c["当你放置图腾时，有 50% 几率获得 1 个暴击球"]={{},"当你放置时，获得 1 个暴击球 "}c["格挡后的短时间内 +1500 护甲"]={{[1]={[1]={type="Condition",var="BlockedRecently"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=1500}},nil}
c["获得护体时护甲提高 15%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="Armour",type="INC",value=15}},nil}
c["攻击附加 29 - 45 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=29},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=45}},nil}
c["格挡时回复 250 生命 +6% 攻击格挡率"]={{[1]={flags=1,keywordFlags=0,name="Life",type="BASE",value=6}},"格挡时回复 250   格挡率 "}c["暴走时驱散元素异常状态"]={nil,"暴走时驱散元素异常状态 "}c["格挡时回复 250 生命"]={nil,"格挡时回复 250 生命 "}c["攻击技能的火焰、冰霜、闪电伤害提高 12%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=12}},nil}
c["每秒回复 1.5% 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=1.5}},nil}
c["攻击速度提高 14%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=14}},nil}
c["获得 30 级的主动技能【清算】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=30,skillId="Reckoning"}}},nil}
c["召唤生物的攻击速度提高 3%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=3}}}},nil}
c["暴走状态时回复 20% 最大生命"]={nil,"暴走状态时回复 20% 最大生命 "}c["附加 23 - 35 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=23},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=35}},nil}
c["格挡后的短时间内 +1000 护甲"]={{[1]={[1]={type="Condition",var="BlockedRecently"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=1000}},nil}
c["护甲提高 160%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=160}},nil}
c["若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 4 把远程武器 {variant:2}若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 8 把远程武器"]={nil,"若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 4 把远程武器 {variant:2}若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 8 把远程武器 "}c["被击中时，你失去所有的耐力球"]={nil,"被击中时，你失去所有的耐力球 "}c["护甲提高 75%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=75}},nil}
c["持盾牌时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["感电效果提高 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=15}},nil}
c["击败魔法怪物后的物品稀有度提高 150% {variant:1}击败普通怪物的物品掉落数量提高 100%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=150}},"击败魔法怪物后的 {variant:1}击败普通怪物的物品掉落数量提高 100% "}c["你无法拥有非幻化类召唤生物"]={nil,"你无法拥有非幻化类 "}c["耐力球达到上限时获得【猛攻】状态"]={{[1]={[1]={stat="EnduranceCharges",thresholdStat="EnduranceChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Condition:Onslaught",type="FLAG",value=true}},nil}
c["额外 3% 几率掉落知识卷轴"]={{},""}c["此物品上装备的【混沌技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="chaos",value=2}}},nil}
c["-1 召唤图腾数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveTotemLimit",type="BASE",value=-1}},nil}
c["锤类攻击的命中值提高 20%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=20}},nil}
c["灵体的最大生命提高 75%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=75}}}},nil}
c["能量护盾偷取总回复上限翻倍。"]={{[1]={flags=0,keywordFlags=0,name="MaxEnergyShieldLeechRate",type="MORE",value=100}},nil}
c["当你成功格挡法术伤害时，有 10% 几率获得一个暴击球"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=10}},"当你成功时，获得一个暴击球 "}c["插槽内的的近战技能石范围扩大 15%"]={{[1]={[1]={addToSkill={keyword="melee",slotName="{SlotName}",type="SocketedIn"}},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=15}}}},nil}
c["你的移动速度加成不会让你减速至基础速度以下"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeedCannotBeBelowBase",type="FLAG",value=true}},nil}
c["药剂持续期间，近战物理总伤害额外提高 30%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=256,keywordFlags=0,name="PhysicalDamage",type="MORE",value=30}},nil}
c["无视诅咒数量上限，当格挡近战攻击时施放 15 级【惩戒】"]={nil,"无视诅咒数量上限，当格挡近战攻击时施放 15 级【惩戒】 "}c["受到【优雅】影响时，移动速度提高 15%"]={{[1]={[1]={type="Condition",var="AffectedBy优雅"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["你打出暴击时获得【秘术增强】 你的【召唤灵体】也会随你一起获得【秘术增强】"]={nil,"你打出暴击时获得【秘术增强】 你的【召唤灵体】也会随你一起获得【秘术增强】 "}c["+70 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=70}},nil}
c["愤怒狂灵的最大生命提高 90%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=90}}}},nil}
c["造成敌人晕眩的攻击和法术带有终结效果"]={nil,"造成敌人晕眩的攻击和法术带有终结效果 "}c["有 5% 几率使晕眩时间延长 1 倍 持锤时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="EnemyStunDuration",type="BASE",value=5}},"使延长 1 倍 伤害提高 14% "}c["受到【火焰净化】影响时，免疫点燃"]={nil,"受到【火焰净化】影响时，免疫点燃 "}c["你打出暴击时获得【秘术增强】"]={nil,"你打出暴击时获得【秘术增强】 "}c["每个被暴击的敌人给予你 1 个暴击球"]={nil,"每个被暴击的敌人给予你 1 个暴击球 "}c["+38 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=38}},nil}
c["施法速度提高 11%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=11}},nil}
c["召唤生物有 5% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=5}}}},nil}
c["击中时获得神圣球 +10 最大神圣球"]={{},"时获得神圣球  最大神圣球 "}c["+30 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=30}},nil}
c["+75 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=75}},nil}
c["低魔时受到的法术伤害提高 100%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=100}},"低魔时受到的 "}c["装备时触发等级 20 闪电圣盾"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="LightningAegis"}}},nil}
c["最大魔力提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=6}},nil}
c["武器攻击的冰霜伤害提高 40% {variant:3}攻击技能的冰霜伤害提高 40%"]={{[1]={flags=134217728,keywordFlags=0,name="ColdDamage",type="INC",value=40}},"攻击的 {variant:3}攻击技能的冰霜伤害提高 40% "}c["你造成的中毒将作用到你身上"]={nil,"你造成的中毒将作用到你身上 "}c["+470 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=470}},nil}
c["2% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=2}},nil}
c["非诅咒类光环的效果提高 13%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=13}},nil}
c["物品掉落数量提高 16%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=16}},nil}
c["近期内你若有过格挡，你和周围友军每秒回复 5% 生命"]={{},"你和周围友军"}c["武器攻击的闪电伤害提高 40% {variant:5}攻击技能的闪电伤害提高 40%"]={{[1]={flags=134217728,keywordFlags=0,name="LightningDamage",type="INC",value=40}},"攻击的 {variant:5}攻击技能的闪电伤害提高 40% "}c["+150 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=150}},nil}
c["格挡时喷洒焦油 近期内你若有过格挡，你和周围友军每秒回复 5% 生命"]={{},"格挡时喷洒焦油 你和周围友军"}c["被击中时，有 10% 几率获得双倍护甲效果"]={{[1]={flags=0,keywordFlags=262144,name="Armour",type="BASE",value=10}},"被时，获得双倍效果 "}c["移动速度降低 15%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-15}},nil}
c["受【精准】影响时免疫致盲 {variant:91}使用尊严时有 12% 几率造成双倍伤害"]={{[1]={[1]={type="Condition",var="UsedBy尊严"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=12}},"受【精准】影响时免疫致盲 {variant:91}造成双倍 "}c["攻击伤害的 0.6% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.6}},nil}
c["获得额外冰霜伤害， 其数值等同于物理伤害的 15%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=15}},nil}
c["你创建的奉献地面效果遗留消退时间为 4 秒"]={nil,"你创建的奉献地面效果遗留消退时间为 4 秒 "}c["药剂持续期间，你造成的中毒持续时间延长 75%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=75}},nil}
c["近战单手武器攻击的物理伤害提高 25%"]={{[1]={flags=301989888,keywordFlags=0,name="PhysicalDamage",type="INC",value=25}},nil}
c["该武器对被感电敌人的击中伤害提高 45%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Shocked"},flags=4,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["该武器对被冰冻敌人的击中伤害提高 45%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Frozen"},flags=4,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["此物品上装备的【冰霜技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="cold",value=1}}},nil}
c["每 3 秒，魔力药剂获得 1 充能"]={nil,"每 3 秒，魔力药剂获得 1 充能 "}c["攻击附加 15 - 30 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=15},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=30}},nil}
c["该武器对被点燃敌人的击中伤害提高 45%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Ignited"},flags=4,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["施法速度提高 4%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["附加 32 - 42 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=32},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=42}},nil}
c["该武器对被冰冻敌人的击中伤害提高 60%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Frozen"},flags=4,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["每秒受到等同 15% 最大生命的混沌伤害"]={{[1]={[1]={div=1,stat="Life",type="PerStat"},flags=0,keywordFlags=0,name="ChaosDegen",type="BASE",value=0.15}},nil}
c["附加 22 - 32 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=22},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=32}},nil}
c["附加 1 - 135 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=135}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["暴击球的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=20}},nil}
c["此物品上的技能石有 10% 几率使敌人逃跑"]={{},"使敌人逃跑 "}c["该武器击中时必定造成元素异常状态 该武器对被点燃敌人的击中伤害提高 60%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=134217728,keywordFlags=262144,name="Damage",type="INC",value=60}},"该击中时必定造成元素异常状态 该武器击中 "}c["召唤生物的移动速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}}}},nil}
c["物理伤害提高 220%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=220}},nil}
c["以多里亚尼的名义用 8000 名祭品之血浸染"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC多里亚尼",type="FLAG",value=true}},nil}
c["异灵魔侍获得【火之化身】"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="火之化身"}}}},nil}
c["你自己发动的技能无法造成伤害 召唤图腾数量上限+1"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="BASE",value=1}},"你自己发动的技能无法造成 召唤数量上限 "}c["法杖攻击的物理伤害提高 12%"]={{[1]={flags=8388608,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["物理伤害提高 115%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=115}},nil}
c["该武器击中时必定造成元素异常状态"]={nil,"该武器击中时必定造成元素异常状态 "}c["对被点燃敌人的伤害提高 15%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=15}},nil}
c["【未鉴定词缀】"]={nil,"【未鉴定词缀】 "}c["烙印技能伤害提高 12%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["受到【坚定】影响时，你被暴击时受到的额外伤害降低 40% {variant:16}受到【坚定】影响时，不受【脆弱】影响"]={{},"你被受到的"}c["该武器击中后造成的 50% 物理伤害转换为一种随机元素伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=50},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=50},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=50}},nil}
c["+240 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=240}},nil}
c["无法造成非火焰、冰霜、闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="DealNoPhysical",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="DealNoChaos",type="FLAG",value=true}},nil}
c["爪类攻击的暴击率提高 25%"]={{[1]={flags=262144,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["召唤生物的最大生命提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=10}}}},nil}
c["药剂持续期间，+75% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=75}},nil}
c["击败敌人时有 10% 几率获得【灵巧】状态 你的暴击伤害无法被反射"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE",value=10}},"击败敌人时获得【灵巧】状态 你的暴击无法被反射 "}c["持近战武器时，攻击技能造成的异常状态伤害提高 4%"]={{[1]={[1]={type="Condition",var="UsingMeleeWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=4}},nil}
c["图腾伤害提高 24%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=24}},nil}
c["双手近战武器攻击的物理伤害提高 12%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["持单手武器时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["攻击造成的物理伤害提高 14%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["获得等同武器物理伤害 300% 的随机一种额外火焰，冰霜，或者闪电伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=300},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=300},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=300}},nil}
c["该装备的攻击暴击率提高 63%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=63}},nil}
c["全局防御提高 100%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=100}},nil}
c["附加 118 - 255 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=118},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=255}},nil}
c["暴击时获得狂怒球"]={nil,"暴击时获得狂怒球 "}c["你从激活的先祖图腾获得的增益效果提高 50% 先祖图腾的激活范围扩大 100%"]={{},"你从激活的先祖获得的增益效果 先祖图腾的激活范围扩大 100% "}c["对低血敌人的攻击和法术总暴击率额外提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},flags=0,keywordFlags=0,name="CritChance",type="MORE",value=100}},nil}
c["照亮范围缩小 20%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=-20}},nil}
c["受到【活力】影响时，每击中一个敌人便会获得 +30 生命"]={{[1]={[1]={type="Condition",var="AffectedBy活力"},flags=0,keywordFlags=0,name="LifeOnHit",type="BASE",value=30}},nil}
c["锤类和短杖攻击的攻击速度提高 4%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["锤类和短杖攻击的暴击率提高 25%"]={{[1]={flags=1048576,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["攻击附加 10 - 14 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=14}},nil}
c["药剂持续期间，范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=25}},nil}
c["受到【元素净化】影响时，不受【元素要害】影响"]={nil,"受到【元素净化】影响时，不受【元素要害】影响 "}c["闪避值与护甲提高 220%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=220}},nil}
c["该装备的护甲与能量护盾提高 333%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=333}},nil}
c["+360 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=360}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["物理伤害提高 450%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=450}},nil}
c["最大耐力球达到上限时失去所有耐力球"]={nil,"最大耐力球达到上限时失去所有耐力球 "}c["法杖攻击的物理伤害提高 40%"]={{[1]={flags=8388608,keywordFlags=0,name="PhysicalDamage",type="INC",value=40}},nil}
c["攻击技能的范围效果扩大 20%"]={{[1]={flags=0,keywordFlags=65536,name="AreaOfEffect",type="INC",value=20}},nil}
c["物理伤害提高 500%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=500}},nil}
c["格挡时回复 +40 生命 {variant:2,3}格挡时回复 +48 生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=40}},"格挡时回复   {variant:2,3}格挡时回复 +48 生命 "}c["武器攻击的基础暴击几率为 8%"]={{[1]={flags=0,keywordFlags=0,name="WeaponBaseCritChance",type="OVERRIDE",value=8}},nil}
c["附加 35 - 70 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=35},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=70}},nil}
c["法术伤害提高 23%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=23}},nil}
c["击败敌人时有 5% 几率给予周围敌人【猛攻】状态 {variant:1}击败敌人时有 5% 几率获得不洁之力 3 秒"]={{},"击败敌人时给予周围敌人【猛攻】状态 {variant:1}击败敌人时有 5% 几率获得不洁之力 3 秒 "}c["对流血敌人的命中值 +500"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="Accuracy",type="BASE",value=500}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=24}},"攻击的 "}c["能量护盾回复速度提高 35%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=35}},nil}
c["+305 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=305}},nil}
c["召唤生物的移动速度提高 90%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=90}}}},nil}
c["召唤生物的移动速度提高 100%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=100}}}},nil}
c["魔侍的持续时间延长 175%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=175}},nil}
c["召唤生物的最大生命提高 35%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=35}}}},nil}
c["力量需求提高 25%"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="INC",value=25}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 25% {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 25%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=25}},"攻击的 {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 25% "}c["30% increased Radius of Curse Skills"]={nil,"30% increased Radius of Curse Skills "}c["对致盲的敌人时，攻击和法术暴击率提高 25%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=25}},nil}
c["+50 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=50}},nil}
c["附加 450 - 575 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=450},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=575}},nil}
c["周围友军获得每秒回复 2% 生命"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2},onlyAllies=true}}},nil}
c["终结燃烧中的敌人 当攻击使怪物点燃时，获得 1 个狂怒球"]={nil,"终结燃烧中的敌人 当攻击使怪物点燃时，获得 1 个狂怒球 "}c["投射物攻击技能的暴击率提高 50%"]={{[1]={[1]={skillType=1,type="SkillType"},[2]={skillType=3,type="SkillType"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["+60% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=60}},nil}
c["最大能量护盾提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=10}},nil}
c["受到的物理伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=10}},nil}
c["法术附加 52 - 79 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=52},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=79}},nil}
c["附加 475 - 600 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=475},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=600}},nil}
c["暴击球的持续时间延长 18%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=18}},nil}
c["物理伤害提高 295%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=295}},nil}
c["近战暴击会造成流血 {variant:3}暴击时有 50% 几率造成流血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=50}},"暴击会 {variant:3}造成流血 "}c["暴击时有 30% 几率致盲敌人 {variant:1,2}近战暴击会造成流血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=30}},"致盲敌人 {variant:1,2}暴击会 "}c["法术附加 40 - 70 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=40},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=70}},nil}
c["暴击时有 30% 几率致盲敌人"]={{},"致盲敌人 "}c["攻击技能的火焰、冰霜、闪电伤害提高 48%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=48}},nil}
c["从生命偷取中获得的每秒总恢复量提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=50}},nil}
c["暴击无法吸血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="CannotLeechLife",type="FLAG",value=true}},nil}
c["不受感电影响"]={nil,"不受感电影响 "}c["附加 15 - 25 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=25}},nil}
c["在【迷踪】状态时免疫元素异常状态 【迷踪】状态时有 10% 几率躲避法术伤害击中 在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态，-15% 抗性"]={{[1]={[1]={type="Condition",var="Phasing"},[2]={type="Condition",var="Phasing"},flags=2048,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=10}},"在免疫元素  在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态，-15% 抗性 "}c["你攻击的目标会反射 100 物理伤害 +2 武器攻击范围"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="BASE",value=2}},"你的目标会反射 100   武器攻击范围 "}c["装备和技能石的属性需求降低 25%"]={{[1]={flags=0,keywordFlags=0,name="GlobalAttributeRequirements",type="INC",value=-25}},nil}
c["提高 100% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=100}},nil}
c["+5 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=5}},nil}
c["药剂持续期间，攻击附加 35 - 130 基础闪电伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=35},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=130}},nil}
c["击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人 你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=262144,name="ImpaleChance",type="BASE",value=25}}}},"时嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20%  移动速度提高 8% "}c["你攻击的目标会反射 100 物理伤害"]={nil,"你攻击的目标会反射 100 物理伤害 "}c["召唤生物的最大生命提高 25%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=25}}}},nil}
c["每个暴击球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["承受投射物攻击造成的物理伤害 -25"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCountTaken",type="BASE",value=-25}},"物理伤害  "}c["此物品上的技能石受到 15 级的 粉碎 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=15,skillId="SupportPulverise"}}},nil}
c["此物品上的技能石受到 1 级的 血魔法 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportBloodMagic"}}},nil}
c["30% increased Radius of Curse Skills {variant:2,3}诅咒范围扩大 60%"]={{[1]={flags=0,keywordFlags=2,name="AreaOfEffect",type="INC",value=60}},"30% increased Radius of Curse Skills {variant:2,3} "}c["100% 的冰霜伤害转换为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageConvertToFire",type="BASE",value=100}},nil}
c["−25% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=-25}},nil}
c["对感电敌人的暴击几率提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["持长杖时 +35% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},[2]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=35}},nil}
c["左戒指栏位：每秒回复 40 魔力"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=40}},nil}
c["每级提高 1%火焰、冰霜、闪电伤害"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=1}},nil}
c["格挡时有 40% 几率使攻击者冰缓 4 秒"]={{},"格挡时使者冰缓 4 秒 "}c["每一级在击败敌人时获得 +1 生命"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="Life",type="BASE",value=1}},"击败敌人时  "}c["陷阱投掷速度降低 30%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=-30}},nil}
c["所有属性提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=10},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=10},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=10}},nil}
c["击中时有 7% 几率使敌人致盲 {variant:1,2}每一级在击败敌人时获得 +1 魔力"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=262144,name="Mana",type="BASE",value=7}},"时使敌人致盲 {variant:1,2}击败敌人时获得 +1  "}c["锤类攻击的命中值提高 8%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["每一级为你的攻击附加 1 - 2 基础物理伤害"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=1},[2]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=2}},nil}
c["过去 10 秒内你若成功格挡，则你和周围友军无法被晕眩 近期内你若有进行攻击，你和周围友军有 +10% 几率格挡攻击伤害"]={{[1]={flags=1,keywordFlags=0,name="BlockChance",type="BASE",value=10}},"过去 10 秒内你若成功格挡，则你和周围友军无法被晕眩 近期内你若有进行，你和周围友军伤害 "}c["受到【雷霆】影响时，伤害穿透 15% 闪电抗性"]={{[1]={[1]={type="Condition",var="AffectedBy雷霆"},flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=15}},nil}
c["地雷放置速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=8}},nil}
c["附加 65 - 105 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=65},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=105}},nil}
c["+35% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=35}},nil}
c["召唤生物有额外 8% 躲避击中几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=8}}}},nil}
c["附加 70 - 105 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=70},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=105}},nil}
c["心灵升华"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="心灵升华"}},nil}
c["若近期内你获得暴走状态，击败敌人时额外获得 1 个瓦尔灵魂"]={{},"若近期内你获得暴走状态，击败敌人时"}c["持盾牌时攻击造成的伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["药剂持续期间，使周围的敌人感电 {variant:9,10,11,12}药剂持续期间，使周围的敌人感电，他们受到的伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"使周围的敌人感电 {variant:9,10,11,12}使周围的敌人感电，他们 "}c["当插槽内全部为红色技能石时，获得【瓦尔冥约】"]={nil,"当插槽内全部为红色技能石时，获得【瓦尔冥约】 "}c["敌人死后爆炸，造成敌人生命 10% 的火焰伤害 击败敌人时回复 5% 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"敌人死后爆炸，造成敌人 火焰伤害 击败敌人时回复 5% 最大生命 "}c["你每拥有 1 个魔卫，你和你的召唤生物获得 1% 物理伤害减免"]={nil,"你每拥有 1 个魔卫，你和你的 1% 物理伤害减免 "}c["每个插槽内的红色技能石使攻击技能额外获得 5% 的物理伤害的额外火焰伤害"]={{},"每个插槽内的红色技能石使"}c["附加 75 - 110 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=75},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=110}},nil}
c["攻击技能的火焰伤害提高 24%"]={{[1]={flags=0,keywordFlags=65536,name="FireDamage",type="INC",value=24}},nil}
c["近期内你若有击败敌人，则 +60% 法术暴击伤害加成"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=2,keywordFlags=0,name="CritMultiplier",type="BASE",value=60}},nil}
c["魔像体型缩小 25%"]={{},"体型 "}c["剑类攻击的物理伤害提高 25%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=25}},nil}
c["燃烧伤害提高 25%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=25}},nil}
c["匕首攻击的命中值提高 20%"]={{[1]={flags=524288,keywordFlags=0,name="Accuracy",type="INC",value=20}},nil}
c["此物品上装备的【闪电技能石】等级 +3"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="lightning",value=3}}},nil}
c["【幻化之刃德尔维希】也会幻化一个【禅意苦行僧】的复制品"]={nil,"【幻化之刃德尔维希】也会幻化一个【禅意苦行僧】的复制品 "}c["击中流血敌人时有 10% 几率使其致盲 被你瘫痪的敌人受到的物理伤害提高 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="PhysicalDamageTaken",type="BASE",value=10}},"使其致盲 被你瘫痪的敌人提高 10% "}c["【幻化之刃德尔维希】在暴走结束时死亡"]={{},nil}
c["【幻化之刃德尔维希】会使你主手和副手武器装备栏失效"]={{},nil}
c["暴走时触发 15 级的【幻化之刃德尔维希】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=15,skillId="UniqueAnimateWeapon"}}},nil}
c["暴走 暴走时触发 15 级的【幻化之刃德尔维希】"]={nil,"暴走 暴走时触发 15 级的【幻化之刃德尔维希】 "}c["+100% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=100}},nil}
c["魔卫击败敌人时，产生的爆炸会造成火焰伤害"]={nil,"魔卫击败敌人时，产生的爆炸会造成火焰伤害 "}c["击败敌人有 20% 几率获得暴击球 {variant:23}击败敌人有 20% 几率时获得耐力球"]={{},"击败敌人获得暴击球 {variant:23}击败敌人有 20% 几率时获得耐力球 "}c["受到【奋锐光环】影响时，位于奉献地面之上的敌人受到的暴击几率提高 120%"]={{[1]={[1]={type="Condition",var="AffectedBy奋锐光环"},[2]={actor="enemy",type="ActorCondition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=120}},nil}
c["+20 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=20}},nil}
c["+30 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=30}},nil}
c["附加 3 - 7 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=3},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=7}},nil}
c["当你静止时，每秒获得 1 个狂怒球，耐力球或暴击球 移动时失去所有暴击球，耐力球和狂怒球"]={nil,"当你静止时，每秒获得 1 个狂怒球，耐力球或暴击球 移动时失去所有暴击球，耐力球和狂怒球 "}c["闪电伤害击中时有 18% 几率使敌人受到感电效果影响"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=18}},nil}
c["物品稀有度提高 90%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=90}},nil}
c["锤类和短杖攻击的伤害提高 18%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=18}},nil}
c["该装备的护甲与闪避提高 135%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=135}},nil}
c["每个耐力球可使范围效果扩大 3%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=3}},nil}
c["【闪电之捷】的增益效果提高 50%"]={{[1]={[1]={skillName="闪电之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=50}},nil}
c["你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 你拥有耐力球时，承受的元素伤害降低 5%"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=16384,name="ElementalDamageTaken",type="BASE",value=15}},"你或你的击败敌人时获得 1 个暴击球 降低 5% "}c["闪电伤害击中时有 20% 几率使敌人受到感电效果影响"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=20}},nil}
c["击败敌人时回复 3% 最大生命"]={nil,"击败敌人时回复 3% 最大生命 "}c["此物品上的技能石受到 10 级的 遥控地雷 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportRemoteMine"}}},nil}
c["装备于主手时，攻击额外连锁弹射 1 次"]={{[1]={[1]={num=1,type="SlotNumber"},flags=1,keywordFlags=0,name="ChainCountMax",type="BASE",value=1}},nil}
c["陷阱投掷速度提高 18%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=18}},nil}
c["狂怒球持续时间延长 18%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=18}},nil}
c["双手近战武器攻击的物理伤害提高 8%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["攻击速度提高 22%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=22}},nil}
c["敏捷提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=12}},nil}
c["药剂持续期间，使周围的敌人感电"]={nil,"药剂持续期间，使周围的敌人感电 "}c["对流血敌人的攻击伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=1,keywordFlags=262144,name="Damage",type="INC",value=40}},nil}
c["药剂回复的生命提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=20}},nil}
c["近战击中时有 10% 几率获得护体效果 受到你嘲讽的敌人所承受的伤害提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=256,keywordFlags=0,name="DamageTaken",type="BASE",value=10}}}},"击中时获得护体效果 受到你嘲讽的敌人所提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 移动速度提高 8% "}c["被击中时有 10% 几率制造一团烟雾 {variant:2,3}被击中时有 25% 几率制造一团烟雾"]={{},"被时制造一团烟雾 {variant:2,3}被击中时有 25% 几率制造一团烟雾 "}c["幻化类召唤生物的近战攻击会对对周围目标造成溅射伤害 幻化类召唤生物的近战攻击对周围目标造成的总伤害额外降低 50%"]={{}," "}c["你的技能造成元素异常状态时，扩散至周围敌人  半径：18 你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20%"]={{[1]={flags=2048,keywordFlags=0,name="AreaOfEffect",type="MORE"}},"你的技能造成元素时，扩散至周围敌人  ：18 你击中造成的冰缓必定使目标减速 10 "}c["攻击技能的火焰、冰霜、闪电伤害提高 55%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=55}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 55% {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 55%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=55}},"攻击的 {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 55% "}c["武器攻击的火焰、冰霜、闪电伤害提高 55%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=55}},"攻击的 "}c["当你身上没有狂怒球时，伤害提高 70%"]={{[1]={[1]={stat="FrenzyCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["附加 34 - 45 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=34},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=45}},nil}
c["+1 魔卫数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveZombieLimit",type="BASE",value=1}},nil}
c["击败敌人后 10 秒内持续承受 450 混沌伤害"]={nil,"击败敌人后 10 秒内持续承受 450 混沌伤害 "}c["击败敌人时有 10% 几率获得秘术增强"]={{},"击败敌人时获得秘术增强 "}c["每个暴击球可使法术伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["闪避值提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=20}},nil}
c["附加 34 - 45 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=34},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=45}},nil}
c["每 10 点奉献使自身受到的元素异常时间缩短 4% {variant:9}每 10 点奉献使自身受到诅咒的持续时间缩短 4%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},[2]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=2,name="Duration",type="INC",value=-4}},"自身受到的元素异常时间 {variant:9}自身受到的缩短 4% "}c["当你身上没有狂怒球时，伤害提高 80%"]={{[1]={[1]={stat="FrenzyCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="Damage",type="INC",value=80}},nil}
c["你获得【坚毅之心】时，物理伤害提高 100% 裂界之器"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},"你获得【坚毅之心】时， 裂界之器 "}c["击败敌人后有 25% 几率获得 1 个狂怒球"]={{},"击败敌人后获得 1 个狂怒球 "}c["晕眩时所有攻击伤害造成冰缓"]={nil,"晕眩时所有攻击伤害造成冰缓 "}c["受到【愤怒】影响时，+50% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Condition",var="AffectedBy愤怒"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},nil}
c["匕首攻击的伤害提高 8%"]={{[1]={flags=524288,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["狂怒球持续时间缩短 20%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=-20}},nil}
c["附加 38 - 50 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=38},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=50}},nil}
c["附加 38 - 50 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=38},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=50}},nil}
c["法术附加 50 - 100 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=50},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=100}},nil}
c["此物品上装备的【召唤生物技能石】等级 +3"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="minion",value=3}}},nil}
c["闪电伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=12}},nil}
c["你的攻击和法术无法被致盲的敌人所闪避"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=0,name="CannotBeEvaded",type="FLAG",value=true}},nil}
c["主手附加 190 - 220 基础火焰伤害"]={{[1]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=190},[2]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=220}},nil}
c["冰缓效果提高 18%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=18}},nil}
c["法术附加 60 - 110 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=60},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=110}},nil}
c["拥有 1 个额外的固有词缀"]={nil,"拥有 1 个额外的固有词缀 "}c["附加 100 - 200 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=100},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=200}},nil}
c["获得 +50% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=50}},nil}
c["物理伤害提高 135%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=135}},nil}
c["获得 +60% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=60}},nil}
c["附加 38 - 90 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=38},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=90}},nil}
c["范围内提高火焰抗性的天赋也会提高击败敌人时获得耐力球的概率"]={nil,"范围内提高火焰抗性的天赋也会提高击败敌人时获得耐力球的概率 "}c["可视为所有类型的单手近战武器"]={{[1]={flags=0,keywordFlags=0,name="WeaponData",type="LIST",value={key="countsAsAll1H",value=true}}},nil}
c["图腾获得你 50% 的护甲值 图腾所使用的技能击中时，有 20% 几率嘲讽敌人 图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害"]={{[1]={flags=0,keywordFlags=16384,name="Armour",type="BASE",value=50}},"获得你  图腾所使用的技能击中时，有 20% 几率嘲讽敌人 图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害 "}c["+15% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=15}},nil}
c["+120 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=120}},nil}
c["匕首攻击的攻击速度提高 3%"]={{[1]={flags=524289,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["投掷陷阱的技能受到血魔法辅助"]={{[1]={[1]={skillType=37,type="SkillType"},flags=0,keywordFlags=0,name="BloodMagic",type="FLAG",value=true}},nil}
c["弓类攻击的暴击率提高 20%"]={{[1]={flags=131072,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["移动速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=30}},nil}
c["攻击击中每个敌人会回复 +3 魔力"]={{[1]={flags=1,keywordFlags=0,name="ManaOnHit",type="BASE",value=3}},nil}
c["双持时，法术伤害提高 16%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["魔像施放技能的冷却速度提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=25}},nil}
c["+36% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=36}},nil}
c["附加 45 - 100 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=45},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=100}},nil}
c["双持攻击时 +15% 暴击伤害加成"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["+20 力量与智慧"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=20}},nil}
c["受到【迅捷】影响时，移动技能的冷却速度提高 50%"]={{[1]={[1]={type="Condition",var="AffectedBy迅捷"},flags=0,keywordFlags=8,name="CooldownRecovery",type="INC",value=50}},nil}
c["陷阱被敌人触发时，有 30% 几率获得 4 秒暗影迷踪 你的陷阱被敌人触发时回复 100 生命"]={{[1]={flags=0,keywordFlags=4096,name="Life",type="BASE",value=30}},"被敌人触发时，获得 4 秒暗影迷踪 你的陷阱被敌人触发时回复 100  "}c["附加 7 - 18 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=7},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=18}},nil}
c["该装备的物理伤害提高 155%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=155}},nil}
c["法杖攻击 +12% 暴击伤害加成"]={{[1]={flags=8388608,keywordFlags=0,name="CritMultiplier",type="BASE",value=12}},nil}
c["副手武器击败敌人时，有 25% 几率获得 1 个耐力球 狂怒球达到上限时，物理总伤害额外提高 10% 耐力球达到上限时，受到的物理伤害降低 10%"]={{[1]={[1]={type="Condition",var="OffHandAttack"},[2]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=25}},"击败敌人时，获得 1 个耐力球 物理总额外提高 10% 耐力球达到上限时，受到的物理伤害降低 10% "}c["无法使用头部装备"]={nil,"无法使用头部装备 "}c["获得等同 15% 物理攻击伤害的火焰伤害"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=15}},nil}
c["此物品上的技能石受到 1 级的 和善 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportGenerosity"}}},nil}
c["每个地雷可使你的技能范围扩大  8% 放置地雷时有 20% 几率额外再放置 1 个"]={{},"每个可使你的技能范围扩大  8% 放置地雷时额外再放置 1 个 "}c["附加 8 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=8},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=20}},nil}
c["反射的火焰、冰霜、闪电伤害降低 10% 武器造成的伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=-10}},"反射的 伤害穿透 5% 火焰、冰霜、闪电抗性 "}c["攻击与施法速度提高 9%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=9}},nil}
c["冰霜伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=12}},nil}
c["召唤生物对中毒的敌人造成伤害的 5% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="enemy",type="ActorCondition",var="Poisoned"},flags=4,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=5}}}},nil}
c["获得等同武器物理伤害 100% 的随机一种额外火焰，冰霜，或者闪电伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=100},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=100},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=100}},nil}
c["静止时获得【霸体】"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="Keystone",type="LIST",value="霸体"}},nil}
c["无魔力保留时，法术伤害提高 60%"]={{[1]={[1]={stat="ManaReserved",threshold=0,type="StatThreshold",upper=true},flags=2,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["召唤生物的伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=25}}}},nil}
c["药剂持续期间，获得不洁之力"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Condition:UnholyMight",type="FLAG",value=true}},nil}
c["召唤生物击中时有 60% 几率使目标中毒"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=60}}}},nil}
c["召唤生物击中敌人时会使其中毒 {variant:3}召唤生物击中时有 60% 几率使目标中毒"]={{},"敌人时会使其中毒 {variant:3}召唤生物击中时使目标中毒 "}c["每级提高 1% 混沌伤害"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=1}},nil}
c["附加 84 - 140 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=84},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=140}},nil}
c["锤类和短杖攻击的火焰、冰霜、闪电伤害提高 12%"]={{[1]={flags=1048576,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},nil}
c["装备于副手时有 8% 额外格挡几率"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=8}},nil}
c["+18 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=18}},nil}
c["当你晕眩 1 个敌人时，有 25% 几率获得 1 个耐力球 每个耐力球可使敌人被晕眩时间延长 10%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="EnemyStunDuration",type="BASE",value=25}},"当你晕眩 1 个敌人时，获得 1 个耐力球 延长 10% "}c["装备在主手时全局暴击率提高 80%"]={{[1]={[1]={type="Global"},[2]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=80}},nil}
c["被你感电的敌人施法速度降低 30%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=-30}},"被你感电的敌人 "}c["此物品上的技能石受到 1 级的【肉盾】辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportMinionDefensiveStance"}}},nil}
c["持近战武器时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingMeleeWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["范围内含的智慧和敏捷总计 40 点时，【元素打击】的火焰冷伤害额外降低 50% {variant:2}攻击技能的元素伤害提高 15%"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内含的和敏捷总计 40 点时，【元素打击】的火焰冷伤害"}c["召唤生物有 +350 点护甲"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Armour",type="BASE",value=350}}}},nil}
c["每个蓝色插槽会使你物理攻击伤害的 0.3% 转化为魔力偷取"]={{[1]={[1]={type="Multiplier",var="BlueSocketIn{SlotName}"},flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.3}},nil}
c["当你没有获得【霸体】时，攻击速度，施法速度和移动速度提高 30%"]={{[1]={[1]={neg=true,type="Condition",var="Have霸体Keystone"},flags=0,keywordFlags=0,name="Speed",type="INC",value=30},[2]={[1]={neg=true,type="Condition",var="Have霸体Keystone"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=30}},nil}
c["敏捷提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=6}},nil}
c["每个红色插槽会使你物理攻击伤害的 0.3% 转化为生命偷取"]={{[1]={[1]={type="Multiplier",var="RedSocketIn{SlotName}"},flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.3}},nil}
c["经验值获取降低 50% 物理攻击伤害的 0.4% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=-50}},"经验值获取 的 0.4% 转化为魔力偷取 "}c["【号召】冷却回复速度提高 50%"]={{[1]={[1]={skillName="号召",type="SkillName"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=50}},nil}
c["每个召唤的魔像可使魔像的伤害提高 20% 每个召唤的魔像可使你有 35% 几率避免元素异常状态"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=2048,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使魔像的 每个召唤的魔像可使你有 35% 几率避免元素 "}c["近期内你若使用过移动技能，则攻击和施法速度提高 20%"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["从盾牌获取的防御提高 40%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="Defences",type="INC",value=40}},nil}
c["移动速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["附加 92 - 154 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=92},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=154}},nil}
c["不再获得生命回复，将其回复效果套用于能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ZealotsOath",type="FLAG",value=true}},nil}
c["伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=18}},nil}
c["每 10 点奉献使对敌人施加的非伤害异常状态效果提高 3%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=3},[2]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=3},[3]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="EnemyFreezeEffech",type="INC",value=3}},nil}
c["该装备的攻击暴击率提高 28%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=28}},nil}
c["你的晕眩门槛由能量护盾计算，而不再基于生命"]={nil,"你的晕眩门槛由能量护盾计算，而不再基于生命 "}c["附加 1 - 65 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=65}},nil}
c["你受到 20 级【脆弱】的诅咒"]={{[1]={flags=0,keywordFlags=0,name="ExtraCurse",type="LIST",value={applyToPlayer=true,level=20,skillId="Vulnerability"}}},nil}
c["你受到 10 级【脆弱】的诅咒"]={{[1]={flags=0,keywordFlags=0,name="ExtraCurse",type="LIST",value={applyToPlayer=true,level=10,skillId="Vulnerability"}}},nil}
c["获得等同 10% 物理伤害的 1 个随机火焰、冰霜、闪电伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=10},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=10},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=10}},nil}
c["获得【灵巧】有 25% 几率失去一个暴击球"]={{},"获得【灵巧】失去一个暴击球 "}c["格挡法术伤害的几率等同于格挡攻击伤害的几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChanceIsBlockChance",type="FLAG",value=true}},nil}
c["法术伤害提高 83%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=83}},nil}
c["法术附加 1 - 70 基础闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=70}},nil}
c["近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 20%"]={{[1]={[1]={limit=20,limitTotal=true,type="Multiplier",var="TrapTriggeredRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}},nil}
c["空手时范围效果扩大 13%"]={{[1]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=13}},nil}
c["获得【召唤秘法先驱者】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={skillId="SummonHarbingerOfTheArcane"}}},nil}
c["击败敌人后有 15% 几率获得 1 个狂怒球"]={{},"击败敌人后获得 1 个狂怒球 "}c["斧类攻击的物理伤害提高 80%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=80}},nil}
c["每个召唤的魔像可使它们为你提供的增益效果提高 25%"]={{},"每个召唤的可使它们为你提供的增益效果 "}c["附加 80 - 180 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=80},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=180}},nil}
c["附加 87 - 127 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=87},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=127}},nil}
c["+70 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=70}},nil}
c["使用该武器击败敌人时，触发插槽内的召唤生物法术"]={nil,"使用该武器击败敌人时，触发插槽内的法术 "}c["冰霜抗性降低 55%"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="INC",value=-55}},nil}
c["在药剂持续期间，击败敌人会补充 3% 的生命 在药剂持续期间，击败敌人会补充 3% 的魔力"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Life",type="BASE",value=3}},"在击败敌人会补充  在击败敌人会补充 3% 的魔力 "}c["晕眩回复和格挡回复提高 15%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=15}},nil}
c["剑类攻击的伤害提高 20%"]={{[1]={flags=4194304,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["受到【活力】影响时，药剂的生命回复提高 70%"]={{[1]={[1]={type="Condition",var="AffectedBy活力"},flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=70}},nil}
c["闪电技能的施法速度提高 5%"]={{[1]={flags=16,keywordFlags=64,name="Speed",type="INC",value=5}},nil}
c["附加 91 - 130 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=91},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=130}},nil}
c["击败敌人时，召唤生物获得【不洁之力】，持续 5 秒"]={nil,"击败敌人时，【不洁之力】，持续 5 秒 "}c["魔力保留降低 2%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-2}},nil}
c["攻击击中每个敌人会回复 +2 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=2}},nil}
c["药剂持续时间延长 8%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=8}},nil}
c["周围的敌人会被恐吓"]={nil,"周围的敌人会被恐吓 "}c["物理攻击伤害的 5% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=5}},nil}
c["获得 15 级的的主动技能【血脉奉献】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=15,skillId="BloodOffering"}}},nil}
c["+68 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=68}},nil}
c["每个狂怒球每秒回复 0.5% 生命"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=0.5}},nil}
c["攻击附加 8 - 16 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=8},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=16}},nil}
c["+30% 火焰与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=30}},nil}
c["附加 2 - 6 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=2},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=6}},nil}
c["生命回复速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=20}},nil}
c["每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=3}}}},"每拥有一个， ，最多 30% "}c["攻击击中有 5% 几率致盲敌人"]={{}," 致盲敌人 "}c["受到【怨毒光环】影响时，不受【流血】影响"]={nil,"受到【怨毒光环】影响时，不受【流血】影响 "}c["低血时伤害提高 100%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Damage",type="INC",value=100}},nil}
c["击败敌人时回复 3% 最大魔力 【灼热光线】的光束长度延长 10%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=10}},"击败敌人时回复 3%  【灼热光线】的光束长度 "}c["持盾牌时攻击造成的物理伤害提高 12% "]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["附加 74 - 121 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=74},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=121}},nil}
c["护甲提高 150%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=150}},nil}
c["附加 1 - 230 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=230}},nil}
c["附加 74 - 121 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=74},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=121}},nil}
c["附加 74 - 121 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=74},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=121}},nil}
c["+5% 闪电抗性上限"]={{[1]={flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=5}},nil}
c["你击败的被点燃敌人将会被歼灭"]={nil,"你击败的被点燃敌人将会被歼灭 "}c["附加 74 - 121 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=74},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=121}},nil}
c["附加 98 - 140 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=98},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=140}},nil}
c["你获得【鸟之力量】或【鸟之斗魄】时有 25% 几率触发 20 级的【鸟之龙卷】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="AvianTornado"}}},nil}
c["持法杖时，攻击类技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingWand"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["锤类攻击的攻击速度提高 3%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["附加 28 - 40 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=28},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=40}},nil}
c["物理伤害提高 24%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["附加 1 - 250 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=250}},nil}
c["附加 1 - 70 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=70}},nil}
c["附加 98 - 140 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=98},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=140}},nil}
c["附加 28 - 40 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=28},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=40}},nil}
c["附加 98 - 140 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=98},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=140}},nil}
c["附加 28 - 40 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=28},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=40}},nil}
c["攻击速度提高 25%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=25}},nil}
c["附加 98 - 140 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=98},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=140}},nil}
c["药剂持续期间，物理伤害的 20% 转换为闪电伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=20}},nil}
c["受到魔侍的伤害提高 10%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=10}}}},"受到 "}c["范围效果扩大 75%，持续 5 秒"]={{[1]={[1]={type="Condition",var="PendulumOfDestructionAreaOfEffect"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=75}},nil}
c["附加 28 - 40 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=28},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=40}},nil}
c["敌人身上每个诅咒可使击中和异常状态的伤害提高 15%"]={{[1]={[1]={type="Multiplier",var="CurseOnEnemy"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=15}},nil}
c["附加 30 - 95 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=95}},nil}
c["+25% 几率被点燃"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=25}},"被 "}c["附加 100 - 158 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=100},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=158}},nil}
c["25% 的物理伤害转换为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=25}},nil}
c["【极地装甲】的增益效果提高 25%"]={{[1]={[1]={skillName="极地装甲",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=25}},nil}
c["总计消耗 200 点魔力后可以获得 1 个暴击球 每个暴击球每秒回复 2 魔力"]={nil,"总计消耗 200 点魔力后可以获得 1 个暴击球 每个暴击球每秒回复 2 魔力 "}c["获得 +24% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=24}},nil}
c["获得 +15% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=15}},nil}
c["对点燃敌人的近战物理伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=256,keywordFlags=262144,name="PhysicalDamage",type="INC",value=100}},nil}
c["召唤愤怒狂灵的持续时间延长 30%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=30}},nil}
c["点燃 1 个敌人后的短时间内，燃烧伤害提高 100%"]={{[1]={[1]={type="Condition",var="IgnitedEnemyRecently"},flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=100}},nil}
c["持续吟唱技能攻击和施法速度提高 3%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["获得 +12% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=12}},nil}
c["获得 +13% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=13}},nil}
c["地雷引爆速度提高 20% 每个地雷可以让周围敌人承受的伤害提高 2%，最多 10%"]={{[1]={flags=0,keywordFlags=8192,name="DamageTaken",type="INC",value=20}},"引爆速度 每个地雷可以让周围敌人提高 2%，最多 10% "}c["狂怒球持续时间缩短 40%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=-40}},nil}
c["获得 +16% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=16}},nil}
c["近期内你若被击中过，则火焰伤害提高 100%"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=100}},nil}
c["获得 +10% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=10}},nil}
c["获得 +11% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=11}},nil}
c["没有被点燃，冰冻，感电时，护甲提高 40%"]={{[1]={[1]={neg=true,type="Condition",varList={[1]="Ignited",[2]="Frozen",[3]="Shocked"}},flags=0,keywordFlags=0,name="Armour",type="INC",value=40}},nil}
c["击中时 30% 几率造成流血"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=30}},nil}
c["若范围内含有 40 点敏捷，【灵体投掷】每次击中时，伤害提高 5%"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="INC",value=5}},"若内含有 40 点，【灵体投掷】每次击中时，伤害 "}c["武器上的每个红色插槽使物理伤害提高 25%"]={{[1]={[1]={type="Multiplier",var="RedSocketIn{SlotName}"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=25}},nil}
c["最大能量护盾提高 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=50}},nil}
c["获得额外冰霜伤害， 其数值等同于物理伤害的 28%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=28}},nil}
c["获得 +18% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=18}},nil}
c["附加 4 - 7 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=7}},nil}
c["物理伤害提高 35%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=35}},nil}
c["当你格挡时，能量护盾有 20% 几率开始回复"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=20}},"当你格挡时，开始回复 "}c["击败受元素异常状态影响的敌人 提高 100% 药剂充能"]={{},"击败受元素影响的敌人  药剂充能 "}c["受到鬼魂的伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=10}},"受到鬼魂的 "}c["法杖攻击 +30% 暴击伤害加成"]={{[1]={flags=8388608,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["召唤生物有额外 5% 躲避击中几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=5}}}},nil}
c["每级 +1 魔力"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=1}},nil}
c["【召唤魔侍】可以召唤 2 个额外魔侍勇士 {variant:2}【召唤魔侍】可以召唤 4 个额外魔侍勇士"]={{},"可以召唤 2 个"}c["获得额外冰霜伤害， 其数值等同于物理伤害的 30%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=30}},nil}
c["获得额外冰霜伤害， 其数值等同于物理伤害的 10%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=10}},nil}
c["药剂持续期间，闪电伤害穿透 10% 闪电抗性"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=10}},nil}
c["+28% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=28},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=28}},nil}
c["当你消耗灵柩时，在之后的2秒内回复 8% 魔力"]={nil,"当你消耗灵柩时，在之后的2秒内回复 8% 魔力 "}c["药剂持续期间，物品稀有度提高 50%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},nil}
c["附加 4 - 8 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=8}},nil}
c["受到【她的拥抱】影响时，每级根据你的最大生命和最大护盾总量，造成每秒 0.5% 火焰伤害"]={{[1]={[1]={stat="Life",type="PerStat"},[2]={type="Multiplier",var="Level"},[3]={type="Condition",var="HerEmbrace"},flags=0,keywordFlags=0,name="FireDegen",type="BASE",value=0.005},[2]={[1]={stat="EnergyShield",type="PerStat"},[2]={type="Multiplier",var="Level"},[3]={type="Condition",var="HerEmbrace"},flags=0,keywordFlags=0,name="FireDegen",type="BASE",value=0.005}},nil}
c["点燃敌人时获得 3 秒【她的拥抱】效果"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainHerEmbrace",type="FLAG",value=true}},nil}
c["锤类攻击降低 10% 敌人晕眩门槛"]={{[1]={flags=1048576,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-10}},nil}
c["提高 100% 充能回复"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargeRecovery",type="INC",value=100}},nil}
c["每一级为你的攻击附加 2 - 3 基础物理伤害"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=2},[2]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=3}},nil}
c["此物品上装备的【捷技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="herald",value=2}}},nil}
c["无法获得暴击球"]={nil,"无法获得暴击球 "}c["药剂持续期间，闪电伤害的 20% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LightningDamageLifeLeech",type="BASE",value=20}},nil}
c["8% 的伤害优先从魔力扣除"]={{[1]={flags=0,keywordFlags=0,name="DamageTakenFromManaBeforeLife",type="BASE",value=8}},nil}
c["被击中时，每个耐力球可使你获得 2 秒的【猛攻】状态 {variant:3}被击中时，每个耐力球可使你获得 5 秒的【猛攻】状态"]={{},"被时， 秒的【猛攻】状态 {variant:3}被击中时，你获得 5 秒的【猛攻】状态 "}c["投射物速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=15}},nil}
c["晕眩回复和格挡回复降低 35%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-35}},nil}
c["图腾免疫火焰伤害 在你图腾周围，敌人造成的总伤害额外降低 8% 在你图腾周围，敌人承受的物理和火焰伤害提高 16%"]={{[1]={flags=0,keywordFlags=16384,name="FireDamage",type="BASE"}}," 在你周围，敌人承受的物理和提高 16% "}c["力量属性对近战攻击和投射物的物理伤害均会加成"]={{[1]={flags=0,keywordFlags=0,name="IronGrip",type="FLAG",value=true}},nil}
c["附加 7 - 12 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=7},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=12}},nil}
c["药剂持续期间，法术格挡率提高 8%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=8}},nil}
c["击败敌人时有 5% 几率获得不洁之力 3 秒"]={{},"击败敌人时获得不洁之力 3 秒 "}c["+20% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=20}},nil}
c["每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=3}}}},"每拥有一个， ，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20% "}c["此物品上的技能石受到 1 级的 多重打击 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportMultistrike"}}},nil}
c["晕眩回复和格挡回复降低 40%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-40}},nil}
c["火焰伤害提高 16%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=16}},nil}
c["+120 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=120}},nil}
c["附加 8 - 14 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=8},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=14}},nil}
c["双持或持盾牌时攻击伤害格挡几率 +1%"]={{[1]={[1]={type="Condition",varList={[1]="DualWielding",[2]="UsingShield"}},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=1}},nil}
c["物理伤害提高 5%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=5}},nil}
c["攻击速度提高 21%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=21}},nil}
c["每秒获得一个精神球 受到残暴打击后失去所有精神球"]={nil,"每秒获得一个精神球 受到残暴打击后失去所有精神球 "}c["使用此武器攻击击中时造成瘫痪"]={nil,"使用时造成瘫痪 "}c["混沌伤害的 0.2% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageLifeLeech",type="BASE",value=0.2}},nil}
c["你身上的增益效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="BuffEffectOnSelf",type="INC",value=10}},nil}
c["地雷暴击率提高 25%"]={{[1]={flags=0,keywordFlags=8192,name="CritChance",type="INC",value=25}},nil}
c["光环效果对友方没有作用"]={{[1]={flags=0,keywordFlags=0,name="SelfAurasCannotAffectAllies",type="FLAG",value=true}},nil}
c["持盾牌时法术伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["移动速度提高 6%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=6}},nil}
c["长杖攻击的攻击速度提高 8%"]={{[1]={flags=2097153,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["弓攻击附加 188 - 262 基础冰霜伤害"]={{[1]={flags=131072,keywordFlags=0,name="ColdMin",type="BASE",value=188},[2]={flags=131072,keywordFlags=0,name="ColdMax",type="BASE",value=262}},nil}
c["无法获得友方光环效果"]={{[1]={flags=0,keywordFlags=0,name="AlliesAurasCannotAffectSelf",type="FLAG",value=true}},nil}
c["低血时闪避值提高 +100"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=100}},nil}
c["最小物理攻击总伤害额外降低 35%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMin",type="MORE",value=-35}},nil}
c["每个耐力球提高 0.4% 每秒生命回复"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.4}},nil}
c["近期内你若被击中，攻击速度提高 25%"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=1,keywordFlags=0,name="Speed",type="INC",value=25}},nil}
c["+1 斧类的近战攻击范围"]={{[1]={flags=65536,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1}},nil}
c["受到【灰烬之捷】影响时，+1% 火焰抗性上限"]={{[1]={[1]={type="Condition",var="AffectedBy灰烬之捷"},flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=1}},nil}
c["+55 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=55}},nil}
c["+3% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=3}},nil}
c["击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=262144,name="MovementSpeed",type="BASE",value=25}}}},"时嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 提高 8% "}c["每个狂怒球会使承受的伤害提高 1%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=1}},nil}
c["+55% 非异常状态的持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NonAilmentChaosDotMultiplier",type="BASE",value=55}},nil}
c["药剂持续期间，有 10% 几率冰冻"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=10}},nil}
c["每个狂怒球会使承受的伤害提高 3%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=3}},nil}
c["每个狂怒球会使承受的伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=6}},nil}
c["受到的元素伤害有 50% 视为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageTakenAsChaos",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="LightningDamageTakenAsChaos",type="BASE",value=50},[3]={flags=0,keywordFlags=0,name="FireDamageTakenAsChaos",type="BASE",value=50}},nil}
c["附加 1 - 650 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=650}},nil}
c["附加 1 - 600 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=600}},nil}
c["地雷伤害提高 30%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=30}},nil}
c["命中值提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["近期内你若被击中，技能可以额外发射 2 个投射物"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=2}},nil}
c["静止时护甲提高 80%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="Armour",type="INC",value=80}},nil}
c["获得额外火焰伤害，其数值等同于 83% 剑类物理伤害"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=83}},nil}
c["坚毅之心"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="坚毅之心"}},nil}
c["当不处于低血或低魔状态时，混沌伤害无法穿透能量护盾"]={nil,"当不处于低血或低魔状态时，混沌伤害无法穿透能量护盾 "}c["你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命 【旗帜技能】不保留魔力 当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% 你和周围队友的移动速度提高 12%"]={{},"你和周围友军从你放置的旗帜中每个位阶能40% 提高 12% "}c["附加 5 - 50 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=50}},nil}
c["不再通过力量获得伤害加成，每 10 点力量会使近战伤害提高 3%"]={{[1]={flags=0,keywordFlags=0,name="StrDmgBonusRatioOverride",type="BASE",value=0.3}},nil}
c["生命回复速度提高 18%"]={{[1]={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=18}},nil}
c["攻击速度提高 45%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=45}},nil}
c["【雷霆】不保留魔力"]={{[1]={[1]={skillName="雷霆",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["近期内你若使用过移动技能，技能可以额外发射 2 个投射物"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=2}},nil}
c["击败被冰冻的敌人时有 50% 几率获得暴击球 每个暴击球为法术附加 15 - 25 基础冰霜伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=50}},"击败被的敌人时获得暴击球 附加 15 - 25 基础冰霜伤害 "}c["静止时 +1500 护甲"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=1500}},nil}
c["此物品上的技能石受到 15 级的 增大范围 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=15,skillId="SupportIncreasedAreaOfEffect"}}},nil}
c["+85 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=85}},nil}
c["火焰、冰霜、闪电伤害提高 16%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=16}},nil}
c["获得【女神的祝福】时无法被冰冻，冰缓，或点燃"]={nil,"获得【女神的祝福】时无法被冰冻，冰缓，或点燃 "}c["持续冰霜伤害效果提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="INC",value=30}},nil}
c["获得【女神的祝福】时有 33% 几率致盲周围敌人"]={{},"获得【女神的祝福】时致盲周围敌人 "}c["能量护盾全满时，技能魔力消耗降低 10%"]={{[1]={[1]={type="Condition",var="FullEnergyShield"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-10}},nil}
c["该装备的护甲与能量护盾提高 60%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=60}},nil}
c["获得额外火焰伤害，其数值等同于 99% 剑类物理伤害"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=99}},nil}
c["该装备的攻击暴击率提高 66%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=66}},nil}
c["附加 6 - 66 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=6},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=66}},nil}
c["【寒冰之捷】的魔力保留降低 40%"]={{[1]={[1]={skillName="寒冰之捷",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-40}},nil}
c["召唤生物在击中时威吓敌人 4 秒"]={nil,"在击中时威吓敌人 4 秒 "}c["受到【精准】影响时，攻击速度提高 15%"]={{[1]={[1]={type="Condition",var="AffectedBy精准"},flags=1,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["只能使用此武器造成伤害并点燃"]={nil,"只能使用此武器造成伤害并点燃 "}c["药剂持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=10}},nil}
c["被点燃敌人的燃烧加快 50%"]={{[1]={flags=0,keywordFlags=0,name="IgniteBurnFaster",type="INC",value=50}},nil}
c["+25% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=25}},nil}
c["+58 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=58}},nil}
c["先祖图腾的激活范围扩大 100% 当你有图腾存在时，范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="HaveTotem"},flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=100}},"先祖的激活范围 扩大 25% "}c["所有物品上装备的【闪电技能石】等级 +2"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keywordList={[1]="active_skill",[2]="lightning",[3]=0},value=2}}},nil}
c["空手时攻击附加 225 - 600 基础闪电伤害"]={{[1]={flags=16777216,keywordFlags=0,name="LightningMin",type="BASE",value="225"},[2]={flags=16777216,keywordFlags=0,name="LightningMax",type="BASE",value="600"}},nil}
c["处于魔力药剂持续时间内时，魔力回复速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=10}},"处于药剂持续时间内时，魔力回复速度 "}c["承受的持续物理伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenOverTime",type="INC",value=-10}},nil}
c["该装备的攻击暴击率提高 40%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["每秒对周围敌人造成 450 混沌伤害"]={nil,"每秒对周围敌人造成 450 混沌伤害 "}c["魔侍的移动速度提高 4%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=4}}}},nil}
c["双持时攻击格挡率提高 12%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=12}},nil}
c["生命偷取总回复上限提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="INC",value=10}},nil}
c["魔像在召唤后的 8 秒内伤害提高 45% 魔像的最大生命提高 22%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=45}}}},"在召唤后的 8 秒内 魔像的最大生命提高 22% "}c["【寒冰之捷】的增益效果提高 100%"]={{[1]={[1]={skillName="寒冰之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=100}},nil}
c["每拥有 1 个暴击球，有 10% 几率造成中毒"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=10}},nil}
c["该装备的护甲与能量护盾提高 225%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=225}},nil}
c["药剂持续期间，闪电伤害的 30% 转化为魔力偷取 {variant:5,6,7,8}药剂持续期间，闪电伤害的 20% 转化为魔力偷取"]={nil,"药剂持续期间，闪电伤害的 30% 转化为魔力偷取 {variant:5,6,7,8}药剂持续期间，闪电伤害的 20% 转化为魔力偷取 "}c["占用所有武器栏位 物理伤害提高 300%"]={{[1]={flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=300}},"占用所有栏位  "}c["持弓攻击附加 1 - 4 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=1},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=4}},nil}
c["在你图腾周围，敌人造成的总伤害额外降低 8% 在你图腾周围，敌人承受的物理和火焰伤害提高 16%"]={{[1]={flags=0,keywordFlags=16384,name="FireDamage",type="BASE"}}," 在你周围，敌人承受的物理和提高 16% "}c["你所施放诅咒的效果提高 15%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=15}},nil}
c["+190 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=190}},nil}
c["双持攻击时武器的物理伤害提高 40%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=40}},nil}
c["左戒指栏位：反射的火焰、冰霜、闪电伤害降低 30% {variant:3,4}左戒指栏位：反射的火焰、冰霜、闪电伤害降低 40%"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=-30}},"反射的 {variant:3,4}左戒指栏位：反射的火焰、冰霜、闪电伤害降低 40% "}c["附加 70 - 80 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=70},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=80}},nil}
c["近期你每消耗 200 魔力，技能的魔力消耗就提高 60%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=60}},"近期你每消耗 200 ，技能的魔力消耗就 "}c["附加 50 - 80 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=80}},nil}
c["附加 60 - 90 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=60},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=90}},nil}
c["附加 30 - 50 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=50}},nil}
c["附加 40 - 60 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=60}},nil}
c["附加 10 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=20}},nil}
c["附加 20 - 40 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=40}},nil}
c["附加 40 - 73 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=73}},nil}
c["+29% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=29}},nil}
c["每个暴击球提高 8% 每秒魔力回复"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=8}}," 每秒 "}c["每 450 点闪避值可使攻击伤害提高 1%"]={{[1]={[1]={div=450,stat="Evasion",type="PerStat"},flags=1,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["陷阱伤害提高 14%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=14}},nil}
c["附加 40 - 70 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=70}},nil}
c["命中值提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=18}},nil}
c["获得【女神的祝福】时攻击速度和移动速度提高 20%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},"获得【女神的祝福】时和移动速度 "}c["弓类技能的持续伤害效果提高 16%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=16}},nil}
c["攻击速度提高 16%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=16}},nil}
c["+12% 法术暴击伤害加成"]={{[1]={flags=2,keywordFlags=0,name="CritMultiplier",type="BASE",value=12}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["斧类攻击的物理伤害提高 24%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["范围内的天赋被卡鲁抑制"]={{[1]={flags=0,keywordFlags=0,name="致命的骄傲",type="FLAG",value=true}},nil}
c["最大能量护盾提高 20%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=20}},nil}
c["当移动时，魔力回复速度提高 40%"]={{[1]={[1]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=40}},nil}
c["技能魔力消耗提高 80%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=80}},nil}
c["剑类攻击 +30% 暴击伤害加成"]={{[1]={flags=4194304,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["双持攻击时武器的伤害提高 20%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["混沌技能的范围扩大 50%"]={{[1]={flags=0,keywordFlags=128,name="AreaOfEffect",type="INC",value=50}},nil}
c["狂怒球达到上限时，+450 命中值"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=450}},nil}
c["能量护盾的回复速度降低 40%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=-40}},nil}
c["每 10 点奉献使持续吟唱技能的伤害提高 4%"]={{[1]={[1]={skillType=58,type="SkillType"},[2]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="Damage",type="INC",value=4}},nil}
c["法杖攻击的命中值提高 10%"]={{[1]={flags=8388608,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["【电球】的持续时间缩短 15%"]={{[1]={[1]={skillName="电球",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=-15}},nil}
c["附加 98 - 178 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=98},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=178}},nil}
c["狂怒球达到上限时，+500 命中值"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=500}},nil}
c["当你没有狂怒球时，+50% 全局暴击伤害加成"]={{[1]={[1]={type="Global"},[2]={stat="FrenzyCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},nil}
c["+100 力量需求"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="BASE",value=100}},nil}
c["附加 115 - 205 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=115},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=205}},nil}
c["【复苏魔卫】不再需要灵枢 你复苏的魔卫视为灵枢"]={nil,"【复苏魔卫】不再需要灵枢 你复苏的魔卫视为灵枢 "}c["附加 4 - 19 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=19}},nil}
c["受到【灰烬之捷】影响时，伤害穿透 25% 火焰抗性"]={{[1]={[1]={type="Condition",var="AffectedBy灰烬之捷"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=25}},nil}
c["获得【神性】时失去所有神圣球"]={nil,"获得【神性】时失去所有神圣球 "}c["承受的范围伤害降低 8% 对燃烧的敌人，+30% 暴击加成"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Burning"},flags=512,keywordFlags=262144,name="DamageTaken",type="INC",value=-8}},"的 +30% 暴击加成 "}c["攻击击中有 20% 几率使敌人流血"]={{[1]={flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=20}},nil}
c["+60 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=60}},nil}
c["14% 法术格挡率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=14}},nil}
c["每个狂怒球可使移动速度提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=5}},nil}
c["力量提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=6}},nil}
c["匕首攻击的暴击率提高 40%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["附加 6 - 22 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=6},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=22}},nil}
c["命中值降低 15%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=-15}},nil}
c["攻击击中每个敌人会回复 +7 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=7}},nil}
c["你技能的非诅咒类光环效果提高 6%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=6}},nil}
c["攻击击中每个敌人会回复 +5 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=5}},nil}
c["+340 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=340}},nil}
c["该装备的攻击暴击率提高 23%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=23}},nil}
c["中毒 5 层以上的敌人被该武器攻击击中时，该武器附加 80 - 120 混沌伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",threshold=5,type="MultiplierThreshold",var="PoisonStack"},flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=80},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",threshold=5,type="MultiplierThreshold",var="PoisonStack"},flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=120}},nil}
c["此物品上装备的【移动技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="movement",value=2}}},nil}
c["攻击击中每个敌人会回复 +40 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=40}},nil}
c["斧类攻击的命中值提高 15%"]={{[1]={flags=65536,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["附加 45 - 140 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=45},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=140}},nil}
c["暴击不会必定造成冰冻"]={{[1]={flags=0,keywordFlags=0,name="CritsDontAlwaysFreeze",type="FLAG",value=true}},nil}
c["施法速度提高 3%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["10% 的物理伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToChaos",type="BASE",value=10}},nil}
c["你制造的灵柩的生命值提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=50}},"你制造的灵柩的值 "}c["当你拥有最大数量的狂怒球时，技能额外连锁弹射 1 次"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="ChainCountMax",type="BASE",value=1}},nil}
c["你只能从技能中得到一种非旗帜光环。 光环技能不能影响友军 你的光环技能对自身造成的总效果额外提高 50%"]={{}," "}c["+30 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=30}},nil}
c["击中低血的敌人时，伤害提高 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=20}},nil}
c["周围敌人的所有抗性提高 -10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-10}}},[2]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-10}}}},nil}
c["击败被冰冻的敌人时有 20% 几率获得 1 个狂怒球"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=20}},"击败被的敌人时获得 1 个狂怒球 "}c["附加 50 - 150 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=150}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["你造成的流血伤害生效速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="BleedFaster",type="INC",value=10}},nil}
c["攻击和法术附加 3 - 47 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=3},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=47}},nil}
c["召唤生物技能的魔力消耗降低 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-15}}}},nil}
c["不会承受反射的元素伤害"]={nil,"不会承受反射的元素伤害 "}c["近期内你若造成过伤害，则召唤生物伤害提高 70%"]={{[1]={[1]={type="Condition",var="HitRecently"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=70}}}},nil}
c["在【猛攻】状态期间闪避值提高 25%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=25}},nil}
c["图腾伤害提高 10%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=10}},nil}
c["+212 智慧需求"]={{[1]={flags=0,keywordFlags=0,name="IntRequirement",type="BASE",value=212}},nil}
c["你身上的光环效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffectOnSelf",type="INC",value=10}},nil}
c["护甲提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=50}},nil}
c["混沌伤害不能穿透能量护盾 {variant:1}−10 承受的混沌伤害"]={nil,"混沌伤害不能穿透能量护盾 {variant:1}−10 承受的混沌伤害 "}c["免疫冰缓"]={{[1]={flags=0,keywordFlags=0,name="AvoidChill",type="BASE",value=100}},nil}
c["你被感电的持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=50}},"你被感电的 "}c["附加 30 - 58 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=58}},nil}
c["斧类攻击的命中值提高 8%"]={{[1]={flags=65536,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["此物品上的技能石受到 12 级的 快速攻击 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=12,skillId="SupportFasterAttack"}}},nil}
c["每 10 点敏捷可使持续性物理伤害提高 2%"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=8,keywordFlags=0,name="PhysicalDamage",type="INC",value=2}},nil}
c["物理伤害提高 120%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=120}},nil}
c["-35 承受的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageTaken",type="BASE",value=-35}},nil}
c["被击中时承受 5 额外物理伤害 苦痛灵曲"]={{[1]={flags=0,keywordFlags=262144,name="PhysicalDamage",type="BASE",value=5}},"被时承受  苦痛灵曲 "}c["当你受到奋锐光环影响时，创造的【奉献地面】可以使敌人承受的伤害提高 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="OnConsecratedGround"},[2]={type="Condition",var="AffectedBy奋锐光环"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}}}},nil}
c["元素伤害提高 75%，持续 5 秒"]={{[1]={[1]={type="Condition",var="PendulumOfDestructionElementalDamage"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=75}},nil}
c["魔像免疫火焰、冰霜、闪电伤害 每个召唤的魔像可使你的伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}}}},"免疫 每个召唤的魔像可使你的伤害 "}c["30% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=30}},nil}
c["附加 35 - 65 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=35},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=65}},nil}
c["你受到的诅咒效果降低 40%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=-40}},nil}
c["受你至少 1 层蜘蛛网影响的敌人，所有抗性 -10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={threshold=1,type="MultiplierThreshold",var="Spider's WebStack"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-10}}},[2]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={threshold=1,type="MultiplierThreshold",var="Spider's WebStack"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-10}}}},nil}
c["此物品上的技能石受到 10 级的 快速攻击 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportFasterAttack"}}},nil}
c["法术暴击率提高 138%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=138}},nil}
c["每个耐力球可使被击中时受到的火焰、冰霜、闪电伤害降低 1%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="ElementalDamageTakenWhenHit",type="INC",value=-1}},nil}
c["击中点燃敌人时附加 2 - 66 基础闪电伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="LightningMin",type="BASE",value=2},[2]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="LightningMax",type="BASE",value=66}},nil}
c["击中时有 7% 几率使敌人致盲"]={{},"时使敌人致盲 "}c["当你或你的图腾使用法术击中 1 名敌人，便获得【秘术增强】效果 拥有【秘术增强】时免疫元素异常状态"]={nil,"当你或你的图腾使用法术击中 1 名敌人，便获得【秘术增强】效果 拥有【秘术增强】时免疫元素异常状态 "}c["15% 的物理伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToChaos",type="BASE",value=15}},nil}
c["每连锁弹射 1 次，投射物获得额外混沌伤害，其数值等同于非混沌伤害的 20%"]={{[1]={[1]={stat="Chain",type="PerStat"},flags=1024,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=20}},nil}
c["物理伤害提高 88%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=88}},nil}
c["每级获得每秒回复 1 生命"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=1}},nil}
c["击中时有 60% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=60}},nil}
c["此物品上的技能石受到 16 级的 技能陷阱化 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=16,skillId="SupportTrap"}}},nil}
c["攻击击中时使敌人中毒 {variant:4}击中时有 60% 几率使敌人中毒"]={{[1]={flags=1,keywordFlags=0,name="PoisonChance",type="BASE",value=60}},"击中时 {variant:4}击中时使敌人中毒 "}c["攻击击中时使敌人中毒"]={nil,"攻击击中时使敌人中毒 "}c["20% 的物理伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToChaos",type="BASE",value=20}},nil}
c["匕首攻击的暴击有 40% 几率使敌人中毒"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=524288,keywordFlags=0,name="PoisonChance",type="BASE",value=40}},nil}
c["攻击击中每个敌人会回复 +20 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=20}},nil}
c["全局防御提高 22%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=22}},nil}
c["该装备的物理伤害提高 90%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=90}},nil}
c["击碎敌人时有 50% 几率额外获得 1 个瓦尔灵魂"]={{},"击碎敌人时额外获得 1 个灵魂 "}c["低血时攻击速度提高 25%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=1,keywordFlags=0,name="Speed",type="INC",value=25}},nil}
c["召唤生物的施法速度提高 16%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=16}}}},nil}
c["移动时每有 1 个狂怒球，则每秒受到 400 冰霜伤害"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},[2]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="ColdDegen",type="BASE",value=400}},nil}
c["闪电伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=15}},nil}
c["从盾牌获取的防御提高 25%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="Defences",type="INC",value=25}},nil}
c["低血时命中值提高 100%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=100}},nil}
c["+1 狂怒球数量下限"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesMin",type="BASE",value=1}},nil}
c["每 10 点力量提高 2% 能量护盾"]={{[1]={[1]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=2}},nil}
c["最大魔力降低 15%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-15}},nil}
c["承受投射物的攻击时，护甲提高 200%"]={{[1]={flags=0,keywordFlags=65536,name="ProjectileCountTaken",type="INC",value=200}},"的，护甲 "}c["攻击击中每个敌人会回复 +3 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=3}},nil}
c["近期内你若有晕眩敌人，则范围效果扩大 10%"]={{[1]={[1]={type="Condition",var="StunnedEnemyRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},nil}
c["近战攻击暴击率提高 50%"]={{[1]={flags=257,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["附加 20 - 50 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=50}},nil}
c["每有 1 个地图物品属性影响该地区，则攻击速度提高 3% 每有 1 个地图物品属性影响该地区，则攻击伤害提高 6%"]={{[1]={flags=1,keywordFlags=0,name="Str",type="INC",value=3},[2]={flags=1,keywordFlags=0,name="Dex",type="INC",value=3},[3]={flags=1,keywordFlags=0,name="Int",type="INC",value=3}},"每有 1 个地图物品影响该地区，则速度 每有 1 个地图物品属性影响该地区，则攻击伤害提高 6% "}c["当你获得【火之化身】时，50% 的物理伤害转换为火焰伤害"]={{[1]={[1]={type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=50}},nil}
c["地雷暴击率提高 50%"]={{[1]={flags=0,keywordFlags=8192,name="CritChance",type="INC",value=50}},nil}
c["攻击和法术附加 20-30 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=20},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=30}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 28%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=28}},nil}
c["对满血敌人的晕眩持续时间延长 50%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="FullLife"},flags=0,keywordFlags=262144,name="EnemyStunDuration",type="INC",value=50}},nil}
c["拥有魔像时，伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"拥有时， "}c["使用药剂时，失去从噬魂者获得的效果"]={nil,"使用药剂时，失去从噬魂者获得的效果 "}c["物理伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},nil}
c["每 25 点敏捷可使攻击速度提高 1%"]={{[1]={[1]={div=25,stat="Dex",type="PerStat"},flags=1,keywordFlags=0,name="Speed",type="INC",value=1}},nil}
c["+10% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=10}},nil}
c["+175 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=175}},nil}
c["每 10 点智慧可以为攻击附加 1 - 6 基础闪电伤害"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=6}},nil}
c["智慧提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=12}},nil}
c["拥有最大数量的狂怒球时，攻击有 60% 几率使敌人中毒"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=1,keywordFlags=0,name="PoisonChance",type="BASE",value=60}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 30% {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=30}},"攻击的 {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 30% "}c["+55 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=55}},nil}
c["击败敌人时有 25% 几率触发 20 级的【幻化武器】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillId="幻化武器"}}},nil}
c["攻击击中每个敌人会回复 +46 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=46}},nil}
c["附加 1 - 55 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=55}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 23%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=23}},nil}
c["使用此武器攻击时，每 10 点智慧附加 1 - 5 基础闪电伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=5}},nil}
c["每 10 点智慧可以为攻击附加 1 - 3 基础闪电伤害"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=3}},nil}
c["召唤生物的伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},nil}
c["击败中毒的敌人时，可使周围敌人中毒 击败中毒的敌人时，周围友军每秒回复 200 生命"]={nil,"击败中毒的敌人时，可使周围敌人中毒 击败中毒的敌人时，周围友军每秒回复 200 生命 "}c["药剂持续期间，持续伤害提高 33%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=8,keywordFlags=0,name="Damage",type="INC",value=33}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 25%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=25}},"攻击的 "}c["攻击击中每个敌人会回复 +12 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=12}},nil}
c["血姿态下击中稀有或传奇敌人有 25% 的几率得到一个挑战球 当处于沙姿态时，击败敌人获得一个挑战球"]={{},"血姿态下稀有或传奇敌人有 几率得到一个挑战球 当处于沙姿态时，击败敌人获得一个挑战球 "}c["---------------------------- 【*】上面这条词缀游戏中是会换行的，如果从游戏中复制或导入，那么需要手动修改为1行"]={nil,"---------------------------- 【*】上面这条词缀游戏中是会换行的，如果从游戏中复制或导入，那么需要手动修改为1行 "}c["生命偷取会套用于能量护盾"]={{[1]={flags=0,keywordFlags=0,name="GhostReaver",type="FLAG",value=true}},nil}
c["近期内你若有消耗灵柩，则伤害提高 30%"]={{[1]={[1]={type="Condition",var="ConsumedCorpseRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["附加 1 - 200 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=200}},nil}
c["附加 1 - 80 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=80}},nil}
c["附加 1 - 50 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=50}},nil}
c["双持爪时攻击格挡率提高 8%"]={{[1]={[1]={type="Condition",var="DualWieldingClaws"},flags=0,keywordFlags=0,name="BlockChance",type="INC",value=8}},nil}
c["你被冰缓的持续时间缩短 20% {variant:2}50% 几率避免被冰缓"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-20}},"你被冰缓的 {variant:2}50% 几率避免被冰缓 "}c["弓类攻击的伤害提高 20%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["护体状态下，攻击速度提高 10%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["双持攻击时武器暴击率提高 25%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["双持爪时攻击格挡率提高 10%"]={{[1]={[1]={type="Condition",var="DualWieldingClaws"},flags=0,keywordFlags=0,name="BlockChance",type="INC",value=10}},nil}
c["攻击击中每个敌人会回复 +31 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=31}},nil}
c["你的法术击中每个敌人会回复 +7 生命"]={{[1]={flags=2,keywordFlags=0,name="LifeOnHit",type="BASE",value=7}},nil}
c["持盾牌时攻击造成的伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["每 5% 的攻击格挡率会使法术伤害提高 6%"]={{[1]={[1]={div=5,stat="BlockChance",type="PerStat"},flags=2,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["冰霜伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=15}},nil}
c["你的法术击中每个敌人会回复 +8 生命"]={{[1]={flags=2,keywordFlags=0,name="LifeOnHit",type="BASE",value=8}},nil}
c["法术暴击率提高 40%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["对被点燃敌人附加 15 - 25 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=25}},"对被 "}c["暴击率特别幸运"]={{[1]={flags=0,keywordFlags=0,name="CritChanceLucky",type="FLAG",value=true}},nil}
c["每 1 个聚光之石可使魔力提高 15"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["攻击击中每个敌人会回复 +25 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=25}},nil}
c["图腾伤害降低 50%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=-50}},nil}
c["攻击击中每个敌人会回复 +15 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=15}},nil}
c["使用此武器击中敌人立即获得生命偷取"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="InstantLifeLeech",type="FLAG",value=true}},nil}
c["附加 10 - 12 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=12}},nil}
c["附加 18 - 35 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=18},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=35}},nil}
c["攻击技能的冰霜伤害提高 12%"]={{[1]={flags=0,keywordFlags=65536,name="ColdDamage",type="INC",value=12}},nil}
c["每 4 层怒火有 1% 几率造成双倍伤害"]={{[1]={[1]={div=4,type="Multiplier",var="Rage"},flags=0,keywordFlags=0,name="DoubleDamageChance",type="BASE",value=1}},nil}
c["使用瓦尔技能时，获得【迷踪】状态，持续 3 秒 {variant:2}使用瓦尔技能时，获得【迷踪】状态，持续 10 秒"]={nil,"使用瓦尔技能时，获得【迷踪】状态，持续 3 秒 {variant:2}使用瓦尔技能时，获得【迷踪】状态，持续 10 秒 "}c["获得 5 级的主动技能【冻伤】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=5,skillId="Frostbite"}}},nil}
c["最大魔力提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=18}},nil}
c["此物品上装备的【魔像技能石】等级 +3"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="golem",value=3}}},nil}
c["近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 50%"]={{[1]={[1]={type="Condition",var="KilledAffectedByDotRecently"},flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=50},[2]={[1]={type="Condition",var="KilledAffectedByDotRecently"},flags=0,keywordFlags=0,name="ManaRecoveryRate",type="INC",value=50},[3]={[1]={type="Condition",var="KilledAffectedByDotRecently"},flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=50}},nil}
c["该武器击中致盲敌人时，附加 157 - 210 基础火焰伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=7,keywordFlags=0,name="FireMin",type="BASE",value="157"},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=7,keywordFlags=0,name="FireMax",type="BASE",value="210"}},nil}
c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球"]={{},"击败敌人时获得 1 个狂怒球和 1 个暴击球 "}c["+25% 几率中毒 中毒时 +3% 全部抗性上限"]={{[1]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=1048576,name="FireResistMax",type="BASE",value=25},[2]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=1048576,name="ColdResistMax",type="BASE",value=25},[3]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=1048576,name="LightningResistMax",type="BASE",value=25},[4]={[1]={type="Condition",var="Poisoned"},flags=0,keywordFlags=1048576,name="ChaosResistMax",type="BASE",value=25}}," +3%  "}c["20% 几率击中时造成瘫痪 击中时有 20% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=262144,name="PoisonChance",type="BASE",value=20}},"时造成瘫痪 击中时有 20% 几率 "}c["受到【雷霆】影响时，闪电伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy雷霆"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=60}},nil}
c["周围每有 1 个灵柩，你和周围友军每秒回复 5 魔力，最多 50"]={{[1]={[1]={limit=50,limitTotal=true,type="Multiplier",var="NearbyCorpse"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=5}}}},nil}
c["闪避值提高 190%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=190}},nil}
c["此物品上的技能石受到 血魔法 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="SkillBloodMagic",type="FLAG",value=true}},nil}
c["专注的冷却回复速度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=25}},"专注的 "}c["插上 1 个红色技能石时获得 +100% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=100}},"插上 1 个红色技能石时  "}c["过去 10 秒内格挡的每个攻击可使你的物理伤害提高 8% 过去 10 秒内你若成功格挡传奇怪物，则物理伤害提高 80% 在过去 10 秒内，你每格挡一次攻击或法术，攻击伤害格挡几率 +1%"]={{[1]={[1]={type="Condition",var="BlockedHitFromUniqueEnemyInPast10Sec"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},"过去 10 秒内格挡的每个可使你的 物理伤害提高 80% 在过去 10 秒内，你每格挡一次攻击或法术，攻击伤害格挡几率 +1% "}c["陷阱暴击率提高 20%"]={{[1]={flags=0,keywordFlags=4096,name="CritChance",type="INC",value=20}},nil}
c["战吼的增益效果提高 50%"]={{[1]={flags=0,keywordFlags=4,name="BuffEffect",type="INC",value=50}},nil}
c["击中时触发 1 级的【深渊战吼】 {variant:5}战吼的增益效果提高 50%"]={{[1]={flags=0,keywordFlags=262148,name="BuffEffect",type="INC",value=50}},"时触发 1 级的【深渊战吼】 {variant:5} "}c["【鸟之力量】的持续时间 +2 秒"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=2}},"【鸟之】的持续时间  秒 "}c["地雷投掷速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=4}},nil}
c["图腾免疫火焰伤害 图腾获得你 50% 的护甲值 图腾所使用的技能击中时，有 20% 几率嘲讽敌人 图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害"]={{[1]={flags=0,keywordFlags=16384,name="FireDamage",type="BASE",value=50}},"免疫 图腾获得你 护甲值 图腾所使用的技能击中时，有 20% 几率嘲讽敌人 图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害 "}c["受到【精准】影响时，+50% 暴击伤害加成"]={{[1]={[1]={type="Condition",var="AffectedBy精准"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},nil}
c["此物品上的技能石有 10% 几率使敌人逃跑 {variant:4,5}击中时触发 1 级的【深渊战吼】"]={{},"使敌人逃跑 {variant:4,5}时触发 1 级的【深渊战吼】 "}c["当你没有获得【元素超载】时，获得【坚毅之心】 {variant:2}你获得【坚毅之心】时，物理伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},"当你没有获得【元素超载】时，获得【坚毅之心】 {variant:2}你获得【坚毅之心】时， "}c["使用该武器时，敌人晕眩门槛降低 10%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-10}},nil}
c["击败敌人时回复 5% 最大生命 击败敌人会回复自身 5% 最大能量护盾"]={nil,"击败敌人时回复 5% 最大生命 击败敌人会回复自身 5% 最大能量护盾 "}c["召唤生物有额外 11% 躲避击中几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=11}}}},nil}
c["可以从决斗者的起点配置天赋"]={{},nil}
c["物理攻击伤害的 3% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=3}},nil}
c["攻击与施法速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["每隔 5 秒，在之后 1 秒内回复 20% 最大生命"]={nil,"每隔 5 秒，在之后 1 秒内回复 20% 最大生命 "}c["25% 机率焦灼敌人"]={nil,"25% 机率焦灼敌人 "}c["攻击击中每个敌人会回复 +19 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=19}},nil}
c["此物品上的技能石受到 30 级的钢铁意志辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=30,skillId="SupportIronWill"}}},nil}
c["不会承受反射的物理伤害"]={nil,"不会承受反射的物理伤害 "}c["近战攻击会造成流血"]={nil,"近战攻击会造成流血 "}c["击败敌人时回复 2% 最大生命 击败敌人会回复自身 2% 最大能量护盾"]={nil,"击败敌人时回复 2% 最大生命 击败敌人会回复自身 2% 最大能量护盾 "}c["反射 81 物理伤害给近战攻击者"]={{},nil}
c["投掷陷阱类技能的魔力消耗降低 20% 投掷地雷的技能魔力保留降低 20%"]={{[1]={flags=0,keywordFlags=4096,name="ManaCost",type="INC",value=-20}},"投掷类 投掷地雷的技能魔力保留降低 20% "}c["+35% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=35}},nil}
c["法术附加 6 - 9 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=6},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=9}},nil}
c["反射 90 物理伤害给近战攻击者"]={{},nil}
c["附加 22 - 33 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=22},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=33}},nil}
c["此物品上的技能石受到 12 级的 护体 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=12,skillId="SupportFortify"}}},nil}
c["攻击击中每个敌人会回复 +44 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=44}},nil}
c["闪避值提高 14%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=14}},nil}
c["近期内你若有使用战吼，你和周围友军的攻击，施法和移动速度提高 10%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=10}}},[2]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}}}},nil}
c["盾牌提供的能量护盾提高 60%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=60}},nil}
c["攻击附加 16 - 29 基础混沌伤害"]={{[1]={flags=0,keywordFlags=65536,name="ChaosMin",type="BASE",value=16},[2]={flags=0,keywordFlags=65536,name="ChaosMax",type="BASE",value=29}},nil}
c["召唤生物的攻击速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=4}}}},nil}
c["受【怨毒光环】影响时，+22% 持续伤害加成 {variant:74}受到【怨毒光环】影响时，生命和能量护盾回复率提高 20%"]={{[1]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="DotMultiplier",type="BASE",value=22}},"受【怨毒光环】影响时，  {variant:74}生命和能量护盾回复率提高 20% "}c["攻击击中每个敌人会回复 +21 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=21}},nil}
c["敌人被冰缓的持续时间延长 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=40}},nil}
c["你的火焰伤害可以感电但无法点燃"]={{[1]={flags=0,keywordFlags=0,name="FireCanShock",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="FireCannotIgnite",type="FLAG",value=true}},nil}
c["【召唤圣物】的冷却恢复速度降低 23%"]={{[1]={[1]={skillName="召唤圣物",type="SkillName"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=-23}},nil}
c["身上未装备已腐化的物品时，每秒回复 100 生命"]={{[1]={[1]={threshold=0,type="MultiplierThreshold",upper=true,var="CorruptedItem"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=100}},nil}
c["【召唤圣物】的冷却恢复速度降低 25%"]={{[1]={[1]={skillName="召唤圣物",type="SkillName"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=-25}},nil}
c["+1 召唤圣物数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveHolyRelicLimit",type="BASE",value=1}},nil}
c["陷阱和地雷击中时，有 25% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=12288,name="PoisonChance",type="BASE",value=25}},nil}
c["对感电敌人的击中伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=40}},nil}
c["地雷投掷速度降低 13%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=-13}},nil}
c["每装备 1 个被腐化的物品时，技能的总魔力消耗 -2 【未鉴定词缀】"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=-2}},"每装备 1 个被腐化的物品时，  【未鉴定词缀】 "}c["暴击时有 10% 几率获得暴击球"]={{},"获得暴击球 "}c["地雷组装速度提高 50% {variant:2}地雷引爆速度提高 50%"]={{},"组装速度 {variant:2}地雷引爆速度提高 50% "}c["地雷组装速度提高 50%"]={{},"组装速度 "}c["攻击冰冻目标时附加 10 - 15 基础物理伤害"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=1,keywordFlags=0,name="PhysicalMax",type="BASE",value=15}},"目标时 "}c["弓类攻击的暴击率提高 15%"]={{[1]={flags=131072,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["该装备的闪避与能量护盾提高 350%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=350}},nil}
c["爪类攻击的攻击速度提高 10%"]={{[1]={flags=262145,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["地雷投掷速度降低 15%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=-15}},nil}
c["地雷放置速度降低 15%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=-15}},nil}
c["使用时回复生命上限 75% 的生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=75}},"使用时回复上限 生命 "}c["若你至少拥有 800 点敏捷，可以投掷地雷的技能就会最多额外投掷 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Dex",type="BASE"}},"若你至少拥有 800 点，可以就会最多"}c["中毒持续总时间额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="MORE",value=-50}},nil}
c["Critical Strikes deal 50% increased Lightning Damage"]={nil,"50% increased Lightning Damage "}c["若你至少拥有 800 点智慧，可以投掷地雷的技能就会最多额外投掷 1 个地雷 {variant:2}若你至少拥有 800 点敏捷，可以投掷地雷的技能就会最多额外投掷 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Int",type="BASE"}},"若你至少拥有 800 点，可以就会最多"}c["怒火带来的效果翻倍"]={{[1]={flags=0,keywordFlags=0,name="Multiplier:RageEffect",type="BASE",value=1}},nil}
c["若你至少拥有 800 点智慧，可以投掷地雷的技能就会最多额外投掷 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Int",type="BASE"}},"若你至少拥有 800 点，可以就会最多"}c["+50 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=50}},nil}
c["受到【寒冰之捷】影响时，+60% 冰霜抗性"]={{[1]={[1]={type="Condition",var="AffectedBy寒冰之捷"},flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=60}},nil}
c["晕眩回复和格挡回复提高 30%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=30}},nil}
c["魔像的最大生命提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=20}}}},nil}
c["若你至少拥有 500 点敏捷，可以放置地雷的技能就会最多额外放置 1 个地雷 {variant:2}若你至少拥有 800 点智慧，可以投掷地雷的技能就会最多额外投掷 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Dex",type="BASE"}},"若你至少拥有 500 点，可以放置的技能就会最多"}c["攻击击中流血的敌人时瘫痪敌人 击中流血敌人时有 10% 几率使其致盲"]={{},"击中流血的敌人时瘫痪敌人 击中使其致盲 "}c["若你至少拥有 500 点敏捷，可以放置地雷的技能就会最多额外放置 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Dex",type="BASE"}},"若你至少拥有 500 点，可以放置的技能就会最多"}c["召唤生物每秒回复 1% 生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}}}},nil}
c["召唤生物获得 +8% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=8}}}},nil}
c["17 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=17}},nil}
c["+16 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=16}},nil}
c["每个召唤的魔像可使魔像的伤害提高 20% 每个召唤的魔像可使你有 35% 几率避免元素异常状态 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=2048,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使魔像的 每个召唤的魔像可使你有 35% 几率避免元素 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限 "}c["对受到【盗猎者印记】诅咒的敌人附带【终结】效果"]={nil,"对受到【盗猎者印记】诅咒的敌人附带【终结】效果 "}c["若你至少拥有 500 点智慧，可以放置地雷的技能就会最多额外放置 1 个地雷 {variant:1}若你至少拥有 500 点敏捷，可以放置地雷的技能就会最多额外放置 1 个地雷"]={{[1]={flags=0,keywordFlags=8192,name="Int",type="BASE"}},"若你至少拥有 500 点，可以放置的技能就会最多"}c["周围只有 1 个敌人时，伤害提高 100%"]={{[1]={[1]={type="Condition",var="OnlyOneNearbyEnemy"},flags=0,keywordFlags=0,name="Damage",type="INC",value=100}},nil}
c["附加 140 - 285 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=140},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=285}},nil}
c["+33 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=33}},nil}
c["+25% 几率中毒"]={{}," "}c["不会被致盲 承受来自致盲敌人的伤害降低 10% 周围敌人被致盲 对致盲敌人的击中和异常状态伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 周围敌人被致盲 伤害提高 30% "}c["+23 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=23}},nil}
c["火焰伤害提高 24%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=24}},nil}
c["攻击投射物击中最后目标后返还"]={nil,"攻击投射物击中最后目标后返还 "}c["近期内你若有进行攻击，则攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="AttackedRecently"},flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["击中时使用插槽内的诅咒宝石对目标施放诅咒"]={nil,"击中时使用插槽内的诅咒宝石对目标施放诅咒 "}c["攻击速度提高 20%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["每个白色插槽可为你和周围友军附加 47 - 61 基础混沌伤害"]={{[1]={[1]={type="Multiplier",var="WhiteSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=47}}},[2]={[1]={type="Multiplier",var="WhiteSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=61}}}},nil}
c["+8% 持续冰霜伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="BASE",value=8}},nil}
c["照亮范围扩大 13%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=13}},nil}
c["投射物会穿透 1 个额外目标"]={{[1]={flags=0,keywordFlags=0,name="PierceCount",type="BASE",value=1}},nil}
c["持盾牌时有 20% 几率避免元素异常状态"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=20},[2]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=20},[3]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=20},[4]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=20}},nil}
c["每个蓝色插槽可为你和周围友军附加 16 - 144 基础闪电伤害"]={{[1]={[1]={type="Multiplier",var="BlueSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=16}}},[2]={[1]={type="Multiplier",var="BlueSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=144}}}},nil}
c["你承受的流血伤害改为混沌伤害"]={nil,"你承受的流血伤害改为混沌伤害 "}c["投射物伤害提高 10%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["获得 +20% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=20}},nil}
c["移动技能的伤害提高 43%"]={{[1]={flags=0,keywordFlags=8,name="Damage",type="INC",value=43}},nil}
c["击败被冰冻的敌人时有 20% 几率获得 1 个狂怒球 当你拥有最大数量的狂怒球时，技能额外连锁弹射 1 次"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=20}},"击败被的敌人时获得 1 个狂怒球 当你技能额外连锁弹射 1 次 "}c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% 近期内你若没有被击中，则免疫晕眩 近期内你若有使用过位移技能，则每秒回复 15 魔力"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},[2]={type="Condition",var="UsedMovementSkillRecently"},flags=8,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% 免疫晕眩 每秒回复 15 魔力 "}c["每 100 魔力提高 2% 法术伤害，最多 40%"]={{[1]={[1]={div=100,limit=40,limitTotal=true,stat="Mana",type="PerStat"},flags=2,keywordFlags=0,name="Damage",type="INC",value=2}},nil}
c["伤害穿透 10% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=10}},nil}
c["受到残暴打击后失去所有精神球 每个影响你的【深渊珠宝】可使最大精神球数量 +1"]={{},"受到残暴打击后失去所有精神球 最大精神球数量  "}c["斧类攻击的物理伤害提高 8%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["你身上的药剂效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="FlaskEffect",type="INC",value=5}},nil}
c["承受投射物的攻击时，护甲提高 200% +25% 对投射物格挡率"]={{[1]={flags=0,keywordFlags=65536,name="ProjectileCountTaken",type="INC",value=200}},"的，护甲 +25% 对投射物格挡率 "}c["感电会反射回自己身上 感电时伤害提高 60%"]={{[1]={[1]={type="Condition",var="Shocked"},flags=0,keywordFlags=0,name="Damage",type="INC",value=60}},"感电会反射回自己身上  "}c["感电效果提高 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=40}},nil}
c["近期内你若有过格挡，则法术伤害提高 20%"]={{[1]={[1]={type="Condition",var="BlockedRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["双手近战武器攻击 +20% 暴击伤害加成"]={{[1]={flags=570425344,keywordFlags=0,name="CritMultiplier",type="BASE",value=20}},nil}
c["当你击败敌人时，敌人身上每有 1 个诅咒，便给予你等同 8% 非混沌伤害的额外混沌伤害，持续 4 秒"]={{[1]={[1]={type="Condition",var="KilledRecently"},[2]={type="Multiplier",var="CurseOnEnemy"},flags=0,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=8}},nil}
c["法术伤害提高 65%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=65}},nil}
c["你被点燃的持续时间延长 100% {variant:2}被点燃时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="INC",value=100}},"你被的持续时间 {variant:2}移动速度提高 10% "}c["可以召唤一个图腾的技能改为召唤两个图腾 每有 1 个图腾，你和你的图腾每秒便回复 1% 生命"]={nil,"可以召唤一个图腾的技能改为召唤两个图腾 每有 1 个图腾，你和你的图腾每秒便回复 1% 生命 "}c["双持攻击时武器的物理伤害提高 16%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["红色插槽内的技能石 +1 等级 绿色插槽内的技能石 +10% 品质"]={{},"红色插槽内的技能石  等级 绿色插槽内的技能石 +10% 品质 "}c["魔像的攻击和施法速度提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=20}}}},nil}
c["当精神球失效或被消耗时，回复 3% 生命"]={nil,"当精神球失效或被消耗时，回复 3% 生命 "}c["该装备的闪避与能量护盾提高 200%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=200}},nil}
c["你受到的时空锁链效果降低 50%"]={{[1]={[1]={skillName="时空锁链",type="SkillName"},flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=-50}},nil}
c["主手附加 60 - 110 基础火焰伤害"]={{[1]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=60},[2]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=110}},nil}
c["+1 狂怒球和暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesMax",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="PowerChargesMax",type="BASE",value=1}},nil}
c["若范围内含有 40 点敏捷，【毒蛇打击】每次造成中毒时有 10% 几率获得 4 秒不洁之力"]={{[1]={[1]={type="Condition",var="Poisoned"},flags=512,keywordFlags=0,name="Dex",type="BASE",value=10}},"若内含有 40 点，【毒蛇打击】每次造成获得 4 秒不洁之力 "}c["瓦尔技能持续时间延长 18%"]={{[1]={flags=0,keywordFlags=256,name="Duration",type="INC",value=18}},nil}
c["锤类攻击的物理伤害提高 28%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=28}},nil}
c["单手武器的攻击伤害提高 20%"]={{[1]={flags=268435457,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["+170 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=170}},nil}
c["暴击球达到最大数量时，你被感电"]={nil,"暴击球达到最大数量时，你被感电 "}c["中毒持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=20}},nil}
c["每 4 点力量 +2 魔力"]={{[1]={[1]={div=4,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=2}},nil}
c["每达到 50 次暴走连击，就获得 1 个狂怒球"]={nil,"每达到 50 次暴走连击，就获得 1 个狂怒球 "}c["无法获得能量护盾 每有 500 层能量护盾可每秒回复 1% 生命"]={{},"无法获得 "}c["总流血伤害额外降低 50%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="MORE",value=-50}},nil}
c["每 2 点智慧 +1 最大生命"]={{[1]={[1]={div=2,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="Life",type="BASE",value=1}},nil}
c["若你近期没有引爆地雷，则每秒失去 1 个暴击球"]={nil,"若你近期没有引爆地雷，则每秒失去 1 个暴击球 "}c["最大生命, 魔力与全域能量护盾提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=16},[2]={flags=0,keywordFlags=0,name="Mana",type="INC",value=16},[3]={[1]={type="Global"},flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=16}},nil}
c["地雷暴击率提高 20%"]={{[1]={flags=0,keywordFlags=8192,name="CritChance",type="INC",value=20}},nil}
c["智慧不对最大魔力提供加成"]={{[1]={flags=0,keywordFlags=0,name="NoIntBonusToMana",type="FLAG",value=true}},nil}
c["击败稀有或者传奇敌人时，获得【癫狂】状态 10 秒"]={nil,"击败稀有或者传奇敌人时，获得【癫狂】状态 10 秒 "}c["+180 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=180}},nil}
c["移动速度降低 5%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-5}},nil}
c["若你至少拥有 1500 层能量护盾，则每秒回复 150 生命"]={{[1]={[1]={stat="EnergyShield",threshold=1500,type="StatThreshold"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value="150"}},nil}
c["投射物伤害提高 4%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=4}},nil}
c["获得 25 级的主动技能【灼热光线】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=25,skillId="FireBeam"}}},nil}
c["火焰伤害提高 35%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=35}},nil}
c["若你至少拥有 1000 层能量护盾，则每秒回复 100 生命"]={{[1]={[1]={stat="EnergyShield",threshold=1000,type="StatThreshold"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value="100"}},nil}
c["+200 斧类攻击的命中值"]={{[1]={flags=65536,keywordFlags=0,name="Accuracy",type="BASE",value=200}},nil}
c["若你至少拥有 500 层能量护盾，则每秒回复 50 生命"]={{[1]={[1]={stat="EnergyShield",threshold=500,type="StatThreshold"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value="50"}},nil}
c["照亮范围扩大 31%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=31}},nil}
c["你的暴击不造成额外暴击伤害"]={{[1]={flags=0,keywordFlags=0,name="NoCritMultiplier",type="FLAG",value=true}},nil}
c["若你的其他戒指中有【裂界之器】，则免疫攻击造成的晕眩"]={nil,"若你的其他戒指中有【裂界之器】，则免疫攻击造成的晕眩 "}c["无法获得能量护盾 若你至少拥有 500 层能量护盾，则每秒回复 50 生命"]={nil,"无法获得能量护盾 若你至少拥有 500 层能量护盾，则每秒回复 50 生命 "}c["4% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=4}},nil}
c["无法获得能量护盾"]={nil,"无法获得能量护盾 "}c["10% 几率使敌人逃跑"]={{},"使敌人逃跑 "}c["你的能量护盾从 0 开始 无法获得能量护盾"]={nil,"你的能量护盾从 0 开始 无法获得能量护盾 "}c["持续伤害效果提高 20%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["召唤生物获得 0.6% 生命偷取"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.6}}}},nil}
c["若范围内含有 40 点力量，【裂地之击】的角度扩大 20% {variant:2}若范围内含有 40 点力量，【裂地之击】的角度扩大 35%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=20}},"若内含有 40 点，【裂地之击】的角度 {variant:2}若范围内含有 40 点力量，【裂地之击】的角度扩大 35% "}c["你的法术拥有【终结】效果"]={nil,"你的法术拥有【终结】效果 "}c["获得 +28% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=28}},nil}
c["此物品上的技能石受到 25 级的 近战伤害扩散 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=25,skillId="SupportMeleeSplash"}}},nil}
c["该装备的护甲与能量护盾提高 190%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=190}},nil}
c["闪避值提高 220%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=220}},nil}
c["爪类攻击的物理伤害提高 12%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["当暴击球达到上限时，+2% 攻击和法术基础暴击率"]={{[1]={[1]={stat="PowerCharges",thresholdStat="PowerChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=2}},nil}
c["【清晰】不保留魔力"]={{[1]={[1]={skillName="清晰",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["药剂持续期间，持续伤害提高 70%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=8,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["空手时法术附加 135 - 360 基础闪电伤害"]={{[1]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=135},[2]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=360}},nil}
c["获得【召唤冰雷先驱者】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={skillId="SummonHarbingerOfStorms"}}},nil}
c["召唤生物有 +5% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=5}}}},nil}
c["承受的范围伤害降低 5% 近期内你若有晕眩敌人，则范围效果扩大 10%"]={{[1]={[1]={type="Condition",var="StunnedEnemyRecently"},flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},"的 范围效果扩大 10% "}c["插槽内的技能石被 18 级的 闪电支配 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportOnslaughtOnSlayingShockedEnemy"}}},nil}
c["空手攻击时的物理总伤害额外提高 700%"]={{[1]={flags=16777216,keywordFlags=0,name="PhysicalDamage",type="MORE",value=700}},nil}
c["此物品上的技能石受到 18 级的 霜咬 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportFrenzyChargeOnSlayingFrozenEnemy"}}},nil}
c["该装备的闪避与能量护盾提高 245%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=245}},nil}
c["被击中时 30% 的闪电伤害优先从魔力优先扣除 你使敌人感电时，回复 3% 最大魔力"]={{[1]={[1]={type="Condition",var="Shocked"},flags=0,keywordFlags=262144,name="LightningDamage",type="BASE",value=30}},"被时 优先从魔力优先扣除 你使敌人，回复 3% 最大魔力 "}c["最大生命提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=16}},nil}
c["被击中时 30% 的闪电伤害优先从魔力优先扣除"]={{[1]={flags=0,keywordFlags=262144,name="LightningDamage",type="BASE",value=30}},"被时 优先从魔力优先扣除 "}c["当你拥有兽化的召唤生物时，攻击附加 14 - 23 基础物理伤害"]={{[1]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=14},[2]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=23}},nil}
c["对法术伤害的增幅与减益也会套用于攻击上"]={{[1]={flags=0,keywordFlags=0,name="SpellDamageAppliesToAttacks",type="FLAG",value=true}},nil}
c["药剂持续期间，持续伤害提高 40%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=8,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["该装备的闪避与能量护盾提高 260%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=260}},nil}
c["此物品上的技能石受到 1 级的 霜咬 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportFrenzyChargeOnSlayingFrozenEnemy"}}},nil}
c["双手近战武器攻击的攻击速度提高 5%"]={{[1]={flags=570425345,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["无生命保留时法术附加 10 - 167 基础闪电伤害"]={{[1]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=10},[2]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=167}},nil}
c["无生命保留时法术附加 59 - 102 基础火焰伤害"]={{[1]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=59},[2]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=102}},nil}
c["无生命保留时法术附加 48 - 83 基础冰霜伤害"]={{[1]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=48},[2]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=83}},nil}
c["无生命保留时法术附加 14 - 173 基础闪电伤害"]={{[1]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=14},[2]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=173}},nil}
c["无生命保留时法术附加 64 - 107 基础火焰伤害"]={{[1]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=64},[2]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=107}},nil}
c["持盾牌时攻击伤害格挡几率 +1%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=1}},nil}
c["无生命保留时法术附加 54 - 88 基础冰霜伤害"]={{[1]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=54},[2]={[1]={stat="LifeReserved",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=88}},nil}
c["+110 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=110}},nil}
c["法术暴击率提高 140%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=140}},nil}
c["当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电"]={nil,"当你身旁有召唤的寒冰时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 "}c["匕首攻击的物理伤害提高 12%"]={{[1]={flags=524288,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["技能魔力消耗提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=20}},nil}
c["攻击附加 19 - 43 基础混沌伤害"]={{[1]={flags=0,keywordFlags=65536,name="ChaosMin",type="BASE",value=19},[2]={flags=0,keywordFlags=65536,name="ChaosMax",type="BASE",value=43}},nil}
c["+12% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=12}},nil}
c["+113% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=113}},nil}
c["此物品上的诅咒技能石降低 12% 魔力保留"]={{[1]={[1]={keyword="curse",slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-12}}}},nil}
c["此物品上的诅咒技能石受到 22 级的 诅咒光环 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=22,skillId="SupportBlasphemy"}}},nil}
c["你的技能造成元素异常状态时，扩散至周围敌人  半径：18"]={nil,"你的技能造成元素异常状态时，扩散至周围敌人  半径：18 "}c["+38 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=38}},nil}
c["神殿持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=50}},"神殿 "}c["生命回复额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="MORE",value=-50}},nil}
c["格挡时有 25% 几率制造奉献地面"]={{},"格挡时制造奉献地面 "}c["爪类攻击的伤害提高 25%"]={{[1]={flags=262144,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["神殿效果提高 75% 神殿持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=75}},"神殿效果 神殿延长 50% "}c["神殿效果提高 75%"]={{},"神殿效果 "}c["击败敌人回复 +15 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=15}},"击败敌人回复   "}c["击败敌人时召唤 1 级的低阶神殿 该装备的闪避与能量护盾提高 150%"]={nil,nil}
c["若敏捷高于智慧，则无法被冰冻"]={{[1]={[1]={type="Condition",var="DexHigherThanInt"},flags=0,keywordFlags=0,name="AvoidFreeze",type="BASE",value=100}},nil}
c["若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 3 个魔侍法师 {variant:2}若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 5 个魔侍法师"]={nil,"若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 3 个魔侍法师 {variant:2}若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 5 个魔侍法师 "}c["攻击速度提高 11%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=11}},nil}
c["火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=24}},nil}
c["晕眩敌人时获得 50 生命"]={nil,"晕眩敌人时获得 50 生命 "}c["将生命扣至剩余 1 点，扣除的生命将在 2 秒内转换为能量护盾"]={nil,"将生命扣至剩余 1 点，扣除的生命将在 2 秒内转换为能量护盾 "}c["附加 250 - 280 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=250},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=280}},nil}
c["最大魔力提高 100%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=100}},nil}
c["静止时受到的火焰、冰霜、闪电伤害降低 5%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=-5}},nil}
c["移动时获得额外 5% 物理伤害减免"]={{[1]={[1]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=5}},nil}
c["右戒指栏位：不能回复魔力 {variant:1}右戒指栏位：每秒回复 4% 能量护盾"]={{},"不能回复 {variant:1}右戒指栏位："}c["获得 20 级的的主动技能【召唤石化雕像】"]={nil,nil}
c["持锤时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["此物品上的技能石获得【元素之相】，效果降低 40% {variant:2}此物品上的技能石获得【元素之相】，效果降低 25%"]={{},"获得【元素之相】，效果 {variant:2}此物品上的技能石获得【元素之相】，效果降低 25% "}c["击败普通怪物的物品掉落数量提高 100% {variant:2}击败普通怪物的物品掉落数量提高 100%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=100}},"击败普通怪物的 {variant:2}击败普通怪物的物品掉落数量提高 100% "}c["满血时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["对致盲的敌人的击中和异常状态伤害提高 45%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=45}},nil}
c["灵体有 20 秒的持续时间"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="duration",value=6}}},nil}
c["拥有【猫之隐匿】时，暴击有 20% 几率致盲敌人 对致盲的敌人的击中和异常状态伤害提高 50%"]={{[1]={[1]={type="Condition",var="AffectedBy猫之隐匿"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="BASE",value=20}},"暴击致盲敌人 提高 50% "}c["受到【迅捷】影响时，击败敌人获得 4 秒【猛攻】状态"]={nil,"受到【迅捷】影响时，击败敌人获得 4 秒【猛攻】状态 "}c["你每有 100 点敏捷，周围队友获得 +7% 暴击伤害加成"]={{[1]={[1]={div=100,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=7},onlyAllies=true}}},nil}
c["受到【猫之势】影响时，+1% 攻击和法术基础暴击率"]={{[1]={[1]={type="Condition",varList={[1]="AffectedBy猫之隐匿",[2]="AffectedBy猫之敏捷"}},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=1}},nil}
c["该装备的护甲与能量护盾提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=50}},nil}
c["技能魔力消耗降低 7%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-7}},nil}
c["获得 20 级的主动技能【猫之势】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="CatAspect"}}},nil}
c["+185 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=185}},nil}
c["当你拥有最大数量的狂怒球时，攻击使敌人中毒"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=1,keywordFlags=0,name="PoisonChance",type="BASE",value=100}},nil}
c["暴击后获得 4 秒的【猛攻】状态"]={nil,"暴击后获得 4 秒的【猛攻】状态 "}c["反射 100 - 150 物理伤害给近战攻击者"]={nil,"反射 100 - 150 物理伤害给近战攻击者 "}c["此物品上装备的【法术技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="spell",value=2}}},nil}
c["+135 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=135}},nil}
c["+650 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=650}},nil}
c["被【释出】辅助的技能 +1 最大封印"]={{},"被【释出】辅助的技能  最大封印 "}c["图腾所使用的技能击中时，有 20% 几率嘲讽敌人 图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害"]={{[1]={flags=0,keywordFlags=16384,name="Life",type="BASE",value=20}},"所使用的技能击中时，嘲讽敌人 图腾被击中时对周围敌人造成等同图腾 15% 的火焰伤害 "}c["召唤生物的施法速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=5}}}},nil}
c["药剂持续期间，攻击速度提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["史实"]={{[1]={flags=0,keywordFlags=0,name="Multiplier:HistoricItem",type="BASE",value=1}},nil}
c["攻击附加 1 - 13 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=13}},nil}
c["锤类攻击的物理伤害提高 30%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["获得额外混沌伤害，其数值等同于物理伤害的 10%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=10}},nil}
c["晕眩回复和格挡回复提高 21%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=21}},nil}
c["+150 匕首攻击的命中值"]={{[1]={flags=524288,keywordFlags=0,name="Accuracy",type="BASE",value=150}},nil}
c["耐力球持续时间缩短 30%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=-30}},nil}
c["你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命 【旗帜技能】不保留魔力 当你创建旗帜时，它会获得你当前放置旗帜等阶的 40%"]={{},"你和周围友军从你放置的旗帜中每个位阶能40% "}c["+1 召唤图腾数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveTotemLimit",type="BASE",value=1}},nil}
c["晕眩回复和格挡回复提高 22%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=22}},nil}
c["+200 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=200}},nil}
c["6% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=6}},nil}
c["技能效果持续时间延长 13%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=13}},nil}
c["当你击碎冰冻的敌人时，制造奉献地面"]={nil,"当你击碎冰冻的敌人时，制造奉献地面 "}c["双持或持盾牌时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",varList={[1]="DualWielding",[2]="UsingShield"}},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["法术伤害提高 25%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["召唤生物只能击败被点燃的敌人"]={nil,"只能击败被点燃的敌人 "}c["攻击技能的火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=30}},nil}
c["药剂持续期间，攻击技能造成的火焰、冰霜、闪电伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=30}},nil}
c["生效期间，瓦尔技能的伤害提高 80%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=256,name="Damage",type="INC",value=80}},nil}
c["持盾牌时法术伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["被你冰冻的敌人额外承受 20% 伤害"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE"}},"被你的敌人"}c["每 50 点敏捷可使召唤生物的移动速度提高 2%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=50,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=2}}}},nil}
c["每个挑战球可使总攻击速度和移动速度额外提高 2%"]={{[1]={[1]={type="Multiplier",var="ChallengerCharge"},flags=1,keywordFlags=0,name="Speed",type="MORE",value=2},[2]={[1]={type="Multiplier",var="ChallengerCharge"},flags=0,keywordFlags=0,name="MovementSpeed",type="MORE",value=2}},nil}
c["击败敌人时获得 2 秒【猛攻】状态 {variant:2}击败敌人时获得 4 秒【猛攻】状态"]={nil,"击败敌人时获得 2 秒【猛攻】状态 {variant:2}击败敌人时获得 4 秒【猛攻】状态 "}c["你的混沌伤害可使敌人中毒 {variant:3,4}你的混沌伤害有 60% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=1048576,name="ChaosDamage",type="BASE",value=60}},"你的可使敌人 {variant:3,4}你的混沌伤害使敌人中毒 "}c["获得等同 8% 魔力的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ManaGainAsEnergyShield",type="BASE",value=8}},nil}
c["命中值提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["物品稀有度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=30}},nil}
c["【鸟之力量】的持续时间 +2 秒 拥有【鸟之力量】时附加 25 - 40 基础冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="Str",type="BASE",value=2}},"【鸟之】的持续时间  秒 附加 25 - 40 基础冰霜伤害 "}c["攻击和法术附加 2 - 45 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=2},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=45}},nil}
c["被击中时， 4 秒内回复等同于 10% 伤害的魔力 不能偷取魔力"]={nil,"被击中时， 4 秒内回复等同于 10% 伤害的魔力 不能偷取魔力 "}c["持锤时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["陷阱伤害提高 24%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=24}},nil}
c["使用药剂时将区域内敌人击退"]={nil,"使用药剂时将区域内敌人击退 "}c["击败敌人时获得 1 怒火"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainRage",type="FLAG",value=true},[2]={[1]={type="Condition",var="CanGainRage"},flags=0,keywordFlags=0,name="Dummy",type="DUMMY",value=1}},nil}
c["若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 5 个魔侍法师"]={nil,"若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 5 个魔侍法师 "}c["+28 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=28}},nil}
c["10% chance of Arrows Piercing {variant:2}箭矢会穿透 1 个额外目标"]={nil,"10% chance of Arrows Piercing {variant:2}箭矢会穿透 1 个额外目标 "}c["【纯净之捷】的增益效果提高 100%"]={{[1]={[1]={skillName="纯净之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=100}},nil}
c["击败敌人会扣除自身 1% 最大生命"]={nil,"击败敌人会扣除自身 1% 最大生命 "}c["敌人无法偷取你的魔力"]={nil,"敌人无法偷取你的魔力 "}c["+45% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=45}},nil}
c["击中时 30% 几率触发插槽内的闪电法术 {variant:3,4,5}击中时触发插槽内的闪电法术"]={{},"时 触发插槽内的闪电法术 {variant:3,4,5}击中时触发插槽内的闪电法术 "}c["冰霜伤害击中时有 9% 的几率冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=9}},nil}
c["受到【迅捷】影响时，不受【时空锁链】影响"]={nil,"受到【迅捷】影响时，不受【时空锁链】影响 "}c["+1 耐力球数量上限"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesMax",type="BASE",value=1}},nil}
c["施放光环图腾技能时需要的魔力降低 60%"]={{[1]={flags=0,keywordFlags=16384,name="Mana",type="INC",value=-60}},"施放光环时需要的 "}c["该装备的护甲与能量护盾提高 170%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=170}},nil}
c["+13 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=13},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=13}},nil}
c["+145 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=145}},nil}
c["你从激活的先祖图腾获得的增益效果提高 50% 先祖图腾的激活范围效果扩大 100% 当你有图腾存在时，范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="HaveTotem"},flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=50}},"你从激活的先祖获得的增益效果 先祖图腾的激活扩大 100% 范围效果扩大 25% "}c["获得等同于你魔力保留数值的护甲"]={{[1]={[1]={div=1,stat="ManaReserved",type="PerStat"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=1}},nil}
c["锤类攻击的物理伤害提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["奉献技能的效果降低 25%"]={{[1]={[1]={skillNameList={[1]="骸骨奉献",[2]="血肉奉献",[3]="灵魂奉献",[4]="血脉奉献"},type="SkillName"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=-25}}}},nil}
c["格挡时有 40% 几率使攻击者冰缓 4 秒 格挡时有 40% 几率使攻击者感电 4 秒"]={{},"格挡时使者冰缓 4 秒 格挡时有 40% 几率使攻击者感电 4 秒 "}c["被你嘲讽的敌人攻击其他目标时，造成的击中和异常状态总伤害额外降低 10%"]={{}," "}c["魔力保留提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=10}},nil}
c["+200 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=200}},nil}
c["冰冻的敌人物品稀有度提高 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=40}},"的敌人物品稀有度 "}c["法术附加 15 - 140 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=15},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=140}},nil}
c["插槽内魔像技能击中时有 25% 几率嘲讽"]={{},"插槽内技能时嘲讽 "}c["最大能量护盾降低 25%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=-25}},nil}
c["受到【坚定】影响时，承受的反射物理伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy坚定"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-50}},"承受的反射 "}c["附加 15 - 33 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=33}},nil}
c["所有身上穿戴的物品皆为已腐化时，每秒回复 35 魔力"]={{[1]={[1]={threshold=0,type="MultiplierThreshold",upper=true,var="NonCorruptedItem"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=35}},nil}
c["所有身上装备的物品皆为已腐化时，每秒回复 100 能量护盾"]={{[1]={[1]={threshold=0,type="MultiplierThreshold",upper=true,var="NonCorruptedItem"},flags=0,keywordFlags=0,name="EnergyShieldRegen",type="BASE",value=100}},nil}
c["你每击中 1 个被【蜘蛛网】覆盖的敌人，便获得 20 能量护盾"]={{[1]={[1]={actor="enemy",threshold=1,type="MultiplierThreshold",var="Spider's WebStack"},flags=0,keywordFlags=0,name="EnergyShieldOnHit",type="BASE",value=20}},nil}
c["+40 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=40}},nil}
c["空手时法术附加 113 - 338 基础闪电伤害"]={{[1]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=113},[2]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=338}},nil}
c["+250 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=250}},nil}
c["你造成的流血伤害生效速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="BleedFaster",type="INC",value=15}},nil}
c["攻击速度提高 5%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["附加 17 - 37 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=17},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=37}},nil}
c["每个影响你的【深渊珠宝】可使最大精神球数量 +1"]={{},"最大精神球数量  "}c["法术伤害提高 12%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["获得额外火焰伤害， 其数值等同于物理伤害的 35%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=35}},nil}
c["击败敌人后有 20% 几率获得 1 个精神球 每个影响你的【深渊珠宝】可使最大精神球数量 +1"]={{},"击败敌人后获得 1 个精神球 最大精神球数量 +1 "}c["当精神球失效或被消耗时，回复 5% 生命 击败敌人后有 20% 几率获得 1 个精神球"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=20}},"当精神球失效或被消耗时，回复 5%  击败敌人后获得 1 个精神球 "}c["无法格挡法术"]={{[1]={flags=0,keywordFlags=0,name="CannotBlockSpells",type="FLAG",value=true}},nil}
c["召唤生物伤害提高 80%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=80}}}},nil}
c["受到击中物理伤害的 8% 转化为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsFire",type="BASE",value=8}},nil}
c["每个耐力球提高 0.5% 每秒生命回复"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.5}},nil}
c["该装备的攻击暴击率提高 45%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=45}},nil}
c["每个狂怒球可使移动速度提高 4%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=4}},nil}
c["击败敌人时，召唤生物获得【不洁之力】，持续 5 秒 {variant:2}击败敌人时，召唤生物获得【不洁之力】，持续 10 秒"]={nil,"击败敌人时，【不洁之力】，持续 5 秒 {variant:2}击败敌人时，召唤生物获得【不洁之力】，持续 10 秒 "}c["使用至少 100 魔力施放技能时，有 30% 几率触发插槽内的法术"]={{[1]={flags=2,keywordFlags=0,name="Mana",type="BASE",value=30}},"使用至少 100 施放技能时，触发插槽内的 "}c["技能魔力消耗降低 15%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-15}},nil}
c["敌人晕眩门槛降低 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-25}},nil}
c["被击中时让敌人受到【灰烬缠身】 火之化身"]={nil,"被击中时让敌人受到【灰烬缠身】 火之化身 "}c["低血时，技能魔力消耗降低 20%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-20}},nil}
c["低血时 +20% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=20}},nil}
c["攻击和法术附加 1 - 13 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=13}},nil}
c["霸体"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="霸体"}},nil}
c["被附着烙印的敌人受到烙印技能的伤害提高 30%"]={{[1]={[1]={skillType=76,type="SkillType"},[2]={type="Condition",var="BrandAttachedToEnemy"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["范围内的核心天赋技能转化替代为：召唤生物受到的伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=20}}}},"内的核心天赋技能转化替代为： "}c["该装备的护甲与能量护盾提高 70%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=70}},nil}
c["击中满血的敌人并造成伤害时必造成晕眩 有 20% 几率使晕眩时间延长 1 倍"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=20}},"满血的敌人并造成时必造成晕眩 使晕眩时间延长 1 倍 "}c["元素超载"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="元素超载"}},nil}
c["近期内，每个击中你的元素可使你的该元素伤害提高 40%"]={{[1]={[1]={type="Condition",var="HitByFireDamageRecently"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=40},[2]={[1]={type="Condition",var="HitByColdDamageRecently"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=40},[3]={[1]={type="Condition",var="HitByLightningDamageRecently"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=40}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["+40 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=40}},nil}
c["你拥有至少 10 个【深海屏障】时，格挡几率额外提高 5%"]={{[1]={[1]={stat="CrabBarriers",threshold=10,type="StatThreshold"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value="5"}},nil}
c["你拥有至少 5 个【深海屏障】时，格挡几率额外提高 3%"]={{[1]={[1]={stat="CrabBarriers",threshold=5,type="StatThreshold"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value="3"}},nil}
c["近期你若失去过【深海屏障】，则不会再失去【深海屏障】 你拥有至少 5 个【深海屏障】时，格挡几率额外提高 3%"]={{},"近期你若失去过【深海屏障】，则不会再失去【深海屏障】 格挡几率"}c["受到【灰烬之捷】影响时，+60% 火焰抗性"]={{[1]={[1]={type="Condition",var="AffectedBy灰烬之捷"},flags=0,keywordFlags=0,name="FireResist",type="BASE",value=60}},nil}
c["你只能从技能中得到一种非旗帜光环。 光环技能不能影响友军 你的光环技能对自身造成的总效果额外提高 50% 总魔力保留额外提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="MORE"}}," 额外提高 50% "}c["近期你若失去过【深海屏障】，则不会再失去【深海屏障】"]={nil,"近期你若失去过【深海屏障】，则不会再失去【深海屏障】 "}c["对投射物攻击的总闪避率额外提高 40% "]={{[1]={flags=0,keywordFlags=0,name="ProjectileEvadeChance",type="MORE",value=40}},nil}
c["30% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=30}},nil}
c["+52% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=52}},nil}
c["+61% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=61}},nil}
c["魔力回复速度降低 20%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=-20}},nil}
c["法术附加 250 - 350 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=250},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=350}},nil}
c["此物品上的技能石受到 20 级的 死亡时施放 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportCastOnDeath"}}},nil}
c["每 16 秒获得一次【元素超载】，持续 8 秒 当你没有获得【元素超载】时，获得【坚毅之心】"]={nil,"每 16 秒获得一次【元素超载】，持续 8 秒 当你没有获得【元素超载】时，获得【坚毅之心】 "}c["暴走状态时回复 20% 最大生命 {variant:1}暴走状态时为瓦尔技能补充 5 个灵魂"]={nil,"暴走状态时回复 20% 最大生命 {variant:1}暴走状态时为瓦尔技能补充 5 个灵魂 "}c["20% 的物理伤害转换为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=20}},nil}
c["被击中时，4 秒内恢复等于伤害 20% 的生命"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=20}},"被时，4 秒内恢复等于 生命 "}c["持长杖时，攻击类技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["近期你每消耗 200 魔力，法术伤害便提高 60%,最多可提高 2000%"]={{[1]={[1]={div=200,limit=2000,limitTotal=true,type="Multiplier",var="ManaSpentRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["药剂持续期间，物品数量提高 15%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=15}},nil}
c["持盾牌时有 6% 几率格挡法术伤害"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=6}},nil}
c["被攻击击中时，有 15% 几率制造冰缓地面"]={{},"被击中时，制造冰缓地面 "}c["+160% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=160}},nil}
c["静止时 +800 护甲"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=800}},nil}
c["该装备的护甲与能量护盾提高 160%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=160}},nil}
c["当暴击球达到上限时，获得等同 10% 物理伤害的混沌伤害"]={{[1]={[1]={stat="PowerCharges",thresholdStat="PowerChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=10}},nil}
c["非暴击时穿透敌人 10% 的火焰、冰霜、闪电抗性"]={{[1]={[1]={neg=true,type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=10}},nil}
c["攻击附加 1 - 40 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=40}},nil}
c["当你没有暴击球时，受到的暴击伤害降低 50%"]={{[1]={[1]={stat="PowerCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="Damage",type="INC",value=-50}},"受到的暴击 "}c["当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5% 生命"]={nil,"当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5% 生命 "}c["若范围内含有 40 点智慧，火球投射物的爆炸范围将随飞行距离扩大，最多扩大 50% {variant:2}若范围内含有 40 点智慧，火球投射物的爆炸范围将随飞行距离扩大，最多扩大至 +4"]={{[1]={flags=512,keywordFlags=0,name="Int",type="INC",value=50}},"若内含有 40 点，火球投射物的爆炸范围将随飞行距离扩大，最多 {variant:2}若范围内含有 40 点智慧，火球投射物的爆炸范围将随飞行距离扩大，最多扩大至 +4 "}c["当暴击球达到上限时，获得等同 12% 物理伤害的混沌伤害"]={{[1]={[1]={stat="PowerCharges",thresholdStat="PowerChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=12}},nil}
c["被击中时触发 10 级的感电地面 攻击和法术附加 1 - 80 基础闪电伤害"]={{[1]={flags=0,keywordFlags=262144,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=262144,name="LightningMax",type="BASE",value=80}},"被时触发 10 级的感电地面  "}c["你每拥有 1 个魔卫，你和你的召唤生物获得 1% 物理伤害减免 你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害"]={nil,"你每拥有 1 个魔卫，你和你的 1% 物理伤害减免 你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 "}c["该装备的护甲与能量护盾提高 200%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=200}},nil}
c["召唤生物有 +325 点护甲"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Armour",type="BASE",value=325}}}},nil}
c["召唤生物有 10% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}}}},nil}
c["此物品上装备的【绿色技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="dexterity",value=1}}},nil}
c["攻击技能的火焰伤害提高 30%"]={{[1]={flags=0,keywordFlags=65536,name="FireDamage",type="INC",value=30}},nil}
c["该装备的护甲与闪避提高 175%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=175}},nil}
c["水银爪印"]={nil,"水银爪印 "}c["持盾牌时 +8% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=8}},nil}
c["+65 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=65}},nil}
c["物理伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-10}},nil}
c["+250 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=250}},nil}
c["击中中毒的敌人有 50% 几率使其瘫痪 每对敌人造成一层中毒效果，便附加 +0.1% 攻击和法术基础暴击率，最多 +2.0%"]={{[1]={flags=0,keywordFlags=262144,name="CritChance",type="BASE",value=50}},"中毒的敌人使其瘫痪 每对敌人造成一层中毒效果，便附加 +0.1% ，最多 +2.0% "}c["低血时不能偷取"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="CannotLeechLife",type="FLAG",value=true},[2]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="CannotLeechMana",type="FLAG",value=true}},nil}
c["该装备的护甲与闪避提高 150%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=150}},nil}
c["至少有 200 点敏捷时，投射物攻击伤害提高 50%"]={{[1]={[1]={stat="Dex",threshold=200,type="StatThreshold"},flags=1025,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["该装备的护甲与能量护盾提高 120%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=120}},nil}
c["空手时攻击附加 335 - 900 基础闪电伤害"]={{[1]={flags=16777216,keywordFlags=0,name="LightningMin",type="BASE",value="335"},[2]={flags=16777216,keywordFlags=0,name="LightningMax",type="BASE",value="900"}},nil}
c["击败冰冻敌人后物品掉落数量提高 15% {variant:1}击败感电敌人后物品稀有度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=15}},"击败敌人后物品掉落数量 {variant:1}击败感电敌人后物品稀有度提高 50% "}c["召唤生物的攻击速度提高 16%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=16}}}},nil}
c["被格挡的击中对你造成 50% 伤害"]={nil,"被格挡的击中对你造成 50% 伤害 "}c["+210 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=210}},nil}
c["不能使用胸甲"]={nil,"不能使用胸甲 "}c["更明显打击效果 不能使用胸甲"]={nil,"更明显打击效果 不能使用胸甲 "}c["格挡时 20% 几率获得耐力球 更明显打击效果"]={{},"格挡时 获得耐力球 更明显打击效果 "}c["生命回满时不会取消生命偷取效果 分裂之物"]={nil,"生命回满时不会取消生命偷取效果 分裂之物 "}c["能量护盾回复速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=20}},nil}
c["攻击技能的火焰伤害提高 12%"]={{[1]={flags=0,keywordFlags=65536,name="FireDamage",type="INC",value=12}},nil}
c["格挡时 20% 几率获得耐力球"]={{},"格挡时 获得耐力球 "}c["使用时获得 1 个狂怒球 使用时获得 1 个耐力球"]={nil,"使用时获得 1 个狂怒球 使用时获得 1 个耐力球 "}c["每 6 秒会交替给予玩家以【玛拉凯的不同奇术】"]={nil,"每 6 秒会交替给予玩家以【玛拉凯的不同奇术】 "}c["格挡时 10% 几率获得耐力球"]={{},"格挡时 获得耐力球 "}c["该装备的护甲与闪避提高 300%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=300}},nil}
c["闪避值提高 475%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=475}},nil}
c["锤类攻击的攻击速度提高 4%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["此物品上的技能石受到 12 级的 低阶多重投射 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=12,skillId="SupportLesserMultipleProjectiles"}}},nil}
c["攻击附加 20 - 30 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=20},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=30}},nil}
c["此物品上的技能石受到 6 级的 致盲 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=6,skillId="SupportBlind"}}},nil}
c["此物品上的技能石受到 18 级的 致盲 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportBlind"}}},nil}
c["该装备的能量护盾提高 300%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=300}},nil}
c["每 12 点智慧可使流血持续时间延长 1%"]={{[1]={[1]={div=12,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="EnemyBleedDuration",type="INC",value=1}},nil}
c["攻击和法术暴击率提高 68%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=68}},nil}
c["双手近战武器攻击造成的晕眩时间延长 10%"]={{[1]={flags=570425344,keywordFlags=0,name="EnemyStunDuration",type="INC",value=10}},nil}
c["最大魔力提高 25%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=25}},nil}
c["经验值获取提高 2% {variant:1}你每装备一个传奇装备，智慧提高 3%"]={{[1]={[1]={type="Multiplier",var="UniqueItem"},flags=0,keywordFlags=0,name="Int",type="INC",value=2}},"经验值获取 {variant:1}提高 3% "}c["+37% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=37}},nil}
c["此物品上的技能石受到 18 级的 近战物理伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportMeleePhysicalDamage"}}},nil}
c["右戒指栏位：反射的物理伤害降低 40%"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-40}},"反射的 "}c["最大生命提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=40}},nil}
c["智慧提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=15}},nil}
c["+180 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=180}},nil}
c["你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命 你和周围队友的移动速度提高 12%"]={{},"你和周围友军从你放置的旗帜中每个位阶能12% "}c["攻击技能的闪电伤害提高 35%"]={{[1]={flags=0,keywordFlags=65536,name="LightningDamage",type="INC",value=35}},nil}
c["药剂持续期间，使用技能时 4 秒内回复等同 600% 魔力消耗的生命 {variant:2}药剂持续期间使用技能会获得【终息】，魔力消耗 600%"]={nil,"药剂持续期间，使用技能时 4 秒内回复等同 600% 魔力消耗的生命 {variant:2}药剂持续期间使用技能会获得【终息】，魔力消耗 600% "}c["照亮范围缩小 40%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=-40}},nil}
c["暴走状态时获得【不洁之力】3 秒"]={nil,"暴走状态时获得【不洁之力】3 秒 "}c["受到【清晰】影响时，受到伤害的 10% 伤害优先从魔力扣除"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=0,name="DamageTakenFromManaBeforeLife",type="BASE",value=10}},nil}
c["你制造的感电会扩散到半径 15 内的其他敌人上 分裂之物"]={nil,"你制造的感电会扩散到半径 15 内的其他敌人上 分裂之物 "}c["被击中时有 5% 几率制造感电地面"]={{},"被时制造感电地面 "}c["该装备的护甲与闪避提高 55%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=55}},nil}
c["+75 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=75},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=75},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=75}},nil}
c["晕眩和格挡回复降低 40%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-40}},nil}
c["获得 +30% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=30}},nil}
c["反射 20 混沌伤害给近战攻击者 {variant:2,3,4}反射 30 混沌伤害给近战攻击者"]={nil,"反射 20 混沌伤害给近战攻击者 {variant:2,3,4}反射 30 混沌伤害给近战攻击者 "}c["法术伤害提高 38%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=38}},nil}
c["获得【肾上腺素】时回复 25% 生命"]={nil,"获得【肾上腺素】时回复 25% 生命 "}c["若范围内含有 40 点力量，则周围每有一个敌人，劈砍的范围扩大 3%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=3}},"若内含有 40 点，则周围每有一个敌人，劈砍的范围 "}c["当你召唤出闪电魔像时，你无法被感电 最多可同时拥有额外 1 个魔像"]={{},"当你召唤出闪电时，你无法被感电 最多可同时拥有"}c["攻击和法术附加 1 - 80 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=80}},nil}
c["攻击击中每个点燃的敌人会回复 +5 生命"]={{[1]={flags=1,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=5}},"击中每个的敌人会回复  生命 "}c["攻击和法术暴击率提高 58%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=58}},nil}
c["当你或你的图腾使用法术击中 1 名敌人，便获得【秘术增强】效果"]={nil,"当你或你的图腾使用法术击中 1 名敌人，便获得【秘术增强】效果 "}c["法杖攻击的伤害提高 16%"]={{[1]={flags=8388608,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["被击中时触发 10 级的感电地面"]={nil,"被击中时触发 10 级的感电地面 "}c["护体状态下，攻击速度提高 8%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=1,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["周围的敌人无法造成暴击 分裂之物"]={nil,"周围的敌人无法造成暴击 分裂之物 "}c["法术附加 150 - 250 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=150},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=250}},nil}
c["愤怒狂灵的最大生命提高 100%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=100}}}},nil}
c["召唤生物身上的光环效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AuraEffectOnSelf",type="INC",value=10}}}},nil}
c["你的技能对你造成等同 400% 魔力消耗的物理伤害"]={nil,"你的技能对你造成等同 400% 魔力消耗的物理伤害 "}c["范围伤害提高 15%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["【召唤魔侍】可以召唤 2 个额外魔侍勇士 魔侍的移动速度提高 100% 【异灵魔侍】的击中无法闪避 +2 魔侍数量上限"]={{},"可以召唤 2 个"}c["能量护盾的回复速度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=50}},nil}
c["持续冰霜伤害效果提高 22%"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="INC",value=22}},nil}
c["能量护盾的回复速度降低 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=-50}},nil}
c["攻击技能的元素伤害提高 13%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=13}},nil}
c["此物品上的技能石受到 20 级的 集中效应 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportConcentratedEffect"}}},nil}
c["格挡时回复 +20 魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"格挡时回复   "}c["此武器进行的所有攻击皆是暴击"]={{[1]={flags=0,keywordFlags=0,name="WeaponData",type="LIST",value={key="CritChance",value=100}}},nil}
c["近期你每消耗 200 魔力，技能的魔力消耗就提高 60% {variant:1}近期你每消耗 200 魔力，法术伤害便提高 60%,最多可提高 2000%"]={{[1]={flags=2,keywordFlags=0,name="Mana",type="INC",value=60}},"近期你每消耗 200 ，技能的魔力消耗就 {variant:1}近期你每消耗 200 魔力，伤害便提高 60%,最多可提高 2000% "}c["火焰伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=100}},nil}
c["【召唤愤怒狂灵】的伤害提高 140%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value="140"}}}},nil}
c["【愤怒狂灵】击败被点燃的敌人后会刷新自身持续时间。"]={nil,"【愤怒狂灵】击败被点燃的敌人后会刷新自身持续时间。 "}c["你拥有耐力球时，承受的元素伤害降低 5%"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=-5}},nil}
c["你的元素魔像免疫火焰、冰霜、闪电伤害 每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25% 最多可同时拥有额外 1 个魔像"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}}}},"你的元素免疫 每个召唤的魔像可使你的伤害 每个召唤的魔像可使它们为你提供的增益效果提高 25% 最多可同时拥有额外 1 个魔像 "}c["【愤怒狂灵】击中后必定造成点燃"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=100}}}},nil}
c["【召唤愤怒狂灵】的伤害提高 150%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value="150"}}}},nil}
c["近期你每消耗 200 魔力，法术伤害便提高 23%,最多可提高 2000%"]={{[1]={[1]={div=200,limit=2000,limitTotal=true,type="Multiplier",var="ManaSpentRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=23}},nil}
c["近期你每消耗 200 魔力，法术伤害便提高 25%,最多可提高 2000%"]={{[1]={[1]={div=200,limit=2000,limitTotal=true,type="Multiplier",var="ManaSpentRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["被攻击击中时，有 15% 几率制造冰缓地面 {variant:2}承受的冰霜伤害降低 5%"]={{[1]={flags=1,keywordFlags=0,name="ColdDamageTaken",type="BASE",value=15}},"被击中时，制造冰缓地面 {variant:2}降低 5% "}c["药剂持续期间，火焰、冰霜、闪电伤害提高 40%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},nil}
c["燃烧伤害提高 10%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=10}},nil}
c["长杖攻击的攻击速度提高 3% "]={{[1]={flags=2097153,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["+290 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=290}},nil}
c["每个召唤的魔像可使魔像的伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使魔像的 "}c["照亮范围的扩大和缩小也同样作用于范围效果，等于其数值的 50%"]={{[1]={flags=0,keywordFlags=0,name="HalfOfLightRadiusAppliesToAreaOfEffect",type="FLAG",value=true}},nil}
c["药剂的非即时生效类魔力回复也会同时回复生命 近期你每消耗 200 魔力，技能的魔力消耗就提高 60%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=60}},"药剂的非即时生效类也会同时回复生命 近期你每消耗 200 魔力，技能的魔力消耗就 "}c["+150 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=150}},nil}
c["晕眩和格挡回复降低 35%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-35}},nil}
c["【召唤魔像】的冷却速度提高 45%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=45}}}},nil}
c["药剂的非即时生效类魔力回复也会同时回复生命"]={nil,"药剂的非即时生效类魔力回复也会同时回复生命 "}c["30% 几率躲避攻击击中、总护甲降低 50%、总能量护盾降低 30%、攻击与法术伤害总格挡几率降低 30%"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="Armour",type="MORE",value=-50},[3]={flags=0,keywordFlags=0,name="EnergyShield",type="MORE",value=-30},[4]={flags=0,keywordFlags=0,name="BlockChance",type="MORE",value=-30},[5]={flags=0,keywordFlags=0,name="SpellBlockChance",type="MORE",value=-30}},nil}
c["使用魔力药剂时也会回复 10% 最大生命"]={nil,"使用魔力药剂时也会回复 10% 最大生命 "}c["每个暴击球可使中毒伤害提高 18%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=1048576,name="Damage",type="INC",value=18}},nil}
c["Nearby Allies' spells have Culling Strike {variant:2,3}周围友军获得【终结】效果"]={nil,"Nearby Allies' spells have Culling Strike {variant:2,3}【终结】效果 "}c["击中时 50% 几率触发插槽内的闪电法术 {variant:2}击中时 30% 几率触发插槽内的闪电法术"]={{},"时 触发插槽内的闪电法术 {variant:2}击中时 30% 几率触发插槽内的闪电法术 "}c["击中稀有或传奇敌人时，有 20% 几率获得 1 个狂怒球 +1 狂怒球数量上限"]={{[1]={flags=0,keywordFlags=262144,name="FrenzyChargesMax",type="BASE",value=20}},"稀有或传奇敌人时，获得 1 个狂怒球 +1  "}c["锤类和短杖攻击的命中值提高 6%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["穿透后的箭矢造成流血"]={{[1]={[1]={stat="PierceCount",threshold=1,type="StatThreshold"},flags=1025,keywordFlags=0,name="BleedChance",type="BASE",value=100}},nil}
c["法术附加 19 - 34 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=19},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=34}},nil}
c["【蛛之势】改为每 0.5 秒喷出蜘蛛网和缓速效果"]={nil,"【蛛之势】改为每 0.5 秒喷出蜘蛛网和缓速效果 "}c["每个暴击球可使中毒伤害提高 20%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=1048576,name="Damage",type="INC",value=20}},nil}
c["烙印的激活频率提高 4%"]={{[1]={flags=0,keywordFlags=0,name="BrandActivationFrequency",type="INC",value=4}},nil}
c["该装备的攻击暴击率提高 110%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=110}},nil}
c["击中被 1 层蜘蛛网影响的敌人时，有 10% 几率获得 1 个暴击球 每拥有 1 个暴击球，有 10% 几率造成中毒"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=262144,name="PoisonChance",type="BASE",value=10}},"被 1 层蜘蛛网影响的敌人时，获得 1 个暴击球 10% 几率 "}c["图腾获得你 50% 的护甲值 图腾所使用的技能击中时，有 20% 几率嘲讽敌人"]={{[1]={flags=0,keywordFlags=16384,name="Armour",type="BASE",value=50}},"获得你  图腾所使用的技能击中时，有 20% 几率嘲讽敌人 "}c["弓类攻击的暴击率提高 10%"]={{[1]={flags=131072,keywordFlags=0,name="CritChance",type="INC",value=10}},nil}
c["伤害穿透 15% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=15}},nil}
c["击中被 1 层蜘蛛网影响的敌人时，有 10% 几率获得 1 个暴击球"]={{},"被 1 层蜘蛛网影响的敌人时，获得 1 个暴击球 "}c["武器造成的伤害穿透 8% 火焰抗性"]={{[1]={flags=134217728,keywordFlags=0,name="FirePenetration",type="BASE",value=8}},nil}
c["流血状态下移动不再承受额外的伤害 击中流血中的敌人时回复 +30 生命"]={{},"状态下移动不再承受"}c["法术附加 21 - 36 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=21},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=36}},nil}
c["召唤生物命中值提高 100%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=100}}}},nil}
c["+300 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=300}},nil}
c["该装备的能量护盾提高 165%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=165}},nil}
c["+65 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=65}},nil}
c["敌人受到的元素异常状态时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=20},[2]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=20},[3]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=20},[4]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=20}},nil}
c["获得额外混沌伤害，其数值等同于火焰、冰霜、闪电伤害的 8%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=8}},nil}
c["持续吟唱技能魔力消耗 -3"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=-3}},nil}
c["【怨毒光环】不保留魔力"]={{[1]={[1]={skillName="怨毒光环",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["击败被诅咒敌人时，回复 2% 魔力"]={nil,"击败被诅咒敌人时，回复 2% 魔力 "}c["当你使用技能时触发 10 级的【虚空凝视】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,skillId="VoidGaze"}}},nil}
c["+13% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=13}},nil}
c["更明显打击效果"]={nil,"更明显打击效果 "}c["诅咒持续时间延长 40%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=40}},nil}
c["击中时有 10% 几率使目标中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=10}},nil}
c["敌人身上每个诅咒可使伤害提高 20%"]={{[1]={[1]={type="Multiplier",var="CurseOnEnemy"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["魔力回复速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=30}},nil}
c["冰霜伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=10}},nil}
c["魔像生命提高 12%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=12}}}},nil}
c["+18% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=18}},nil}
c["+14% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=14}},nil}
c["烙印的附着范围效果扩大 10%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},"附着 "}c["持续时间缩短 60%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-60}},nil}
c["每个暴击球可使法术伤害提高 25%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["近期内你若有使用技能，每有 1 个轮回球，则每秒受到 150 物理伤害"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},[2]={type="Condition",var="UsedSkillRecently"},flags=0,keywordFlags=0,name="PhysicalDegen",type="BASE",value=150}},nil}
c["物品稀有度降低 20%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=-20}},nil}
c["+190 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=190}},nil}
c["+210 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=210}},nil}
c["+300 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=300}},nil}
c["被击中时承受 5 额外物理伤害"]={{[1]={flags=0,keywordFlags=262144,name="PhysicalDamage",type="BASE",value=5}},"被时承受  "}c["反射 5 物理伤害给近战攻击者"]={{},nil}
c["敌人被点燃的持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=50}},nil}
c["法术暴击率提高 70%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=70}},nil}
c["+110 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=110}},nil}
c["战吼持续时间延长 20%"]={{[1]={flags=0,keywordFlags=4,name="Duration",type="INC",value=20}},nil}
c["药剂持续期间，伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["攻击伤害的 0.3% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.3}},nil}
c["攻击伤害的 0.6% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.6}},nil}
c["该装备的能量护盾提高 135%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=135}},nil}
c["弓类攻击的攻击速度提高 12%"]={{[1]={flags=131073,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["+20% 几率被感电"]={{},"被感电 "}c["复苏的魔卫最大生命提高 90%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=90}}}},nil}
c["被点燃时移动速度提高 13%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=13}},nil}
c["攻击伤害的 0.8% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.8}},nil}
c["从药剂获得的生命回复同样作用于能量护盾 从药剂获得的生命回复额外降低 30%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="BASE"}},"同样作用于能量护盾 从药剂获得的生命回复"}c["经验值获取提高 5% 火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=5}},"经验值获取 提高 20% "}c["+16 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=16}},nil}
c["插上 1 个红色技能石时获得 +100% 火焰抗性 插上 1 个绿色技能石时获得 +100% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=100}},"插上 1 个红色技能石时  插上 1 个绿色技能石时获得 +100% 冰霜抗性 "}c["每 600 闪避值提高 1% 移动速度，最多 75%"]={{[1]={[1]={div="600",limit=75,limitTotal=true,stat="Evasion",type="PerStat"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value="1"}},nil}
c["在真菌地表上被你击败的敌人会爆炸，造成它们 5% 生命的混沌伤害 站定时，脚下产生真菌地表"]={nil,"在真菌地表上被你击败的敌人会爆炸，造成它们 5% 生命的混沌伤害 站定时，脚下产生真菌地表 "}c["闪避值提高 115%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=115}},nil}
c["击败敌人时回复 5% 最大生命 你所击败的敌人将会被歼灭"]={nil,"击败敌人时回复 5% 最大生命 你所击败的敌人将会被歼灭 "}c["【猛攻】效果提高 100%"]={{[1]={flags=0,keywordFlags=0,name="OnslaughtEffect",type="INC",value=100}},nil}
c["护甲提高 325%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=325}},nil}
c["药剂持续期间你会被感电，受到的伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=50}},"药剂持续期间你会被感电， "}c["站立时，创建奉献地面 在奉献地面上时，每秒回复 15 魔力"]={nil,"站立时，创建奉献地面 在奉献地面上时，每秒回复 15 魔力 "}c["锤类和短杖攻击的物理伤害提高 28%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=28}},nil}
c["+10% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=10}},nil}
c["锤类和短杖攻击的物理伤害提高 18%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=18}},nil}
c["近期每失去一个耐力球，总伤害额外提高 3%，最大 15% +1 耐力球数量上限"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesMax",type="MORE"}},"，最大 15% +1  "}c["低血时最大闪避值提高 50%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=50}},nil}
c["不再获得生命偷取，将其偷取效果套用于能量护盾"]={{[1]={flags=0,keywordFlags=0,name="GhostReaver",type="FLAG",value=true}},nil}
c["低血时伤害降低 50%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Damage",type="INC",value=-50}},nil}
c["移动速度提高 13%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=13}},nil}
c["血量低于 20% 的敌人被你的技能击中时，会直接被终结 击败稀有或者传奇敌人时，攻击速度提高 10%，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 10%，持续 20秒"]={{[1]={flags=1,keywordFlags=262144,name="Speed",type="BASE",value=20}},"血量低于 敌人被你的技能时，会直接被终结 击败稀有或者传奇敌人时，提高 10%，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 10%，持续 20秒 "}c["持盾牌时造成的攻击伤害提高 13%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=13}},nil}
c["物品稀有度提高 23%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=23}},nil}
c["角色体型缩小 10%"]={{},"角色体型 "}c["击败敌人有 10% 几率获得暴击球 每个狂怒球可使投射物速度提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ProjectileSpeed",type="BASE",value=10}},"击败敌人获得暴击球 提高 5% "}c["剑类攻击的暴击率提高 20%"]={{[1]={flags=4194304,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["攻击和法术暴击率提高 75%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=75}},nil}
c["火焰伤害击中时有 2% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=2}},nil}
c["药剂持续时间延长 5%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=5}},nil}
c["召唤的纯净哨兵伤害提高 100%"]={{[1]={[1]={skillId="HeraldOfPurity",type="SkillId"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=100}}}},nil}
c["+900 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=900}},nil}
c["周围敌人被致盲 对致盲的敌人时，攻击和法术暴击率提高 140%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=140}},"周围敌人被致盲  "}c["若你在过去 8 秒内打出过暴击，则法术伤害提高 200%"]={{[1]={[1]={type="Condition",var="CritInPast8Sec"},flags=2,keywordFlags=0,name="Damage",type="INC",value=200}},nil}
c["技能魔力消耗降低 8%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-8}},nil}
c["每 200 命中值可使攻击造成的投射物伤害提高 1%"]={{[1]={[1]={div=200,stat="Accuracy",type="PerStat"},flags=1025,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["获得 -8% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-8}},nil}
c["获得拉凯尔塔麾下 18000 名武士的领导权"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC拉凯尔塔",type="FLAG",value=true}},nil}
c["你每装备一个传奇装备，智慧提高 2%"]={{[1]={[1]={type="Multiplier",var="UniqueItem"},flags=0,keywordFlags=0,name="Int",type="INC",value=2}},nil}
c["近期内你若使用过冰霜技能，则火焰伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsedColdSkillRecently"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=25}},nil}
c["【火焰净化】不保留魔力"]={{[1]={[1]={skillName="火焰净化",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["近期内你若使用过火焰技能，则冰霜伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsedFireSkillRecently"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=25}},nil}
c["对冰缓敌人造成的点燃伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=4456448,name="Damage",type="INC",value=100}},nil}
c["战吼持续时间延长 100%"]={{[1]={flags=0,keywordFlags=4,name="Duration",type="INC",value=100}},nil}
c["-10% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=-10}},nil}
c["每个暴击球可使暴击几率提高 8%"]={{},"暴击几率 "}c["近期内你若使用过冰霜技能，则火焰伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsedColdSkillRecently"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=30}},nil}
c["15% 法术格挡率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=15}},nil}
c["药剂持续期间，你无法生命回复 {variant:2}回复量提高 100%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Life",type="INC",value=100}},"你无法回复 {variant:2}回复量 "}c["【极地装甲】的魔力保留降低 100%"]={{[1]={[1]={skillName="极地装甲",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["近期内你若使用过火焰技能，则冰霜伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsedFireSkillRecently"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=30}},nil}
c["获得 +35% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=35}},nil}
c["反射 4 物理伤害给近战攻击者"]={{},nil}
c["起源珠宝"]={{[1]={flags=0,keywordFlags=0,name="Multiplier:PrimordialItem",type="BASE",value=1}},nil}
c["非诅咒类光环的效果提高 18%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=18}},nil}
c["锤类攻击的物理伤害提高 8%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["获得 +40% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=40}},nil}
c["格挡时 20% 几率获得 1 个暴击球 持长杖时攻击伤害格挡几率 +6%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},"格挡时 获得 1 个暴击球  +6% "}c["60% 几率避免致盲"]={{},"避免致盲 "}c["攻击击中有 10% 几率使敌人致盲"]={{}," 使敌人致盲 "}c["物品稀有度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=10}},nil}
c["该装备的护甲与闪避提高 120%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=120}},nil}
c["吞噬 1 个被点燃的灵柩时，补充 1"]={nil,"吞噬 1 个被点燃的灵柩时，补充 1 "}c["攻击附加 6 - 12 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=6},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=12}},nil}
c["25% 几率避免被冰缓"]={{[1]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=25}},nil}
c["近期内你若使用过火焰技能，则不会被冰冻或冰缓"]={nil,"近期内你若使用过火焰技能，则不会被冰冻或冰缓 "}c["晕眩和格挡回复降低 10%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-10}},nil}
c["攻击与法术暴击率提高 30%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["+1% 元素抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=1},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=1}},nil}
c["召唤生物的施法速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=8}}}},nil}
c["自身的每个诅咒会使伤害提高 20%"]={{[1]={[1]={type="Multiplier",var="CurseOnSelf"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["点燃总伤害额外提高 20%"]={{[1]={flags=0,keywordFlags=4194304,name="Damage",type="MORE",value=20}},nil}
c["幸运的暴击率"]={{[1]={flags=0,keywordFlags=0,name="CritChanceLucky",type="FLAG",value=true}},nil}
c["击败敌人后有 20% 几率获得 1 个狂怒球 {variant:22}击败敌人有 20% 几率获得暴击球"]={{},"击败敌人后获得 1 个狂怒球 {variant:22}击败敌人有 20% 几率获得暴击球 "}c["烙印技能暴击率提高 25%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["50% 几率避免被冰冻"]={{[1]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=50}},nil}
c["物理攻击伤害的 0.2% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.2}},nil}
c["被击中时触发 20 级的【永恒窥视】 该装备的闪避与能量护盾提高 150%"]={{[1]={flags=0,keywordFlags=262144,name="EvasionAndEnergyShield",type="INC",value=150}},"被时触发 20 级的【永恒窥视】  "}c["+10% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=10}},nil}
c["你每装备一个传奇装备，智慧提高 3%"]={{[1]={[1]={type="Multiplier",var="UniqueItem"},flags=0,keywordFlags=0,name="Int",type="INC",value=3}},nil}
c["在你有精神球时使用技能，触发 20 级的【精神冲击】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="SpiritBurst"}}},nil}
c["-40 承受的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageTaken",type="BASE",value=-40}},nil}
c["+110 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=110}},nil}
c["近期每消耗 1 具灵柩，攻击和施法速度提高 2%"]={{[1]={[1]={type="Multiplier",var="CorpseConsumedRecently"},flags=0,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["护甲将随绝对火焰抗性而提高"]={{[1]={[1]={div=1,stat="FireResistTotal",type="PerStat"},flags=0,keywordFlags=0,name="Armour",type="INC",value=1}},nil}
c["物理伤害提高 170%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=170}},nil}
c["施法速度提高 13%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=13}},nil}
c["你每使敌人附着一种烙印，它们受到的伤害便提高 10% 【烙印召回】冷却回复速度提高 30% 烙印的附着范围扩大 14%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你每使敌人附着一种烙印，它们 【烙印召回】冷却回复速度提高 30% 附着范围扩大 14% "}c["击败少于 5 层中毒状态的敌人时，有 15% 几率获得 1 个暴击球 每个狂怒球可使中毒伤害提高 10%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=1048576,name="Damage",type="BASE",value=15}},"击败少于 5 层状态的敌人时，获得 1 个暴击球 中毒提高 10% "}c["你的技能造成元素异常状态时，扩散至周围敌人 "]={nil,"你的技能造成元素异常状态时，扩散至周围敌人  "}c["箭矢闪跃"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="箭矢闪跃"}},nil}
c["攻击伤害提高 16%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["暴击球的持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=100}},nil}
c["法术的投射物无法穿透"]={{[1]={flags=2,keywordFlags=0,name="CannotPierce",type="FLAG",value=true}},nil}
c["双手近战武器的攻击命中值提高 12%"]={{[1]={flags=570425344,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["受到击中闪电伤害的 100% 转为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageTakenAsCold",type="BASE",value=100}},nil}
c["此物品上装备的【法术技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="spell",value=1}}},nil}
c["该装备的护甲与闪避提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=100}},nil}
c["+38 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=38}},nil}
c["若范围内含有 40 点智慧，火球投射物的爆炸范围将随飞行距离扩大，最多扩大 50%"]={{[1]={flags=512,keywordFlags=0,name="Int",type="INC",value=50}},"若内含有 40 点，火球投射物的爆炸范围将随飞行距离扩大，最多 "}c["魔力回复速度提高 56%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=56}},nil}
c["当力量超过 1000 时，魔卫造成伤害的 2% 将会转化为给你的生命偷取"]={nil,"当力量超过 1000 时，魔卫造成伤害的 2% 将会转化为给你的生命偷取 "}c["受到【优雅】影响时，有 50% 几率使击中你的敌人致盲 {variant:29}受到【迅捷】影响时，有 8% 几率躲避法术击中"]={{[1]={[1]={type="Condition",var="AffectedBy优雅"},flags=0,keywordFlags=262144,name="SpellDodgeChance",type="BASE",value=50}},"使你的敌人致盲 {variant:29}受到【迅捷】影响时，有 8% 几率 "}c["受到的所有伤害穿透护盾"]={nil,"受到的所有伤害穿透护盾 "}c["每 300 点力量可使魔卫召唤上限额外提高 1 个"]={{[1]={[1]={div=300,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="ActiveZombieLimit",type="BASE",value=1}},nil}
c["图腾的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="TotemDuration",type="INC",value=20}},nil}
c["该装备的护甲提高 120%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=120}},nil}
c["偷取时免疫晕眩 你偷取生命或魔力时，免疫流血"]={nil,"偷取时免疫晕眩 你偷取生命或魔力时，免疫流血 "}c["你一半的力量属性将添加至你的召唤生物身上"]={{[1]={flags=0,keywordFlags=0,name="HalfStrengthAddedToMinions",type="FLAG",value=true}},nil}
c["中毒持续时间延长 23%"]={{[1]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=23}},nil}
c["你的技能造成元素异常状态时，扩散至周围敌人  半径：18 你击中造成的冰缓必定使目标减速 10%"]={nil,"你的技能造成元素异常状态时，扩散至周围敌人  半径：18 你击中造成的冰缓必定使目标减速 10% "}c["攻击附加 1 - 17 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=17}},nil}
c["击败被点燃的敌人回复 +30 生命 获得额外火焰伤害， 其数值等同于物理伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=30}},"击败被的敌人回复  生命 获得额外火焰伤害， 其数值等同于物理伤害的 20% "}c["护甲提高 110%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=110}},nil}
c["移动速度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=25}},nil}
c["格挡时有 40% 几率使攻击者感电 4 秒"]={{},"格挡时使者感电 4 秒 "}c["护甲提高 120%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=120}},nil}
c["烙印技能的持续时间延长 10%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Duration",type="INC",value=10}},nil}
c["+225% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=225}},nil}
c["【纪律】的光环效果提高 60%"]={{[1]={[1]={skillName="纪律",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["在忆境之台上使用时，新物品获得一个额外的【捷】属性 分裂之物"]={nil,"在忆境之台上使用时，新物品获得一个额外的【捷】属性 分裂之物 "}c["右戒指栏位：不能回复魔力"]={nil,"不能回复魔力 "}c["魔侍的攻击速度提高 9%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=9}}}},nil}
c["当你使用技能时，能量护盾有 10% 几率开始回复 异能魔力"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=10}},"当你使用技能时，开始回复 异能魔力 "}c["当你使用技能时，能量护盾有 10% 几率开始回复"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=10}},"当你使用技能时，开始回复 "}c["暴击时有 10% 几率获得暴击球 非暴击时有 20% 几率获得 1 个暴击球 +1 暴击球数量上限"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="PowerChargesMax",type="BASE",value=10}},"获得暴击球 非有 20% 几率获得 1 个暴击球 +1  "}c["每 5 秒触发 15 级的【血肉盛宴】 该装备的能量护盾提高 220%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=220}},"每 5 秒触发 15 级的【血肉盛宴】  "}c["至少有 200 点力量时，+25% 火焰、冰霜、闪电抗性"]={{[1]={[1]={stat="Str",threshold=200,type="StatThreshold"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=25}},nil}
c["【愤怒】不保留魔力"]={{[1]={[1]={skillName="愤怒",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["每 5 秒触发 15 级的【血肉盛宴】"]={nil,"每 5 秒触发 15 级的【血肉盛宴】 "}c["25% 几率造成脆弱 无法造成冻结或冰缓"]={{},"造成脆弱 无法造成冻结或冰缓 "}c["25% 几率造成脆弱"]={{},"造成脆弱 "}c["无法造成感电"]={{[1]={flags=0,keywordFlags=0,name="CannotShock",type="FLAG",value=true}},nil}
c["格挡时 10% 几率获得 1 个暴击球"]={{},"格挡时 获得 1 个暴击球 "}c["25% 几率造成精疲力尽 无法造成感电"]={{},"造成精疲力尽 无法造成感电 "}c["每个暴击球 +5% 暴击伤害加成"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=5}},nil}
c["当你使用物品上的技能时，有 20% 的几率触发 20 级的 【暗影姿态】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillId="ShadeForm"}}},nil}
c["击败敌人有 20% 几率获得狂怒球 击中稀有或传奇敌人时，有 20% 几率获得 1 个狂怒球"]={{},"击败敌人获得狂怒球 稀有或传奇敌人时，有 20% 几率获得 1 个狂怒球 "}c["技能效果持续时间缩短 12%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-12}},nil}
c["火焰、冰霜、闪电伤害提高 35%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=35}},nil}
c["召唤生物命中值提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=10}}}},nil}
c["每个地雷可使你的技能范围扩大  8%"]={nil,"每个地雷可使你的技能范围扩大  8% "}c["魔像移动速度提高 90%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=90}}}},nil}
c["护甲提高 14%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=14}},nil}
c["投射物速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=20}},nil}
c["总属性每有 250 点，魔力保留降低 1% 忆境物品"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=-1},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=-1},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=-1}},"总每有 250 点，魔力保留 忆境物品 "}c["8% 几率避免被晕眩"]={{[1]={flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=8}},nil}
c["使用时承受最大生命 10% 的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"使用时承受 混沌伤害 "}c["法术附加 56 - 84 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=56},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=84}},nil}
c["占用所有武器栏位 附加 6 - 66 基础物理伤害"]={{[1]={flags=134217728,keywordFlags=0,name="PhysicalMin",type="BASE",value=6},[2]={flags=134217728,keywordFlags=0,name="PhysicalMax",type="BASE",value=66}},"占用所有栏位  "}c["拥有【猫之隐匿】时，暴击有 20% 几率致盲敌人"]={{},"暴击致盲敌人 "}c["感电效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=10}},nil}
c["+28 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=28},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=28},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=28}},nil}
c["每个鬼影缠身可使承受的伤害降低 3% 每 2 秒获得一个鬼影缠身，最大 3 个"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-3}},"每个鬼影缠身可使 每 2 秒获得一个鬼影缠身，最大 3 个 "}c["攻击和法术附加 3 - 72 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=3},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=72}},nil}
c["总属性每有 250 点，魔力保留降低 1%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=-1},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=-1},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=-1}},"总每有 250 点，魔力保留 "}c["击中有 50% 几率造成流血"]={{[1]={flags=0,keywordFlags=262144,name="BleedChance",type="BASE",value=50}},nil}
c["击碎敌人时有 15% 几率制造冰缓地面"]={{},"击碎敌人时制造冰缓地面 "}c["攻击技能可使混沌总伤害额外提高 10%"]={{[1]={flags=0,keywordFlags=65536,name="ChaosDamage",type="MORE",value=10}},nil}
c["你每有 100 点敏捷，周围队友获得 +8% 暴击伤害加成"]={{[1]={[1]={div=100,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=8},onlyAllies=true}}},nil}
c["Leech applies instantly during Flask effect"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="InstantLifeLeech",type="FLAG",value=true},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="InstantManaLeech",type="FLAG",value=true}},nil}
c["头部装备上每有 1 点最大能量护盾，便附加 +5 闪避值"]={{[1]={[1]={div=1,stat="EnergyShieldOnHelmet",type="PerStat"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=5}},nil}
c["击中时有 6% 几率击退敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=6}},nil}
c["攻击与施法速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["此物品上装备的【红色技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="strength",value=1}}},nil}
c["该装备的能量护盾提高 225%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=225}},nil}
c["该装备的护甲与能量护盾提高 270%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=270}},nil}
c["不受中毒影响 被击中时，4 秒内恢复等于伤害 20% 的生命"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="BASE",value=20}},"不受影响 被击中时，4 秒内恢复等于 生命 "}c["不受中毒影响"]={nil,"不受中毒影响 "}c["如果敏捷高于智慧，则 +33% 暴击伤害加成"]={{[1]={[1]={type="Condition",var="DexHigherThanInt"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=33}},nil}
c["每 10 点智慧 +2 最大生命"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="Life",type="BASE",value=2}},nil}
c["力量高于智慧时，敏捷提高 15%"]={{[1]={[1]={type="Condition",var="StrHigherThanInt"},flags=0,keywordFlags=0,name="Dex",type="INC",value=15}},nil}
c["药剂效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FlaskEffect",type="INC",value=10}},nil}
c["攻击速度提高 50%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=50}},nil}
c["照亮范围提高 20%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=20}},nil}
c["【猛攻】效果提高 80%"]={{[1]={flags=0,keywordFlags=0,name="OnslaughtEffect",type="INC",value=80}},nil}
c["无法造成混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="DealNoChaos",type="FLAG",value=true}},nil}
c["照亮范围提高 25%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=25}},nil}
c["该装备的攻击暴击率提高 32%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=32}},nil}
c["攻击速度提高 3%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["持续吟唱技能攻击和施法速度提高 5%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["该装备的能量护盾提高 170%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=170}},nil}
c["攻击和法术暴击率提高 65%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=65}},nil}
c["法术伤害降低 80%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=-80}},nil}
c["伤害穿透敌人 6% 的火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=6}},nil}
c["该装备的攻击暴击率提高 15%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["攻击造成的暴击有 20% 几率使敌人瘫痪"]={{},"暴击使敌人瘫痪 "}c["【复苏的魔卫】打出重击攻击时，冷却回复速度提高 100%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={skillId="ZombieSlam",type="SkillId"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=100}}}},nil}
c["此物品上的技能石可以发射 1 个额外投射物"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=1}}}},nil}
c["你的闪电伤害可以造成点燃"]={{[1]={flags=0,keywordFlags=0,name="LightningCanIgnite",type="FLAG",value=true}},nil}
c["该装备的攻击暴击率提高 20%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["使用尊严时，攻击物理伤害提高 60%"]={{[1]={[1]={type="Condition",var="UsedBy尊严"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=60}},nil}
c["附加 8 - 17 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=8},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=17}},nil}
c["每个狂怒球可使冰霜伤害提高 13%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=13}},nil}
c["每个狂怒球可使冰霜伤害提高 15%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=15}},nil}
c["你死亡时给予队友 6 个狂怒球"]={nil,"你死亡时给予队友 6 个狂怒球 "}c["只能在此物品上放入已腐化的技能石"]={nil,"只能在此物品上放入已腐化的技能石 "}c["被击中时，你失去所有的耐力球 击败敌人时，你获得 1 颗耐力球"]={{},"被时，你失去所有的耐力球 击败敌人时， 颗耐力球 "}c["暴击球达到最大数量时，获得 1 个狂怒球 每个狂怒球可使冰霜伤害提高 15%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=15}},"暴击球达到最大数量时，获得 1 个狂怒球  "}c["受到【冰霜净化】影响时，不受冰缓地面影响"]={nil,"受到【冰霜净化】影响时，不受冰缓地面影响 "}c["每个耐力球获得 0.2% 每秒生命回复"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.2}},nil}
c["暴击球达到最大数量时，失去所有的暴击球 暴击球达到最大数量时，获得 1 个狂怒球"]={nil,"暴击球达到最大数量时，失去所有的暴击球 暴击球达到最大数量时，获得 1 个狂怒球 "}c["投射物速度降低 25%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=-25}},nil}
c["暴击球达到最大数量时，失去所有的暴击球"]={nil,"暴击球达到最大数量时，失去所有的暴击球 "}c["弓类攻击的伤害提高 6%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["Grants 2 Passive Skill Points"]={{[1]={flags=0,keywordFlags=0,name="ExtraPoints",type="BASE",value=2}},nil}
c["每个暴击球为法术附加 15 - 25 基础冰霜伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=15},[2]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=25}},nil}
c["你在耐力球达到上限时无法被感电"]={{[1]={[1]={stat="EnduranceCharges",thresholdStat="EnduranceChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=100}},nil}
c["获得【女神的祝福】时无法被冰冻，冰缓，或点燃 获得【女神的祝福】时攻击速度和移动速度提高 20%"]={{[1]={flags=1,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=20}},"获得【女神的祝福】时无法被，冰缓，或点燃 获得【女神的祝福】时速度和移动速度 "}c["附加 13 - 28 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=28}},nil}
c["每秒生命偷取提高 100%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=100}},nil}
c["光环技能范围提高 20%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=20}},nil}
c["击败被冰冻的敌人时有 50% 几率获得暴击球 每个暴击球为法术附加 10 - 20 基础冰霜伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=50}},"击败被的敌人时获得暴击球 附加 10 - 20 基础冰霜伤害 "}c["投射物速度降低 20%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=-20}},nil}
c["附加 1 - 40 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=40}},nil}
c["击败敌人有 35% 几率获得暴击球"]={{},"击败敌人获得暴击球 "}c["附加 1 - 45 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=45}},nil}
c["法术附加 31 - 100 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=31},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=100}},nil}
c["受到【寒冰之捷】影响时，伤害穿透 25% 冰霜抗性"]={{[1]={[1]={type="Condition",var="AffectedBy寒冰之捷"},flags=0,keywordFlags=0,name="ColdPenetration",type="BASE",value=25}},nil}
c["击中稀有或传奇敌人时，有 10% 几率获得【猛攻】效果，持续 10 秒"]={{[1]={flags=0,keywordFlags=262144,name="OnslaughtEffect",type="BASE",value=10}},"稀有或传奇敌人时，获得，持续 10 秒 "}c["每个暴击球可使法术格挡几率提高 2%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="SpellBlockChance",type="INC",value=2}},nil}
c["近期内你若有成功嘲讽敌人，则每秒回复 2% 生命"]={{[1]={[1]={type="Condition",var="TauntedEnemyRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["+150 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=150}},nil}
c["每个暴击球 +0.3% 攻击和法术基础暴击率"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=0.3}},nil}
c["该装备的护甲与能量护盾提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=40}},nil}
c["击中时造成流血"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=100}},nil}
c["有 10% 几率冰冻被冰缓的敌人"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="EnemyFreezeChance",type="BASE",value=10}},nil}
c["法术附加 35 - 105 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=35},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=105}},nil}
c["法术伤害提高 45%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["技能的总魔力消耗 -4"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=-4}},nil}
c["暴击率随闪电抗性提高"]={{[1]={[1]={div=1,stat="LightningResist",type="PerStat"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=1}},nil}
c["暴击无法造成伤害"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="Damage",type="MORE",value=-100}},nil}
c["+23% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=23}},nil}
c["承受的范围伤害降低 8%"]={{[1]={flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-8}},"的 "}c["法术伤害提高 21%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=21}},nil}
c["每秒对周围敌人造成【死亡凋零】，持续 15 秒"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,skillId="Wither"}}},nil}
c["+65 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=65}},nil}
c["近战单手武器攻击的物理伤害提高 24%"]={{[1]={flags=301989888,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["+23% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=23}},nil}
c["此物品上的技能石由 1 级的 精准破坏 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="未知： 精准破坏 "}}},nil}
c["你技能的非诅咒类光环效果提高 15%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=15}},nil}
c["此物品上的技能石受到 1 级的 增大范围 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportIncreasedAreaOfEffect"}}},nil}
c["获得等同 40% 物理攻击伤害的火焰伤害"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=40}},nil}
c["你的法术被禁用了"]={{[1]={[1]={skillType=2,type="SkillType"},flags=0,keywordFlags=0,name="DisableSkill",type="FLAG",value=true}},nil}
c["法术伤害提高 17%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=17}},nil}
c["此物品上的技能石受到 1 级的 施法回响 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportMulticast"}}},nil}
c["法术伤害提高 13%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=13}},nil}
c["当你攻击时触发一个插槽内的法术"]={nil,"当你攻击时触发一个插槽内的法术 "}c["每秒回复 40 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRegen",type="BASE",value=40}},nil}
c["总冰霜抗性额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="MORE",value=-50}},nil}
c["击中时有 10% 几率击退敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=10}},nil}
c["该装备的物理伤害提高 220%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=220}},nil}
c["玩家等级每提高 3 级，该武器攻击时便附加 3 - 5 物理伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={div="3",type="Multiplier",var="Level"},flags=1,keywordFlags=0,name="PhysicalMin",type="BASE",value="3"},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={div="3",type="Multiplier",var="Level"},flags=1,keywordFlags=0,name="PhysicalMax",type="BASE",value="5"}},nil}
c["人物等级每到达 25 级，该插槽内的【主动技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},[2]={div=25,type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="active_skill",value="1"}}},nil}
c["免疫燃烧地面，感电地面和冰缓地面"]={nil,"免疫燃烧地面，感电地面和冰缓地面 "}c["锤类攻击的暴击率提高 40%"]={{[1]={flags=1048576,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["命中值提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["此武器攻击造成的火焰、冰霜、闪电伤害提高 108%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=108}},nil}
c["致盲的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=20}},"致盲的 "}c["长杖攻击的暴击率提高 40%"]={{[1]={flags=2097152,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["此武器攻击造成的火焰、冰霜、闪电伤害提高 115%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=115}},nil}
c["双持时攻击格挡率提高 10%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},nil}
c["法术伤害提高 39%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=39}},nil}
c["弓类攻击的物理伤害提高 24%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["伤害穿透 20% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=20}},nil}
c["获得额外混沌伤害，其数值等同于物理伤害的 14%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=14}},nil}
c["该装备的攻击暴击率提高 29%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=29}},nil}
c["格挡攻击时反射 240 - 300 物理伤害"]={nil,"格挡攻击时反射 240 - 300 物理伤害 "}c["附加 27 - 86 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=27},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=86}},nil}
c["每一级可让你承受攻击造成的物理伤害 -1"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="BASE",value=-1}},"每一级可让你承受  "}c["获得额外混沌伤害，其数值等同于物理伤害的 15%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=15}},nil}
c["每秒回复 100 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRegen",type="BASE",value=100}},nil}
c["处于魔力药剂持续时间内时，攻击和施法速度提高 8% 处于魔力药剂持续时间内时，魔力回复速度提高 10%"]={{[1]={flags=1,keywordFlags=0,name="Mana",type="INC",value=8}},"处于药剂持续时间内时，和施法速度 处于魔力药剂持续时间内时，魔力回复速度提高 10% "}c["附加 30 - 92 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=92}},nil}
c["召唤生物有 5% 几率造成双倍伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DoubleDamageChance",type="BASE",value=5}}}},nil}
c["法术伤害提高 35%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=35}},nil}
c["受到防卫技能增益效果影响时，+250 护甲 被击中时，有 10% 几率获得双倍护甲效果 受到防卫技能增益效果影响时，每秒生命回复 0.5% 最大生命"]={{[1]={flags=0,keywordFlags=262144,name="Armour",type="BASE",value=250}},"受到防卫技能增益效果影响时，  被时，有 10% 几率获得双倍护甲效果 受到防卫技能增益效果影响时，每秒生命回复 0.5% 最大生命 "}c["该装备的能量护盾提高 70%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=70}},nil}
c["格挡时回复能量护盾，数值等同于 4% 的护甲 {variant:2,3,4}格挡时回复能量护盾，数值等同于 2% 的护甲"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=4}},"格挡时回复，数值等同于 护甲 {variant:2,3,4}格挡时回复能量护盾，数值等同于 2% 的护甲 "}c["诅咒范围缩小 40%"]={{[1]={flags=0,keywordFlags=2,name="AreaOfEffect",type="INC",value=-40}},nil}
c["此物品上的技能石受到 20 级的 致盲 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportBlind"}}},nil}
c["持长杖时，范围效果扩大 6%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=6}},nil}
c["受到【奋锐光环】影响时，你创造的奉献地面效果可延续 2 秒 {variant:82}当你受到奋锐光环影响时，创造的【奉献地面】可以使敌人承受的伤害提高 10%"]={{[1]={[1]={type="Condition",var="AffectedBy奋锐光环"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你创造的奉献地面效果可延续 2 秒 {variant:82}当你受到奋锐光环影响时，创造的【奉献地面】可以使敌人 "}c["捷技能的魔力保留降低 25%"]={{[1]={[1]={skillType=63,type="SkillType"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-25}},nil}
c["最大生命降低 15%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=-15}},nil}
c["周围敌人被干扰，移动速度降低 25% {variant:1,2}对被干扰敌人的伤害提高 80%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Hindered"},flags=0,keywordFlags=262144,name="MovementSpeed",type="INC",value=-25}},"周围敌人被干扰， {variant:1,2}伤害提高 80% "}c["每 10 点奉献使技能魔力消耗降低 1%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-1}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 22%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=22}},nil}
c["不会被致盲 承受来自致盲敌人的伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 "}c["此物品上的技能石受到 5 级的 致盲 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=5,skillId="SupportBlind"}}},nil}
c["攻击和法术总暴击率额外降低 40%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="MORE",value=-40}},nil}
c["攻击伤害的 0.5% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.5}},nil}
c["法术伤害提高 37%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=37}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 26%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=26}},nil}
c["药剂充能获取提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=10}},nil}
c["陷阱伤害提高 16%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=16}},nil}
c["免疫点燃和感电 近期每有 1 个你的地雷被引爆，则每秒回复 1% 生命，最多 10% 近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10% 投掷陷阱类技能的魔力消耗降低 20% 投掷地雷的技能魔力保留降低 20%"]={{},"免疫和感电 近期每有 1 个你的被引爆，则10% 近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10% 投掷陷阱类技能的魔力消耗降低 20% 投掷地雷的技能魔力保留降低 20% "}c["持长杖时，攻击类技能造成的异常状态伤害提高 6%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=6}},nil}
c["生效期间，瓦尔技能的伤害提高 100%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=256,name="Damage",type="INC",value=100}},nil}
c["长杖攻击的物理伤害提高 6%"]={{[1]={flags=2097152,keywordFlags=0,name="PhysicalDamage",type="INC",value=6}},nil}
c["对满血敌人的攻击和法术总暴击率额外提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="FullLife"},flags=0,keywordFlags=0,name="CritChance",type="MORE",value=100}},nil}
c["物理伤害提高 330%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=330}},nil}
c["范围内力量和智慧总计 40 点时，【元素打击】和【狂野打击】无法选择冰霜元素 {variant:2}范围内力量和智慧总计 40 点时，【元素打击】和【狂野打击】的总冰霜伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE"},[2]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内总计 40 点时，【元素打击】和【狂野打击】无法选择冰霜元素 {variant:2}范围内力量和智慧总计 40 "}c["双持时攻击伤害格挡几率提高 2%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=2}},nil}
c["召唤生物的伤害提高 60%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=60}}}},nil}
c["灵能护体"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="灵能护体"}},nil}
c["攻击击中时有 20% 几率穿刺敌人"]={{[1]={flags=0,keywordFlags=0,name="ImpaleChance",type="BASE",value=20}},nil}
c["狙击"]={{[1]={flags=0,keywordFlags=0,name="FarShot",type="FLAG",value=true}},nil}
c["承受的冰霜伤害降低 5%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageTaken",type="INC",value=-5}},nil}
c["召唤生物的伤害提高 70%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=70}}}},nil}
c["近期内每消耗 200 魔力，你身上的秘术增强效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=10}},"近期内每消耗 200 ，你身上的秘术增强效果 "}c["长杖攻击的命中值提高 8%"]={{[1]={flags=2097152,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["长杖攻击的暴击率提高 20%"]={{[1]={flags=2097152,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["受到【清晰】影响时，你使用技能时有 15% 几率回复 10% 最大魔力"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=15}},"你使用技能时回复 10%  "}c["法术伤害提高 26%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=26}},nil}
c["+18 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=18}},nil}
c["+150 长杖攻击的命中值"]={{[1]={flags=2097152,keywordFlags=0,name="Accuracy",type="BASE",value=150}},nil}
c["+18 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=18}},nil}
c["双手近战武器攻击的物理伤害提高 24%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["格挡时有 30% 几率获得 3 秒不洁之力"]={{},"格挡时获得 3 秒不洁之力 "}c["闪避值提高 250%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=250}},nil}
c["施放法术后 1 秒内回复 8 生命"]={nil,"施放法术后 1 秒内回复 8 生命 "}c["法术伤害提高 28%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=28}},nil}
c["该武器击中致盲敌人时，附加 151 - 203 基础火焰伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=7,keywordFlags=0,name="FireMin",type="BASE",value="151"},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=7,keywordFlags=0,name="FireMax",type="BASE",value="203"}},nil}
c["插槽中诅咒宝石的效果降低 33%"]={{},"插槽中宝石的效果 "}c["攻击技能的闪电伤害提高 30%"]={{[1]={flags=0,keywordFlags=65536,name="LightningDamage",type="INC",value=30}},nil}
c["装备时触发 20 级的主动技能【失明光环】"]={nil,"装备时触发 20 级的主动技能【失明光环】 "}c["对致盲的敌人时，攻击和法术暴击率提高 130%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=130}},nil}
c["攻击和法术附加 23 - 40 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=23},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=40}},nil}
c["近期内你若有打出过暴击，则施法速度提高 10%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=16,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["+33% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=33}},nil}
c["有额外 10% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=10}},nil}
c["受到【寒冰之捷】影响时，+1% 冰霜抗性上限"]={{[1]={[1]={type="Condition",var="AffectedBy寒冰之捷"},flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=1}},nil}
c["附加 22 - 44 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=22},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=44}},nil}
c["法术伤害提高 33%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=33}},nil}
c["火焰伤害击中时有 19% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=19}},nil}
c["法术附加 5 - 8 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=5},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=8}},nil}
c["药剂充能使用降低 15%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=-15}},nil}
c["近期内你若有击败敌人，则进入【迷踪】状态"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="Condition:Phasing",type="FLAG",value=true}},nil}
c["火焰伤害击中时有 22% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=22}},nil}
c["你的能量护盾从 0 开始"]={nil,"你的能量护盾从 0 开始 "}c["你可以对 1 个敌人造成最多 8 次流血 当敌人移动时，你的流血无法造成额外伤害"]={nil,"你可以对 1 个敌人造成最多 8 次流血 当敌人移动时，你的流血无法造成额外伤害 "}c["燃烧伤害提高 50%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=50}},nil}
c["附加 14 - 22 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=22}},nil}
c["被诅咒时你击中一个敌人，触发 20 级的【元素守卫】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="OnHitWhileCursedTriggeredCurseNova"}}},nil}
c["击中受诅咒的敌人时造成易燃 {variant:2}击中敌人时，用 10 级的【易燃】诅咒敌人"]={nil,"击中受诅咒的敌人时造成易燃 {variant:2}击中敌人时，用 10 级的【易燃】诅咒敌人 "}c["当你点燃 1 个敌人时，回复 30 生命 敌人被点燃的持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="INC",value=15}},"当你 1 个敌人时，回复 30 生命 敌人被点燃的持续时间 "}c["召唤生物的施法速度提高 14%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=14}}}},nil}
c["+24 力量和敏捷"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=24}},nil}
c["获得暴击球时有 25% 几率获得 1 个耐力球 当你放置图腾时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 你拥有耐力球时，承受的元素伤害降低 5%"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=16384,name="ElementalDamageTaken",type="BASE",value=25}},"获得暴击球时获得 1 个耐力球 当你放置时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 降低 5% "}c["法术附加 110 - 165 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=110},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=165}},nil}
c["弓攻击附加 181 - 251 基础冰霜伤害"]={{[1]={flags=131072,keywordFlags=0,name="ColdMin",type="BASE",value=181},[2]={flags=131072,keywordFlags=0,name="ColdMax",type="BASE",value=251}},nil}
c["总伤害额外提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE",value=10}},nil}
c["你造成的烈毒的伤害生效速度加快 20%"]={{[1]={flags=0,keywordFlags=0,name="PoisonFaster",type="INC",value=20}},nil}
c["最大魔力提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=12}},nil}
c["反射 10 冰霜伤害给近战攻击者 你的冰霜伤害可以点燃"]={nil,"反射 10 冰霜伤害给近战攻击者 你的冰霜伤害可以点燃 "}c["以夏巴夸亚的名义用 8000 名祭品之血浸染"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC夏巴夸亚",type="FLAG",value=true}},nil}
c["攻击与法术暴击率提高 20%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["生命和能量护盾回复率降低 25%"]={{[1]={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=-25},[2]={flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=-25}},nil}
c["远射"]={{[1]={flags=0,keywordFlags=0,name="FarShot",type="FLAG",value=true}},nil}
c["主手武器攻击伤害提高 26%"]={{[1]={[1]={type="Condition",var="MainHandAttack"},flags=1,keywordFlags=0,name="Damage",type="INC",value=26}},nil}
c["此物品上装备的【诅咒技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="curse",value=1}}},nil}
c["法术附加 130 - 190 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=130},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=190}},nil}
c["10% chance of Arrows Piercing"]={nil,"10% chance of Arrows Piercing "}c["长杖攻击的元素伤害提高 30%"]={{[1]={flags=2097152,keywordFlags=0,name="ElementalDamage",type="INC",value=30}},nil}
c["近期内你若被击中，则每秒获得 1 个耐力球 +1 耐力球数量上限"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="EnduranceChargesMax",type="BASE",value=1}},"每秒获得 1 个耐力球   "}c["暴击时有 50% 几率获得 1 充能"]={{},"获得 1 充能 "}c["该装备的能量护盾提高 110%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=110}},nil}
c["每秒 2.5 基础魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=2.5}},nil}
c["魔力回复速度提高 45%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=45}},nil}
c["格挡时回复 +20 魔力 {variant:2,3}格挡时回复 +24 魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"格挡时回复   {variant:2,3}格挡时回复 +24 魔力 "}c["你技能的非诅咒类光环效果提高 3%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=3}},nil}
c["若近期消耗总计至少消耗 200 魔力，则诅咒效果提高 10% 使用魔力药剂的时候移除一个诅咒"]={{[1]={flags=0,keywordFlags=2,name="Mana",type="INC",value=10}},"若近期消耗总计至少消耗 200 ，则效果 使用魔力药剂的时候移除一个诅咒 "}c["法术附加 5 - 10 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=5},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=10}},nil}
c["敌人被点燃的持续时间缩短 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=-25}},nil}
c["范围效果扩大 25%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=25}},nil}
c["击败被点燃的敌人回复 +10 生命 敌人被点燃的持续时间缩短 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=10}},"击败被的敌人回复  生命 敌人被点燃的持续时间缩短 25% "}c["近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10%"]={{[1]={[1]={limit=10,limitTotal=true,type="Multiplier",var="TrapTriggeredRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}},nil}
c["击败被点燃的敌人回复 +10 生命"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=10}},"击败被的敌人回复  生命 "}c["法术附加 6 - 12 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=6},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=12}},nil}
c["击中时有 100% 几率嘲讽敌人 近期内你若有成功嘲讽敌人，则受到的伤害降低 6% 近期内你若有成功嘲讽敌人，则每秒回复 2% 生命 被你嘲讽的敌人攻击其他目标时，造成的击中和异常状态总伤害额外降低 10%"]={{[1]={[1]={type="Condition",var="TauntedEnemyRecently"},[2]={type="Condition",var="TauntedEnemyRecently"},flags=0,keywordFlags=262144,name="DamageTaken",type="BASE",value=100}},"时嘲讽敌人 降低 6% 每秒回复 2% 生命 被你嘲讽的敌人攻击其他目标时，造成的击中和异常状态总伤害额外降低 10% "}c["你创建的奉献地面可以为你和友军获得元素异常免疫"]={nil,"你创建的奉献地面可以为你和友军获得元素异常免疫 "}c["狂热誓言"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="狂热誓言"}},nil}
c["受到【脆弱】诅咒时，非满血时被视作低血状态"]={{[1]={[1]={type="Condition",var="AffectedBy脆弱"},flags=0,keywordFlags=0,name="Condition:LowLife",type="FLAG",value=true}},nil}
c["周围至少有 1 个友军时，你和周围友军总伤害额外提高 10%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="NearbyAlly"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="MORE",value=10}}}},nil}
c["你受到的诅咒效果提高 50%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=50}},nil}
c["击败敌人后有 20% 几率获得 1 个狂怒球"]={{},"击败敌人后获得 1 个狂怒球 "}c["每有 1 个地图物品属性影响该地区，则攻击速度提高 3%"]={{[1]={flags=1,keywordFlags=0,name="Str",type="INC",value=3},[2]={flags=1,keywordFlags=0,name="Dex",type="INC",value=3},[3]={flags=1,keywordFlags=0,name="Int",type="INC",value=3}},"每有 1 个地图物品影响该地区，则速度 "}c["至少有 200 点敏捷时，投射物攻击伤害提高 45%"]={{[1]={[1]={stat="Dex",threshold=200,type="StatThreshold"},flags=1025,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["受到【脆弱】诅咒时，敌人攻击你会特别不幸 你受到 10 级【脆弱】的诅咒"]={nil,"受到【脆弱】诅咒时，敌人攻击你会特别不幸 你受到 10 级【脆弱】的诅咒 "}c["受到【脆弱】诅咒时，敌人攻击你会特别不幸"]={nil,"受到【脆弱】诅咒时，敌人攻击你会特别不幸 "}c["混沌伤害提高 35%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=35}},nil}
c["攻击附加 10 - 15 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=15}},nil}
c["固定基底词缀三倍效果加成"]={nil,"固定基底词缀三倍效果加成 "}c["【尊严】的光环效果提高 60%"]={{[1]={[1]={skillName="尊严",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["承受伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},nil}
c["+30 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=30},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=30}},nil}
c["【奋锐光环】的光环效果提高 60%"]={{[1]={[1]={skillName="奋锐光环",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["静止时，你身上的护体效果提高 10%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="FortifyEffectOnSelf",type="INC",value=10}},nil}
c["每个耐力球可使每秒生命回复提高 20"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=20}},nil}
c["【冰霜闪现】的持续时间延长 50%"]={{[1]={[1]={skillName="冰霜闪现",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=50}},nil}
c["+200 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=200}},nil}
c["被击中时有 25% 几率避免火焰伤害 {variant:2}你正在燃烧时总能点燃敌人"]={{[1]={flags=0,keywordFlags=262144,name="FireDamage",type="BASE",value=25}},"被时避免 {variant:2}你正在燃烧时总能点燃敌人 "}c["+6% 持续流血伤害加成"]={{[1]={flags=0,keywordFlags=2097152,name="DotMultiplier",type="BASE",value=6}},nil}
c["对致盲敌人的击中和异常状态伤害提高 12%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=12}},nil}
c["敏捷提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=18}},nil}
c["剑类攻击 +15% 暴击伤害加成"]={{[1]={flags=4194304,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["+150% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=150}},nil}
c["【坚定】的光环效果提高 60%"]={{[1]={[1]={skillName="坚定",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["每 5 秒触发 20 级的【骸骨奉献】、【血肉奉献】或【灵魂奉献】 以此种方式触发的奉献技能也会影响你"]={nil,"每 5 秒触发 20 级的【骸骨奉献】、【血肉奉献】或【灵魂奉献】 以此种方式触发的奉献技能也会影响你 "}c["+35% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=35}},nil}
c["当你击败 1 名感电敌人，对周围敌人造成相同的感电效果"]={nil,"当你击败 1 名感电敌人，对周围敌人造成相同的感电效果 "}c["愤怒光环的效果提高 60%"]={{[1]={[1]={skillName="愤怒",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["获得额外混沌伤害， 其数值等同于冰霜伤害的 5%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageGainAsChaos",type="BASE",value=5}},nil}
c["此武器攻击击中被点燃的敌人时，有 25% 几率造成流血"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="BleedChance",type="BASE",value=25}},nil}
c["药剂持续期间，移动速度提高 36%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=36}},nil}
c["最大能量护盾提高 30%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=30}},nil}
c["技能效果持续时间延长 45%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=45}},nil}
c["药剂持续期间，暴击几率提高 120%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=120}},nil}
c["药剂持续期间，攻击速度提高 36%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=1,keywordFlags=0,name="Speed",type="INC",value=36}},nil}
c["对流血敌人的攻击和法术暴击率提高 80%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=80}},nil}
c["近期内你若造成非暴击伤害，则 +60% 暴击伤害加成"]={{[1]={[1]={type="Condition",var="NonCritRecently"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=60}},nil}
c["最大魔力提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=20}},nil}
c["+15% 地雷暴击伤害加成"]={{[1]={flags=0,keywordFlags=8192,name="CritMultiplier",type="BASE",value=15}},nil}
c["混沌伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=10}},nil}
c["不会获得药剂的效果"]={{[1]={flags=0,keywordFlags=0,name="FlasksDoNotApplyToPlayer",type="FLAG",value=true}},nil}
c["满血时移动速度提高 35%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=35}},nil}
c["对致盲的敌人的击中和异常状态伤害提高 50%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=50}},nil}
c["斧类攻击的伤害提高 10%"]={{[1]={flags=65536,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["双持时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["每拥有 1 个狂怒球，有 2% 几率躲避攻击击中"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=2}},nil}
c["每个影响你的【深渊珠宝】可使最大魔力提高 1%"]={{[1]={[1]={type="Multiplier",var="AbyssJewel"},flags=0,keywordFlags=0,name="Mana",type="INC",value=1}},nil}
c["受到【闪电净化】影响时，受到击中物理伤害的 10% 转换为闪电伤害"]={{[1]={[1]={type="Condition",var="AffectedBy闪电净化"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsLightning",type="BASE",value=10}},nil}
c["持盾牌时攻击造成的物理伤害提高 8% "]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["获得额外混沌伤害，其数值等同于火焰、冰霜、闪电伤害的 7%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=7}},nil}
c["地雷伤害可以穿透 10% 元素抗性"]={{[1]={flags=0,keywordFlags=8192,name="ElementalPenetration",type="BASE",value=10}},nil}
c["药剂持续期间间缩短 30%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=-30}},nil}
c["对爪类武器的攻击速度加成同时套用于空手攻击速度上"]={{[1]={flags=0,keywordFlags=0,name="ClawAttackSpeedAppliesToUnarmed",type="FLAG",value=true}},nil}
c["击败敌人回复 +25 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=25}},nil}
c["药剂持续期间，使用的瓦尔技能无法附加阻灵术效果"]={nil,"药剂持续期间，使用的瓦尔技能无法附加阻灵术效果 "}c["爪类攻击 +25% 暴击伤害加成"]={{[1]={flags=262144,keywordFlags=0,name="CritMultiplier",type="BASE",value=25}},nil}
c["获得额外混沌伤害，其数值等同于物理伤害的 4%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=4}},nil}
c["使用时回复生命上限 50% 的生命 {variant:2}使用时回复生命上限 75% 的生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=50}},"使用时回复上限 生命 {variant:2}使用时回复生命上限 75% 的生命 "}c["生命全满时，生命偷取套用于能量护盾"]={nil,"生命全满时，生命偷取套用于能量护盾 "}c["魔像 +900 护甲值"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Armour",type="BASE",value=900}}}},nil}
c["+350 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=350}},nil}
c["8% 几率避免元素异常状态"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=8},[2]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=8},[3]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=8},[4]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=8}},nil}
c["攻击击中有 25% 几率使敌人流血"]={{[1]={flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=25}},nil}
c["每秒失去 5% 能量护盾"]={nil,"每秒失去 5% 能量护盾 "}c["持锤时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["闪避值提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=12}},nil}
c["攻击附加 4 - 14 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=14}},nil}
c["无法自动回复能量护盾"]={nil,"无法自动回复能量护盾 "}c["无法充能能量护盾 无法自动回复能量护盾"]={nil,"无法充能能量护盾 无法自动回复能量护盾 "}c["近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={[1]={type="Condition",var="KilledAffectedByDotRecently"},flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=70},[2]={[1]={type="Condition",var="KilledAffectedByDotRecently"},flags=0,keywordFlags=0,name="ManaRecoveryRate",type="INC",value=70},[3]={[1]={type="Condition",var="KilledAffectedByDotRecently"},flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=70}},nil}
c["冰霜伤害提高 23%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=23}},nil}
c["无法充能能量护盾"]={nil,"无法充能能量护盾 "}c["法术附加 3 - 6 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=3},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=6}},nil}
c["你的能量护盾从 0 开始 无法充能能量护盾"]={nil,"你的能量护盾从 0 开始 无法充能能量护盾 "}c["最大物理攻击总伤害额外提高 35%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMax",type="MORE",value=35}},nil}
c["攻击附加 1 - 18 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=18}},nil}
c["最大物理攻击总伤害额外提高 40%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMax",type="MORE",value=40}},nil}
c["最小物理攻击总伤害额外降低 40%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMin",type="MORE",value=-40}},nil}
c["陷阱投掷速度降低 25%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=-25}},nil}
c["最大物理攻击总伤害额外提高 20%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMax",type="MORE",value=20}},nil}
c["最小物理攻击总伤害额外降低 20%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalMin",type="MORE",value=-20}},nil}
c["每 5 秒就会移除身上诅咒和元素异常状态 每隔 5 秒，在之后 1 秒内回复 30% 最大生命"]={nil,"每 5 秒就会移除身上诅咒和元素异常状态 每隔 5 秒，在之后 1 秒内回复 30% 最大生命 "}c["+23 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=23},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=23},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=23}},nil}
c["冰霜技能暴击率提高 20%"]={{[1]={flags=0,keywordFlags=32,name="CritChance",type="INC",value=20}},nil}
c["该装备的物理伤害提高 170%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=170}},nil}
c["击败敌人时召唤 1 级的低阶神殿"]={nil,nil}
c["召唤生物的攻击额外造成 8 - 16 物理伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="PhysicalMin",type="BASE",value="8"}}},[2]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="PhysicalMax",type="BASE",value="16"}}}},nil}
c["生命偷取造成伤害的 200% 转化为混沌伤害 药剂持续期间，移动速度提高 15%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Life",type="INC",value=15}},"偷取造成伤害的 200% 转化为混沌伤害 移动速度 "}c["生命偷取造成伤害的 200% 转化为混沌伤害"]={nil,"生命偷取造成伤害的 200% 转化为混沌伤害 "}c["当你格挡时有 10% 几率获得 1 个耐力球 双持时，攻击技能造成的异常状态伤害提高 20% 当你格挡时有 10% 几率获得 1 个狂怒球"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="BASE",value=10}},"当你格挡时获得 1 个耐力球 提高 20% 当你格挡时有 10% 几率获得 1 个狂怒球 "}c["+12% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=12}},nil}
c["药剂持续期间，照亮范围扩大 25%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LightRadius",type="INC",value=25}},nil}
c["攻击附加 1 - 32 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=32}},nil}
c["+13% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=13}},nil}
c["攻击附加 6 - 13 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=6},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=13}},nil}
c["受到的物理伤害提高 45%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=45}},nil}
c["攻击附加 6 - 14 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=6},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=14}},nil}
c["受【精准】影响时免疫致盲"]={nil,"受【精准】影响时免疫致盲 "}c["攻击附加 3 - 7 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=3},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=7}},nil}
c["攻击速度降低 20%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-20}},nil}
c["+90 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=90}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 10% {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=10}},"攻击的 {variant:3}攻击技能的火焰、冰霜、闪电伤害提高 10% "}c["敌人身上每个穿刺效果，你和附近友军附加 4 - 8 物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=8}},"敌人身上每个穿刺效果，你和附近友军 "}c["被你瘫痪的敌人受到的物理伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="Maimed"},flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=10}}}},nil}
c["击中时 50% 几率触发插槽内的闪电法术"]={{},"时 触发插槽内的闪电法术 "}c["图腾发射 2 个额外投射物"]={{[1]={flags=0,keywordFlags=16384,name="ProjectileCount",type="BASE",value=2}},nil}
c["地雷可以被额外触发 1 次"]={{},"可以被"}c["召唤生物有 12% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=12}}}},nil}
c["弓类攻击有 10% 几率造成流血"]={{[1]={flags=131072,keywordFlags=0,name="BleedChance",type="BASE",value=10}},nil}
c["+75% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=75}},nil}
c["不会被致盲 承受来自致盲敌人的伤害降低 10% 对致盲敌人的击中和异常状态伤害提高 30% 击中敌人后有 25% 几率使其致盲"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 伤害提高 30% 击中敌人后有 25% 几率使其致盲 "}c["你的近战伤害晕眩敌人时有 20% 几率获得护体"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="BASE",value=20}},"你的晕眩敌人时获得护体 "}c["范围伤害提高 12%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["取护甲和闪避值之间的较低者，每 300 点可使攻击伤害提高 1%"]={{[1]={[1]={div=300,stat="LowestOfArmourAndEvasion",type="PerStat"},flags=1,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["+120 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=120}},nil}
c["+320 护甲和闪避值"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="BASE",value=320}},nil}
c["在总计消耗 200 点魔力后的 4 秒内，承受的伤害降低 6%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-6}},"在总计消耗 200 点后的 4 秒内，承受的伤害 "}c["近期内你若有能量护盾开始回复，则获得【迷踪】状态"]={nil,"近期内你若有能量护盾开始回复，则获得【迷踪】状态 "}c["【苦痛之捷】的增益效果提高 100%"]={{[1]={[1]={skillName="苦痛之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=100}},nil}
c["物品掉落数量提高 7%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=7}},nil}
c["斧类攻击的攻击速度提高 3%"]={{[1]={flags=65537,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["未被诅咒时攻击伤害格挡几率 +10%"]={{[1]={[1]={neg=true,type="Condition",var="Cursed"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},nil}
c["每个狂怒球可使攻击伤害提高 8%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=1,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["装备 1 件魔法物品时，物品掉落数量提高 13%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="MagicItem"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=13}},nil}
c["药剂生命回复速度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecoveryRate",type="INC",value=25}},nil}
c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 20%"]={nil,"当你创建旗帜时，它会获得你当前放置旗帜等阶的 20% "}c["伤害穿透 8% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=8}},nil}
c["击败时，回复 4% 魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=70}},"击败时，回复 4%  近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复 "}c["每装备 1 个未腐化的物品，获得 15 每秒生命回复 每装备 1 个被腐化的物品时，技能的总魔力消耗 -2"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=-2}},"每装备 1 个未腐化的物品，获得 15 每秒回复 每装备 1 个被腐化的物品时，技能的总魔力消耗  "}c["附加 19 - 29 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=19},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=29}},nil}
c["附加 29 - 39 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=29},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=39}},nil}
c["召唤愤怒狂灵的伤害提高 80%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=80}}}},nil}
c["对被点燃敌人附加 15 - 25 基础火焰伤害 附加 13 - 31 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=25}},"对被 附加 13 - 31 基础物理伤害 "}c["匕首攻击的攻击速度提高 12%"]={{[1]={flags=524289,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["攻击附加 5 - 15 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=15}},nil}
c["近期内如果没有被击中，则闪避值降低 40%"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=-40}},nil}
c["锤类和短杖攻击的物理伤害提高 8%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["能量护盾全满时，受到的伤害提高 10%"]={{[1]={[1]={type="Condition",var="FullEnergyShield"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},nil}
c["感电会反射回自己身上"]={nil,"感电会反射回自己身上 "}c["你被感电的持续时间延长 100% 感电会反射回自己身上"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=100}},"你被感电的 感电会反射回自己身上 "}c["暴击时制造奉献地面"]={nil,"暴击时制造奉献地面 "}c["满神圣球时，你获得【神性】，持续 10 秒"]={{[1]={[1]={type="Condition",var="Divinity"},flags=0,keywordFlags=0,name="ElementalDamage",type="MORE",value=50},[2]={[1]={type="Condition",var="Divinity"},flags=0,keywordFlags=0,name="ElementalDamageTaken",type="MORE",value=-20}},nil}
c["攻击附加 1 - 50 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=50}},nil}
c["至少有 200 点智慧时，暴击率提高 55%"]={{[1]={[1]={stat="Int",threshold=200,type="StatThreshold"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=55}},nil}
c["法术伤害提高 85%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=85}},nil}
c["当你失去【猫之隐匿】时，触发 20 级的【威吓战吼】"]={nil,"当你失去【猫之隐匿】时，触发 20 级的【威吓战吼】 "}c["每 1 个耐力球可使近战伤害提高 4%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=256,keywordFlags=0,name="Damage",type="INC",value=4}},nil}
c["至少有 200 点智慧时，暴击率提高 60%"]={{[1]={[1]={stat="Int",threshold=200,type="StatThreshold"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["爪类攻击的伤害提高 8%"]={{[1]={flags=262144,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["【魔卫复苏】技能石等级 +1"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",skillName="魔卫复苏",type="SkillName",value="1"}}},nil}
c["地雷伤害提高 6%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=6}},nil}
c["+45 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=45}},nil}
c["若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 4 把远程武器"]={nil,"若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 4 把远程武器 "}c["反射 1 - 250 闪电伤害给近战攻击者 混沌伤害不能穿透能量护盾"]={nil,"反射 1 - 250 闪电伤害给近战攻击者 混沌伤害不能穿透能量护盾 "}c["物理伤害提高 33%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=33}},nil}
c["敌人被晕眩时间延长 35%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=35}},nil}
c["受到【迅捷】影响时，你身上的减益效果消失速度加快 20% {variant:34}受到【迅捷】影响时，移动技能的冷却速度提高 50%"]={{[1]={[1]={type="Condition",var="AffectedBy迅捷"},flags=0,keywordFlags=8,name="CooldownRecovery",type="INC",value=50}},"你身上的减益效果消失速度加快 20% {variant:34}受到【迅捷】影响时， "}c["击败敌人时有 10% 几率获得 3 秒【猛攻】状态"]={{},"击败敌人时获得 3 秒【猛攻】状态 "}c["该装备的闪避与能量护盾提高 600%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=600}},nil}
c["71 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=71}},nil}
c["药剂持续期间，闪电伤害的 20% 转化为魔力偷取 {variant:1,2,3,4}Leech applies instantly during Flask effect"]={nil,"药剂持续期间，闪电伤害的 20% 转化为魔力偷取 {variant:1,2,3,4}Leech applies instantly during Flask effect "}c["副手攻击和法术附加 60 - 110 基础混沌伤害"]={{[1]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ChaosMin",type="BASE",value=60},[2]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ChaosMax",type="BASE",value=110}},nil}
c["物理攻击伤害的 1% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=1}},nil}
c["每个蓝色插槽会使你物理攻击伤害的 0.4% 转化为魔力偷取"]={{[1]={[1]={type="Multiplier",var="BlueSocketIn{SlotName}"},flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.4}},nil}
c["被你的击中所击败的流血敌人会破碎"]={nil,"被你的击中所击败的流血敌人会破碎 "}c["获得护体时，攻击伤害提高 20%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=1,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["效果期间，你创造的【奉献地面】可以使敌人承受的伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={actor="enemy",type="ActorCondition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}}}},nil}
c["承受攻击造成的物理伤害 (-50--40) 没有被点燃，冰冻，感电时，护甲提高 40%"]={{[1]={[1]={neg=true,type="Condition",varList={[1]="Ignited",[2]="Frozen",[3]="Shocked"}},flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-50}}," (--40) 护甲提高 40% "}c["承受攻击造成的物理伤害 (-50--40)"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-50}}," (--40) "}c["持盾牌时攻击造成的物理伤害提高 15% "]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["−5% 全部抗性上限 承受攻击造成的物理伤害 (-50--40)"]={{[1]={flags=1,keywordFlags=0,name="FireResistMax",type="BASE",value=-50},[2]={flags=1,keywordFlags=0,name="ColdResistMax",type="BASE",value=-50},[3]={flags=1,keywordFlags=0,name="LightningResistMax",type="BASE",value=-50},[4]={flags=1,keywordFlags=0,name="ChaosResistMax",type="BASE",value=-50}},"−5%  承受物理伤害 (--40) "}c["每个【深海屏障】可使伤害提高 3%"]={{[1]={[1]={type="Multiplier",var="CrabBarrier"},flags=0,keywordFlags=0,name="Damage",type="INC",value=3}},nil}
c["−5% 全部抗性上限"]={nil,"−5% 全部抗性上限 "}c["−10% 全部抗性上限 {variant:2}−5% 全部抗性上限"]={nil,"−10% 全部抗性上限 {variant:2}−5% 全部抗性上限 "}c["−10% 全部抗性上限"]={nil,"−10% 全部抗性上限 "}c["获得 -15% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-15}},nil}
c["获得 -40% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-40}},nil}
c["+333 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=333}},nil}
c["每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=3}}},[2]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=3}}}},"每拥有一个，，最多 30% 召唤生物总生命额外提高 20% "}c["+48 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=48}},nil}
c["+48 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=48}},nil}
c["混沌伤害提高 90%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=90}},nil}
c["移动速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["当你击败稀有怪物时，会获得该怪物属性 20 秒"]={nil,"当你击败稀有怪物时，会获得该怪物属性 20 秒 "}c["对稀有怪的击中伤害提高 30% 当你击败稀有怪物时，会获得该怪物属性 20 秒"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=30}},"对稀有怪的 当你击败稀有怪物时，会获得该怪物属性 20 秒 "}c["对稀有怪的击中伤害提高 30% {variant:2}对稀有怪的击中伤害提高 30%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=30}},"对稀有怪的 {variant:2}对稀有怪的击中伤害提高 30% "}c["在奉献地面上时，每秒回复 15 魔力"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=15}},nil}
c["对稀有怪的击中伤害提高 30%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=30}},"对稀有怪的 "}c["格挡时有 50% 几率制造奉献地面 {variant:3,4}格挡时有 100% 几率制造奉献地面"]={{},"格挡时制造奉献地面 {variant:3,4}格挡时有 100% 几率制造奉献地面 "}c["你的法术击中每个敌人会失去 15 生命 你的攻击击中每个敌人会失去 25 生命"]={nil,"你的法术击中每个敌人会失去 15 生命 你的攻击击中每个敌人会失去 25 生命 "}c["周围友军的攻击，施法和移动速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=15},onlyAllies=true}},[2]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15},onlyAllies=true}}},nil}
c["受【怨毒光环】影响时，+22% 持续伤害加成 {variant:73}受【怨毒光环】影响时，+22% 持续伤害加成"]={{[1]={flags=0,keywordFlags=0,name="DotMultiplier",type="BASE",value=22}},"受【怨毒光环】影响时，  {variant:73}受【怨毒光环】影响时，+22% 持续伤害加成 "}c["你造成的中毒伤害生效速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="PoisonFaster",type="INC",value=10}},nil}
c["穿刺的效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="ImpaleEffect",type="INC",value=5}},nil}
c["每个狂怒球会使闪电伤害提高 12%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=12}},nil}
c["附加 175 - 205 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=175},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=205}},nil}
c["近期内你若没有被击中，则获得【狂热誓言】"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="Keystone",type="LIST",value="狂热誓言"}},nil}
c["被击中时有 5% 几率避免闪电伤害"]={{[1]={flags=0,keywordFlags=262144,name="LightningDamage",type="BASE",value=5}},"被时避免 "}c["魔像免疫火焰、冰霜、闪电伤害"]={nil,"免疫火焰、冰霜、闪电伤害 "}c["匕首攻击的物理伤害提高 10%"]={{[1]={flags=524288,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["+80 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=80}},nil}
c["召唤生物的范围效果扩大 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}}}},nil}
c["击中时用 30 级的【盗猎者印记】诅咒敌人，对诅咒免疫的敌人也有效"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=30,noSupports=true,skillId="PoachersMark"}}},nil}
c["受到【雷霆】影响时，获得物理伤害 25% 的额外闪电伤害"]={{[1]={[1]={type="Condition",var="AffectedBy雷霆"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=25}},nil}
c["在被点燃后，你有 3 秒免疫点燃"]={nil,"在被点燃后，你有 3 秒免疫点燃 "}c["在药剂持续期间，击败敌人会补充 3% 的生命"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Life",type="BASE",value=3}},"在击败敌人会补充  "}c["对受到【盗猎者印记】诅咒的敌人附带【终结】效果 击中时用 30 级的【盗猎者印记】诅咒敌人，对诅咒免疫的敌人也有效"]={nil,"对受到【盗猎者印记】诅咒的敌人附带【终结】效果 击中时用 30 级的【盗猎者印记】诅咒敌人，对诅咒免疫的敌人也有效 "}c["冷却回复速度提高 18%"]={{[1]={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=18}},nil}
c["击败稀有或者传奇敌人时，攻击速度提高 10%，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 10%，持续 20秒"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},"击败稀有或者传奇敌人时，，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 10%，持续 20秒 "}c["攻击与施法速度提高 13%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=13}},nil}
c["已腐化时仍可以修改"]={nil,"已腐化时仍可以修改 "}c["你身上的减益效果消失速度提高 20%"]={{},"你身上的减益效果消失速度 "}c["你造成的流血效果将作用到你身上"]={nil,"你造成的流血效果将作用到你身上 "}c["持剑时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["攻击与施法速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["攻击击中受诅咒的敌人时造成流血"]={nil,"攻击击中受诅咒的敌人时造成流血 "}c["智慧降低 15%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=-15}},nil}
c["攻击和法术附加 2-3 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=2},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=3}},nil}
c["击败敌人时有 8% 几率获得 1 个随机能量球"]={{},"击败敌人时获得 1 个随机能量球 "}c["你受到点燃时，也会点燃周围 15 范围内的敌人"]={nil,"你受到点燃时，也会点燃周围 15 范围内的敌人 "}c["药剂持续期间，获得的充能数提高 50%"]={{},"的充能数 "}c["物理伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=18}},nil}
c["击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓"]={{},"时嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 "}c["混沌技能效果持续时间延长 40%"]={{[1]={flags=0,keywordFlags=128,name="Duration",type="INC",value=40}},nil}
c["穿戴对人物属性无需求"]={{[1]={flags=0,keywordFlags=0,name="NoAttributeRequirements",type="FLAG",value=true}},nil}
c["魔力回复速度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=50}},nil}
c["被击中时有 5% 几率避免冰霜伤害"]={{[1]={flags=0,keywordFlags=262144,name="ColdDamage",type="BASE",value=5}},"被时避免 "}c["从偷取获取的每秒生命回复提高 16%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=16}},nil}
c["斧类攻击的伤害提高 20%"]={{[1]={flags=65536,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["当你的地雷对敌人爆炸时，有 15% 的机会获得 1 个暴击球"]={{},"当你的对敌人爆炸时，有 机会获得 1 个暴击球 "}c["【迷踪】状态时有 20% 几率躲避投射物"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=20}},"躲避 "}c["陷阱伤害提高 20%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=20}},nil}
c["药剂持续期间间延长 60%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=60}},nil}
c["获得额外闪电伤害， 其数值等同于法杖物理伤害的 30%"]={{[1]={flags=8388608,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=30}},nil}
c["+78 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=78}},nil}
c["护甲提高 200%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=200}},nil}
c["被击中时有 10% 几率获得耐力球 静止时，护甲提高 30%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=262144,name="Armour",type="BASE",value=10}},"被时获得耐力球 提高 30% "}c["攻击被点燃敌人会使燃烧加快 35%"]={{[1]={flags=1,keywordFlags=0,name="IgniteBurnFaster",type="INC",value=35}},nil}
c["+1 魔像数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveGolemLimit",type="BASE",value=1}},nil}
c["地雷引爆范围扩大 40%"]={{[1]={flags=0,keywordFlags=0,name="MineDetonationAreaOfEffect",type="INC",value=40}},nil}
c["火焰、冰霜、闪电伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=100}},nil}
c["获得 2 秒的冰缓，感电，点燃汇流"]={{},nil}
c["+40% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=40}},nil}
c["被点燃时伤害提高 60%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["击中你的额外暴击几率提高 200%"]={{},"你的"}c["击中时有 12% 几率击退敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=12}},nil}
c["攻击击中有 15% 几率使敌人流血"]={{[1]={flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=15}},nil}
c["双持时攻击格挡率提高 8%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=8}},nil}
c["+325 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=325}},nil}
c["持续吟唱技能伤害提高 14%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["火焰抗性降低 55%"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="INC",value=-55}},nil}
c["持续吟唱技能的攻击速度提高 6%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["药剂持续期间，有 10% 几率感电"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=10}},nil}
c["感电效果提高 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=20}},nil}
c["药剂持续期间，敌人晕眩门槛降低 25%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-25}},nil}
c["最大生命提高 7%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=7}},nil}
c["近期内你每感电 1 个未被感电的敌人，则燃烧伤害提高 6%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=6}},"近期内你每感电 1 个未被感电的敌人，则 "}c["冰霜伤害的 0.2% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageLifeLeech",type="BASE",value=0.2}},nil}
c["此物品上的技能石受到 5 级的 集中效应 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=5,skillId="SupportConcentratedEffect"}}},nil}
c["物理伤害的 0.2% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.2}},nil}
c["移动速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=4}},nil}
c["+29% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=29}},nil}
c["照亮范围扩大 15%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=15}},nil}
c["插槽内的珠宝效果提高 50%"]={{[1]={flags=0,keywordFlags=0,name="SocketedJewelEffect",type="INC",value=50}},nil}
c["你最低的属性每有 5 点，伤害提高 1%"]={{[1]={[1]={div=5,stat="LowestAttribute",type="PerStat"},flags=0,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["受到【元素净化】影响时，不受【元素要害】影响 {variant:44}受到【元素净化】影响时，承受的反射元素伤害减低 50%"]={nil,"受到【元素净化】影响时，不受【元素要害】影响 {variant:44}受到【元素净化】影响时，承受的反射元素伤害减低 50% "}c["周围的敌人无法造成暴击"]={nil,"周围的敌人无法造成暴击 "}c["该装备的护甲与能量护盾提高 75%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=75}},nil}
c["附加 10 - 90 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=90}},nil}
c["当你击败 1 名点燃敌人，对周围 1 名敌人造成相同的点燃效果，持续2秒"]={nil,"当你击败 1 名点燃敌人，对周围 1 名敌人造成相同的点燃效果，持续2秒 "}c["火焰伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=15}},nil}
c["+70 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=70}},nil}
c["中毒伤害提高 25%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=25}},nil}
c["匕首攻击 +30% 暴击伤害加成"]={{[1]={flags=524288,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["你使用技能时有 25% 几率获得 1 个轮回球"]={{},"你使用技能时获得 1 个轮回球 "}c["每个鬼影缠身可使承受的伤害降低 3%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-3}},"每个鬼影缠身可使 "}c["每 15 层暴走能量增加 1% 物品稀有度"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=1}},"每 15 层暴走能量  "}c["施法速度提高 16%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=16}},nil}
c["暴走 每 15 层暴走能量增加 1% 物品稀有度"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=1}},"暴走 每 15 层暴走能量  "}c["贵族：+25 所有属性"]={{[1]={[1]={type="Condition",var="ConnectedTo贵族Start"},flags=0,keywordFlags=0,name="Str",type="BASE",value=25},[2]={[1]={type="Condition",var="ConnectedTo贵族Start"},flags=0,keywordFlags=0,name="Dex",type="BASE",value=25},[3]={[1]={type="Condition",var="ConnectedTo贵族Start"},flags=0,keywordFlags=0,name="Int",type="BASE",value=25}},nil}
c["冰霜伤害提高 60%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=60}},nil}
c["每 1 个聚光之石可使火焰、冰霜、闪电伤害提高 12%"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=12},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["法术暴击率提高 20%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["剑类攻击的攻击速度提高 8%"]={{[1]={flags=4194305,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["受到的暴击伤害降低 30%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-30}},"受到的暴击 "}c["击败敌人时触发 1 级的【召唤毒蛛】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,skillId="TriggeredSummonSpider"}}},nil}
c["法术伤害降低 30%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=-30}},nil}
c["法术伤害提高 8%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["持续冰霜伤害效果提高 19%"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="INC",value=19}},nil}
c["附加 2 - 4 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=2},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=4}},nil}
c["攻击击中流血的敌人时瘫痪敌人"]={nil,"攻击击中流血的敌人时瘫痪敌人 "}c["附加 190 - 320 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=190},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=320}},nil}
c["地雷冷却速度提高 100%"]={{[1]={flags=0,keywordFlags=8192,name="CooldownRecovery",type="INC",value=100}},nil}
c["冰缓效果和冰冻时长基于你能量护盾的 100% 计算"]={nil,"冰缓效果和冰冻时长基于你能量护盾的 100% 计算 "}c["冰缓效果和冰冻时长基于你能量护盾的 65% 计算 {variant:3}冰缓效果和冰冻时长基于你能量护盾的 100% 计算"]={nil,"冰缓效果和冰冻时长基于你能量护盾的 65% 计算 {variant:3}冰缓效果和冰冻时长基于你能量护盾的 100% 计算 "}c["魔力回复速度提高 65%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=65}},nil}
c["最大耐力球数量等同于最大狂怒球数量"]={{[1]={flags=0,keywordFlags=0,name="MaximumEnduranceChargesIsMaximumFrenzyCharges",type="FLAG",value=true}},nil}
c["每个暴击球可使攻击技能的火焰、冰霜、闪电伤害提高 25%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=25}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 20% {variant:2}攻击技能的火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=20}},"攻击的 {variant:2}攻击技能的火焰、冰霜、闪电伤害提高 20% "}c["冰缓效果和冰冻时长基于你能量护盾的 65% 计算"]={nil,"冰缓效果和冰冻时长基于你能量护盾的 65% 计算 "}c["每个暴击球所获得物理攻击伤害的 0.2% 转化为魔力偷取"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.2}},nil}
c["你创建的奉献地面可以为你和友军获得元素异常免疫 在奉献地面上时，每秒回复 200 能量护盾"]={nil,"你创建的奉献地面可以为你和友军获得元素异常免疫 在奉献地面上时，每秒回复 200 能量护盾 "}c["格挡时有 10% 几率使怪物逃跑"]={{},"格挡时使怪物逃跑 "}c["武器攻击的火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=20}},"攻击的 "}c["法术暴击率提高 60%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["攻击附加 2 - 3 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=2},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=3}},nil}
c["双持攻击时武器的物理伤害提高 8%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["近期内你若有能量护盾开始回复，则获得【迷踪】状态 【迷踪】状态时有 6% 几率躲避攻击击中"]={{[1]={[1]={type="Condition",var="Phasing"},flags=1,keywordFlags=0,name="EnergyShield",type="BASE",value=6}},"近期内你若有开始回复，则获得【迷踪】状态 躲避击中 "}c["+45 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=45}},nil}
c["对冰缓敌人的击中和异常状态伤害提高 60%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=60}},nil}
c["+250 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=250}},nil}
c["对冰缓敌人的击中和异常状态伤害提高 70%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=70}},nil}
c["专注的冷却回复速度提高 25% 对冰缓敌人的击中和异常状态伤害提高 70%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=786432,name="CooldownRecovery",type="INC",value=25}},"专注的 伤害提高 70% "}c["当你使用弓箭攻击时触发一个插槽内的弓类法术"]={nil,"当你使用弓箭攻击时触发一个插槽内的弓类法术 "}c["物理伤害提高 206%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=206}},nil}
c["每完成 25 次暴走连击，范围效果扩大 2% 每达到 50 次暴走连击，就获得 1 个狂怒球"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=2}},"每完成 25 次暴走连击， 每达到 50 次暴走连击，就获得 1 个狂怒球 "}c["魔力不足仍然可以使用近战攻击"]={nil,"魔力不足仍然可以使用近战攻击 "}c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 每个狂怒球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 提高 5% "}c["使用该武器时，敌人晕眩门槛降低 30%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-30}},nil}
c["召唤生物获得 +12% 格挡法术伤害率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=12}}}},nil}
c["每完成 25 次暴走连击，范围效果扩大 2%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=2}},"每完成 25 次暴走连击， "}c["施法速度降低 10%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=-10}},nil}
c["双持攻击时武器的伤害提高 24%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["暴走 每完成 25 次暴走连击，范围效果扩大 2%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=2}},"暴走 每完成 25 次暴走连击， "}c["物理伤害提高 212%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=212}},nil}
c["长杖攻击的伤害提高 15%"]={{[1]={flags=2097152,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["+88 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=88}},nil}
c["视作双持武器"]={{[1]={flags=0,keywordFlags=0,name="WeaponData",type="LIST",value={key="countsAsDualWielding",value=true}}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["每失去一个精神球，回复 3% 的能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=3}},"每失去一个精神球，回复  "}c["该装备的攻击暴击率提高 25%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["25% 法术格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=25}},nil}
c["当你放置图腾时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 你拥有耐力球时，承受的元素伤害降低 5% 你拥有暴击球时，伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},[2]={stat="PowerCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=16384,name="ElementalDamageTaken",type="BASE",value=50}},"当你放置时，获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 降低 5% 伤害穿透 5% 火焰、冰霜、闪电抗性 "}c["+350 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=350}},nil}
c["近战击中时有 10% 几率获得护体效果 受到你嘲讽的敌人所承受的伤害提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人"]={{[1]={flags=256,keywordFlags=0,name="DamageTaken",type="BASE",value=10}},"击中时获得护体效果 受到你嘲讽的敌人所提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人 "}c["物理伤害提高 63%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=63}},nil}
c["对周围敌人，攻击和法术暴击率提高 50%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["此物品上的技能石受到 20 级的 增大范围 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportIncreasedAreaOfEffect"}}},nil}
c["你的狂怒球数量上限等于暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="MaximumFrenzyChargesIsMaximumPowerCharges",type="FLAG",value=true}},nil}
c["陷阱投掷速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=5}},nil}
c["攻击速度降低 28%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-28}},nil}
c["图腾放置速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=10}},nil}
c["法术暴击率提高 120%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=120}},nil}
c["左戒指栏位：不能回复能量护盾"]={nil,"不能回复能量护盾 "}c["击败流血敌人时触发 20 级的【裂骨新星】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="TriggeredBoneNova"}}},nil}
c["攻击速度降低 25%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-25}},nil}
c["加成投射物数量的词缀改为加成目标投射物的分裂数量"]={nil,"加成投射物数量的词缀改为加成目标投射物的分裂数量 "}c["近期内你若使用过移动技能，则攻击和施法速度提高 10%"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["物理伤害提高 320%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=320}},nil}
c["击败时，回复 4% 魔力"]={nil,"击败时，回复 4% 魔力 "}c["+80 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=80}},nil}
c["−5% 火焰抗性上限"]={nil,"−5% 火焰抗性上限 "}c["攻击击中被诅咒敌人时有 25% 几率造成流血"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Cursed"},flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=25}},nil}
c["攻击击中受诅咒的敌人时造成流血 {variant:2}攻击击中被诅咒敌人时有 25% 几率造成流血"]={{[1]={flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=25}},"击中受诅咒的敌人时 {variant:2}攻击击中被诅咒敌人时造成流血 "}c["使用魔力药剂的时候移除一个诅咒"]={nil,"使用魔力药剂的时候移除一个诅咒 "}c["使用时回复生命上限 100% 的生命 {variant:1}每秒受到等同 15% 最大生命的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=100}},"使用时回复上限 生命 {variant:1}每秒受到等同 15% 最大生命的混沌伤害 "}c["你击败的敌人身上每有 1 层中毒效果，便回复你最大生命的 0.5%"]={nil,"你击败的敌人身上每有 1 层中毒效果，便回复你最大生命的 0.5% "}c["攻击格挡率翻倍"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="MORE",value=100}},nil}
c["击中时有 25% 几率用 10 级的【脆弱】诅咒敌人"]={{},"时用 10 级的【脆弱】诅咒敌人 "}c["【猛攻】状态下闪避投射物的总几率额外提高 25%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="ProjectileEvadeChance",type="MORE",value=25}},nil}
c["晕眩回复和格挡回复提高 60%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=60}},nil}
c["物理伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["物品稀有度提高 35%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=35}},nil}
c["法术伤害提高 10%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["终结 攻击和法术无法被闪避"]={nil,"终结 攻击和法术无法被闪避 "}c["每对敌人造成一层中毒效果，便附加 +0.4% 攻击和法术基础暴击率，最多 +2.0%"]={{[1]={[1]={actor="enemy",limit=2,limitTotal=true,type="Multiplier",var="PoisonStack"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=0.4}},nil}
c["Requires 77 固定基底词缀: 1"]={nil,"Requires 77 固定基底词缀: 1 "}c["近战击中有 20% 几率触发 16 级的【熔岩爆破】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="16",skillId="TriggeredMoltenStrike"}}},nil}
c["伤害穿透 20% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=20}},nil}
c["物品稀有度降低 50%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=-50}},nil}
c["你无法被缓速"]={nil,"你无法被缓速 "}c["附加 40 - 85 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=85}},nil}
c["静止时，护甲提高 30%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="Armour",type="INC",value=30}},nil}
c["你的最大抗性为 77%"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="OVERRIDE",value=77},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="OVERRIDE",value=77},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="OVERRIDE",value=77},[4]={flags=0,keywordFlags=0,name="ChaosResistMax",type="OVERRIDE",value=77}},nil}
c["击败敌人时获得 2 秒【猛攻】状态"]={nil,"击败敌人时获得 2 秒【猛攻】状态 "}c["周围队友的行动速度无法被减速至基础以下"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ActionSpeedCannotBeBelowBase",type="FLAG",value=true},onlyAllies=true}}},nil}
c["物理伤害提高 298%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=298}},nil}
c["魔侍的移动速度提高 5%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=5}}}},nil}
c["你所击败的敌人将会被歼灭"]={nil,"你所击败的敌人将会被歼灭 "}c["你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20% 你击中造成的感电，必定会使对方所承受伤害提高至少 20%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="MORE"}},"你造成的冰缓必定使目标减速 10 你击中造成的感电，必定会使对方所承受提高至少 20% "}c["你的闪电伤害可以冰冻但无法感电"]={{[1]={flags=0,keywordFlags=0,name="LightningCanFreeze",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="LightningCannotShock",type="FLAG",value=true}},nil}
c["副手攻击和法术附加 190 - 220 基础冰霜伤害"]={{[1]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=190},[2]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=220}},nil}
c["获得 -5% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-5}},nil}
c["地雷持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="MineDuration",type="INC",value=30}},nil}
c["每对敌人造成一层中毒效果，便附加 +0.1% 攻击和法术基础暴击率，最多 +2.0%"]={{[1]={[1]={actor="enemy",limit=2,limitTotal=true,type="Multiplier",var="PoisonStack"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=0.1}},nil}
c["使用该武器时，敌人晕眩门槛降低 25%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-25}},nil}
c["你的火焰伤害会使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="FireCanPoison",type="FLAG",value=true}},nil}
c["当暴击球达到上限时，移动速度提高 10%"]={{[1]={[1]={stat="PowerCharges",thresholdStat="PowerChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["周围友军获得【终结】效果 {variant:3}周围友军 +50% 暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50},onlyAllies=true}}},"【终结】效果 {variant:3}周围友军   "}c["近战单手武器攻击的物理伤害提高 12%"]={{[1]={flags=301989888,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["最大魔力提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=15}},nil}
c["每拥有 1 个暴击球，有 8% 几率造成中毒"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=8}},nil}
c["+10% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},nil}
c["每有 1 个暴击球，生命和能量护盾回复率提高 5%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=5},[2]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=5}},nil}
c["左戒指栏位：+100 最大能量护盾"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=100}},nil}
c["周围友军获得物品稀有度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=30},onlyAllies=true}}},nil}
c["站定时，脚下产生真菌地表"]={nil,"站定时，脚下产生真菌地表 "}c["承受的范围伤害降低 5% +2 近战与空手攻击范围"]={{[1]={flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},"的 +2 近战与空手攻击范围 "}c["魔力不足仍然可以使用近战攻击 周围友军获得物品稀有度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=256,keywordFlags=0,name="Mana",type="INC",value=30},onlyAllies=true}}},"不足仍然可以使用 物品稀有度 "}c["每 1 点怒火都获得额外火焰伤害， 其数值等同于物理伤害的 1%"]={{[1]={[1]={div=1,type="Multiplier",var="Rage"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=1}},nil}
c["攻击击中获得 1 点怒火。每 0.5 秒只会发生一次"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainRage",type="FLAG",value=true},[2]={[1]={type="Condition",var="CanGainRage"},flags=0,keywordFlags=0,name="Dummy",type="DUMMY",value=1}},nil}
c["物理伤害提高 240%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=240}},nil}
c["每个暴击球可使范围效果扩大 3%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=3}},nil}
c["终结 {variant:2}攻击击中获得 1 点怒火。每 0.5 秒只会发生一次"]={nil,"终结 {variant:2}攻击击中获得 1 点怒火。每 0.5 秒只会发生一次 "}c["击败稀有或者传奇敌人时，获得【塑界者姿态】，持续 10 秒"]={nil,"击败稀有或者传奇敌人时，获得【塑界者姿态】，持续 10 秒 "}c["物理攻击伤害的 0.4% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.4}},nil}
c["附加 10 - 21 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=21}},nil}
c["范围效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["击败敌人时回复 3% 最大生命 击败敌人时回复 3% 最大魔力"]={nil,"击败敌人时回复 3% 最大生命 击败敌人时回复 3% 最大魔力 "}c["所有攻击都受到血魔法辅助"]={{[1]={flags=1,keywordFlags=0,name="SkillBloodMagic",type="FLAG",value=true}},nil}
c["回复速度提高 100%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecoveryRate",type="INC",value=100}},nil}
c["+25 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=25}},nil}
c["双持时攻击伤害格挡几率提高 3%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=3}},nil}
c["攻击技能的冰霜伤害提高 35%"]={{[1]={flags=0,keywordFlags=65536,name="ColdDamage",type="INC",value=35}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["双持时法术伤害格挡几率 +2%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=2}},nil}
c["附加 12 - 25 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=12},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=25}},nil}
c["+10 最大神圣球"]={{}," 最大神圣球 "}c["攻击与施法速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["物理伤害提高 130%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=130}},nil}
c["每秒回复 1.8% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1.8}},nil}
c["暴走时驱散元素异常状态 暴走状态时免疫物理伤害 1.5 秒"]={nil,"暴走时驱散元素异常状态 暴走状态时免疫物理伤害 1.5 秒 "}c["攻击和法术暴击率每级提高 3%"]={{[1]={[1]={type="Global"},[2]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=3}},nil}
c["暴击时偷取等同 1.2% 伤害的生命"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1.2}},nil}
c["附加 330 - 480 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=330},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=480}},nil}
c["绿色插槽内的技能石 +10% 品质 蓝色插槽内的技能石额外获得 25% 经验"]={{},"绿色插槽内的技能石  品质 蓝色插槽内的技能石额外获得 25% 经验 "}c["+10 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=10}},nil}
c["击中时有 5% 几率给予周围友军 1 个狂怒球"]={{},"时给予周围友军 1 个狂怒球 "}c["当你的陷阱被敌人触发时，有 15% 几率获得 1 个狂怒球 陷阱被敌人触发时，有 30% 几率获得 4 秒暗影迷踪"]={{},"当你的被敌人触发时，获得 1 个狂怒球 陷阱被敌人触发时，有 30% 几率获得 4 秒暗影迷踪 "}c["技能魔力消耗提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=50}},nil}
c["狂怒球达到上限时，你获得【猛攻】状态"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Condition:Onslaught",type="FLAG",value=true}},nil}
c["该药剂创造的奉献地面范围x3"]={nil,"该药剂创造的奉献地面范围x3 "}c["10.0 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=10}},nil}
c["近期内你若有击败敌人，则范围效果扩大 1%，最多 50%"]={{[1]={[1]={limit=50,limitTotal=true,type="Multiplier",var="EnemyKilledRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value="1"}},nil}
c["最大能量护盾降低 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=-50}},nil}
c["+2 武器攻击范围"]={{[1]={flags=0,keywordFlags=0,name="WeaponRange",type="BASE",value=2}},nil}
c["附加 235 - 290 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=235},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=290}},nil}
c["药剂的回复速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecoveryRate",type="INC",value=20}},nil}
c["近战单手武器的攻击命中值提高 12%"]={{[1]={flags=301989888,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["击中时有 10% 几率用灰烬覆盖稀有或传奇敌人，持续 10 秒。"]={{},"时用灰烬覆盖稀有或传奇敌人，持续 10 秒。 "}c["魔力不足仍然可以使用近战攻击 物理伤害可以造成冰缓"]={nil,"魔力不足仍然可以使用近战攻击 物理伤害可以造成冰缓 "}c["战吼立即施放"]={nil,"战吼立即施放 "}c["可以从圣堂武僧的起点配置天赋"]={{},nil}
c["幽魂不会在区域间穿梭"]={nil,"幽魂不会在区域间穿梭 "}c["附加 60 - 150 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=60},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=150}},nil}
c["剑类攻击的攻击速度提高 35%"]={{[1]={flags=4194305,keywordFlags=0,name="Speed",type="INC",value=35}},nil}
c["最大能量护盾提高 45%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=45}},nil}
c["附加 70 - 165 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=70},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=165}},nil}
c["获得 +25% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=25}},nil}
c["受到【优雅】影响时，有 +8% 几率闪避攻击"]={{[1]={[1]={type="Condition",var="AffectedBy优雅"},flags=0,keywordFlags=0,name="EvadeChance",type="BASE",value=8}},nil}
c["击败敌人回复 +5 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=5}},nil}
c["此物品上的技能石受到 17 级的 召唤生物伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=17,skillId="SupportMinionDamage"}}},nil}
c["若范围内含有至少 40 点力量，【戒备打击】会使周围友军获得护体 12 秒"]={nil,"若范围内含有至少 40 点力量，【戒备打击】会使护体 12 秒 "}c["当你失去【猫之隐匿】时，触发 20 级的【威吓战吼】 闪避值提高 150%"]={{[1]={flags=0,keywordFlags=4,name="Evasion",type="INC",value=150}},"当你失去【猫之隐匿】时，触发 20 级的【威吓】  "}c["每个耐力球可使敌人被晕眩时间延长 10%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=10}},nil}
c["召唤图腾数量上限+1"]={{[1]={flags=0,keywordFlags=0,name="ActiveTotemLimit",type="BASE",value=1}},nil}
c["-30% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=-30}},nil}
c["+5% 闪避几率"]={{[1]={flags=0,keywordFlags=0,name="EvadeChance",type="BASE",value=5}},nil}
c["终结 使用终结时获得【猛攻】状态 3 秒"]={nil,"终结 使用终结时获得【猛攻】状态 3 秒 "}c["+20 力量和智慧"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=20}},nil}
c["降低 15% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=-15}},nil}
c["附加 5 - 10 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=10}},nil}
c["获得 1 级的主动技能【闪电传送】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,skillId="LightningWarp"}}},nil}
c["物理伤害的 25% 转换为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=25}},nil}
c["每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=3}}}},"每拥有一个，获得 1% ，最多 10% 每拥有一个召唤生物， 火焰、冰霜、闪电抗性，最多 30% "}c["附加 9 - 17 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=9},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=17}},nil}
c["附加 13 - 21 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=21}},nil}
c["击中时有 25% 几率造成流血"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=25}},nil}
c["每秒生命偷取降低 50%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=-50}},nil}
c["附加 14 - 23 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=23}},nil}
c["物理伤害提高 110%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=110}},nil}
c["降低 10% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=-10}},nil}
c["近期内你若有击败敌人，则移动速度提高 15%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["3% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=3}},nil}
c["击败敌人回复 +6 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=6}},nil}
c["召唤生物技能的魔力消耗降低 13%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-13}}}},nil}
c["拥有【秘术增强】时范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="AffectedBy秘术增强"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=25}},nil}
c["击败 1 个被冰冻敌人时 +25 魔力"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=25}},"击败 1 个被敌人时  魔力 "}c["你可以同时有每种奉献"]={nil,"你可以同时有每种奉献 "}c["此物品上的技能石受到 2 级的几率逃跑辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=2,skillId="SupportChanceToFlee"}}},nil}
c["击败敌人时有 2% 几率获得 1 个随机能量球"]={{},"击败敌人时获得 1 个随机能量球 "}c["击败敌人回复 +7 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=7}},nil}
c["附加 15 - 30 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=30}},nil}
c["附加 12 - 22 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=12},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=22}},nil}
c["诅咒范围扩大 18%"]={{[1]={flags=0,keywordFlags=2,name="AreaOfEffect",type="INC",value=18}},nil}
c["主手附加 270 - 315 基础火焰伤害"]={{[1]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=270},[2]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=315}},nil}
c["在副手时，对敌人的冰缓持续时间延长 100% {variant:2,3}若此武器装备在副手，此武器击中敌人时造成 1 秒的冰缓"]={{[1]={[1]={num=2,type="SlotNumber"},[2]={num=2,type="InSlot"},flags=134217728,keywordFlags=0,name="Duration",type="INC",value=100}},"对敌人的冰缓 {variant:2,3}若此装备在，此武器击中敌人时造成 1 秒的冰缓 "}c["在副手时，对敌人的冰缓持续时间延长 100%"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="Duration",type="INC",value=100}},"对敌人的冰缓 "}c["火焰、冰霜、闪电伤害提高 22%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=22}},nil}
c["在主手时，有 25% 几率点燃"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=25}},nil}
c["被冰缓的敌人受到的燃烧伤害提高 100% {variant:3}对冰缓敌人造成的点燃伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},[2]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=134479872,name="FireDamage",type="INC",value=100}},"受到的 {variant:3}点燃伤害提高 100% "}c["近期若打出过暴击，则法术伤害提高 120%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=120}},nil}
c["该装备的护甲与能量护盾提高 140%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=140}},nil}
c["暴击时，+12% 持续伤害加成"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="DotMultiplier",type="BASE",value=12}},nil}
c["药剂持续期间，范围效果扩大 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=20}},nil}
c["在你图腾周围，敌人承受的物理和火焰伤害提高 16%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=16}}},[2]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="FireDamageTaken",type="INC",value=16}}}},nil}
c["偷取时伤害提高 40%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=0,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["近期内你若有击败敌人，则法术暴击率提高 175%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=2,keywordFlags=0,name="CritChance",type="INC",value=175}},nil}
c["该装备的能量护盾提高 320%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=320}},nil}
c["药剂充能获取提高 15%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=15}},nil}
c["混沌伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=15}},nil}
c["智慧降低 13%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=-13}},nil}
c["受到【闪电净化】影响时，免疫感电"]={nil,"受到【闪电净化】影响时，免疫感电 "}c["持长杖时，暴击率提高 30%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["被冰缓的敌人受到的燃烧伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=134479872,name="FireDamage",type="INC",value=100}},"受到的 "}c["在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态，-15% 抗性 在【迷踪】状态期间，周围敌人的总命中值额外降低 15%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=-15}},"在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态， 抗性 在【迷踪】状态期间，周围敌人的总额外降低 15% "}c["被冰缓的敌人受到的燃烧伤害提高 40% {variant:2}被冰缓的敌人受到的燃烧伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},[2]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=134479872,name="FireDamage",type="INC",value=40}},"受到的 {variant:2}受到的燃烧伤害提高 100% "}c["被冰缓的敌人受到的燃烧伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=134479872,name="FireDamage",type="INC",value=40}},"受到的 "}c["近战技能的范围效果提高 10%"]={{[1]={flags=256,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},nil}
c["+50% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=50}},nil}
c["对受 3 层蜘蛛网影响的敌人，击中和异常状态伤害提高 50%"]={{[1]={[1]={actor="enemy",threshold=3,type="MultiplierThreshold",var="Spider's WebStack"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=50}},nil}
c["副手攻击和法术附加 285 - 330 基础冰霜伤害"]={{[1]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=285},[2]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=330}},nil}
c["攻击附加 10 - 20 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=20}},nil}
c["燃烧伤害提高 30%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=30}},nil}
c["总燃烧伤害额外提高 15% 伤害穿透 15% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE"}}," 穿透 15% 火焰抗性 "}c["+12% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=12}},nil}
c["物理伤害提高 268%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=268}},nil}
c["陷阱伤害可以穿透 10% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=4096,name="ElementalPenetration",type="BASE",value=10}},nil}
c["对冰缓的目标的暴击率提高 60%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=60}},nil}
c["附加 237 - 272 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=237},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=272}},nil}
c["你被点燃时，击中怪物敌人无视其火焰抗性"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="IgnoreFireResistance",type="FLAG",value=true}},nil}
c["+20% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=20}},nil}
c["左戒指栏位：反射的火焰、冰霜、闪电伤害降低 40% {variant:1,2}右戒指栏位：反射的物理伤害降低 30%"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=-40}},"反射的 {variant:1,2}右戒指栏位：反射的物理伤害降低 30% "}c["附加 10 - 23 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=23}},nil}
c["最大能量护盾提高 14%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=14}},nil}
c["移动技能的伤害提高 50%"]={{[1]={flags=0,keywordFlags=8,name="Damage",type="INC",value=50}},nil}
c["击中受诅咒的敌人时造成易燃"]={nil,"击中受诅咒的敌人时造成易燃 "}c["武器攻击的闪电伤害提高 40%"]={{[1]={flags=134217728,keywordFlags=0,name="LightningDamage",type="INC",value=40}},"攻击的 "}c["烙印技能 +20% 暴击伤害加成"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=20}},nil}
c["附加 15 - 25 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=25}},nil}
c["攻击附加 10 - 38 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=38}},nil}
c["攻击速度降低 30%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-30}},nil}
c["冰霜抗性 75%"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="OVERRIDE",value=75}},nil}
c["攻击附加 15 - 50 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=50}},nil}
c["药剂持续期间，攻击格挡率提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},nil}
c["右戒指栏位：每秒回复 4% 能量护盾"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=4}},nil}
c["+8% 持续流血伤害加成"]={{[1]={flags=0,keywordFlags=2097152,name="DotMultiplier",type="BASE",value=8}},nil}
c["最大能量护盾提高 5%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=5}},nil}
c["此物品上装备的技能石等级 +5"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="all",value=5}}},nil}
c["召唤生物在击中时威吓敌人 4 秒 近期内你若击中敌人，你和周围友军每秒回复 3.0% 生命"]={{},"在时威吓敌人 4 秒 近期内你若击中敌人，你和周围友军"}c["+13% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=13}},nil}
c["+13% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=13}},nil}
c["物品稀有度提高 0%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=0}},nil}
c["血量低于 20% 的敌人被你的技能击中时，会直接被终结"]={{},"血量低于 敌人被你的技能时，会直接被终结 "}c["敌人处于你近期内制造的灵柩附近时被冰缓和感电 你制造的灵柩的生命值提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=50}},"敌人处于你近期内制造的灵柩附近时被冰缓和感电 你制造的灵柩的值 "}c["法术附加 1 - 65 基础闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=65}},nil}
c["-40% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=-40}},nil}
c["低血时移动速度提高 8%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=8}},nil}
c["对感电敌人的伤害提高 40% {variant:3}对感电敌人的击中伤害提高 40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=40}},"对感电敌人的 {variant:3}伤害提高 40% "}c["+4% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=4}},nil}
c["受到【冰霜净化】影响时，不受【冻伤】影响 {variant:55}受到【冰霜净化】影响时，承受的反射冰霜伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy冰霜净化"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=-50}},"不受【冻伤】影响 {variant:55}受到【冰霜净化】影响时，承受的反射 "}c["对感电敌人的伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=40}},"对感电敌人的 "}c["对感电敌人的伤害提高 15% {variant:2}对感电敌人的伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=15}},"对感电敌人的 {variant:2}对感电敌人的伤害提高 40% "}c["对感电敌人的伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=15}},"对感电敌人的 "}c["受到的持续性伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="DamageTakenOverTime",type="INC",value=-10}},nil}
c["你只能从技能中得到一种非旗帜光环。 光环技能不能影响友军"]={nil,"你只能从技能中得到一种非旗帜光环。 光环技能不能影响友军 "}c["周围只有 1 个敌人时，不会受到暴击所造成的额外暴击伤害"]={nil,"周围只有 1 个敌人时，不会受到暴击所造成的额外暴击伤害 "}c["斧类攻击 +30% 暴击伤害加成"]={{[1]={flags=65536,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["不受时空锁链影响"]={nil,"不受时空锁链影响 "}c["图腾免疫火焰伤害 在你图腾周围，敌人造成的总伤害额外降低 8%"]={{}," "}c["双持攻击时武器的物理伤害提高 24%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["技能效果持续时间延长 +10%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=10}},nil}
c["你受到的时空锁链效果降低 30%"]={{[1]={[1]={skillName="时空锁链",type="SkillName"},flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=-30}},nil}
c["地雷投掷速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=5}},nil}
c["魔力回复速度降低 15%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=-15}},nil}
c["你的攻击击中每个敌人会回复 +50 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=50}},nil}
c["图腾所使用的技能击中时，有 20% 几率嘲讽敌人"]={{},"所使用的技能击中时，嘲讽敌人 "}c["你的攻击击中每个敌人会回复 +30 魔力"]={{[1]={flags=1,keywordFlags=0,name="ManaOnHit",type="BASE",value=30}},nil}
c["技能效果持续时间延长 5%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=5}},nil}
c["被点燃时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["击败周围敌人后药剂充能获取提高 25%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=25}},"击败周围敌人后 "}c["你的攻击击中每个敌人会回复 +60 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=60}},nil}
c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100% 战吼冷却回复速度提高 100%"]={{[1]={flags=0,keywordFlags=4,name="Life",type="INC",value=100}},"施放时回复 25% 和魔力 战吼持续时间 战吼冷却回复速度提高 100% "}c["拥有【秘术增强】效果时，法术伤害的 0.5% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="AffectedBy秘术增强"},flags=2,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.5}},nil}
c["拥有幽灵护罩时免疫眩晕"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="GhostShroud"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["你的攻击击中每个敌人会回复 +30 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=30}},nil}
c["击败敌人时，你获得 1 颗耐力球"]={{},"击败敌人时， 颗耐力球 "}c["被击中时有 10% 几率制造一团烟雾"]={{},"被时制造一团烟雾 "}c["范围内含的敏捷和力量总计 40 点时，【元素打击】的总闪电伤害额外降低 50% {variant:2}攻击技能的元素伤害提高 15%"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"内含的和力量总计 40 {variant:2}攻击技能的元素伤害提高 15% "}c["可以对敌人施放 1 个额外诅咒"]={{[1]={flags=0,keywordFlags=0,name="EnemyCurseLimit",type="BASE",value=1}},nil}
c["不能使用其他戒指"]={nil,"不能使用其他戒指 "}c["你被冰缓的持续时间缩短 20%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-20}},"你被冰缓的 "}c["攻击和法术附加 10 - 20 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=10},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=20}},nil}
c["药剂持续期间，火焰、冰霜、闪电伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}},nil}
c["攻击附加 6 - 9 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=6},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=9}},nil}
c["对冰缓敌人附加 40 - 60 基础冰霜伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="ColdMin",type="BASE",value=40},[2]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="ColdMax",type="BASE",value=60}},nil}
c["攻击冰冻目标时附加 10 - 15 基础物理伤害 {variant:2}对冰缓敌人附加 40 - 60 基础冰霜伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=1,keywordFlags=262144,name="PhysicalMin",type="BASE",value=10},[2]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=1,keywordFlags=262144,name="PhysicalMax",type="BASE",value=15}},"目标时 {variant:2}附加 40 - 60 基础冰霜伤害 "}c["对被冰冻、感电、点燃敌人的击中伤害和异常状态伤害提高 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",varList={[1]="Frozen",[2]="Shocked",[3]="Ignited"}},flags=0,keywordFlags=786432,name="Damage",type="INC",value=20}},nil}
c["此物品上装备的【闪电技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="lightning",value=1}}},nil}
c["+20% 持续冰霜伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="BASE",value=20}},nil}
c["持法杖时，攻击类技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingWand"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["10% 几率造成冰冻、感电与点燃效果"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=10},[3]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=10}},nil}
c["攻击附加 33 - 47 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=33},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=47}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 15% {variant:2}攻击技能的火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=15}},"攻击的 {variant:2}攻击技能的火焰、冰霜、闪电伤害提高 30% "}c["武器攻击的火焰、冰霜、闪电伤害提高 15%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=15}},"攻击的 "}c["每个狂怒球可使中毒伤害提高 10%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=1048576,name="Damage",type="INC",value=10}},nil}
c["该装备的护甲与闪避提高 80%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=80}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 24% {variant:4,5}攻击技能的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=24}},"攻击的 {variant:4,5}攻击技能的火焰、冰霜、闪电伤害提高 24% "}c["攻击附加 4 - 9 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=9}},nil}
c["30% 较少幻化武器时间"]={{[1]={[1]={skillName="幻化武器",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="MORE",value=-30}},nil}
c["召唤的苦痛爬行者伤害提高 100%"]={{[1]={[1]={skillId="HeraldOfAgony",type="SkillId"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=100}}}},nil}
c["承受来自流血敌人的伤害降低 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-10}},nil}
c["10% 几率使敌人逃跑 被你感电的敌人施法速度降低 30%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="BASE",value=10}},"使敌人逃跑 被你感电的敌人降低 30% "}c["+16% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=16}},nil}
c["你格挡的攻击和法术无法将你晕眩"]={nil,"你格挡的攻击和法术无法将你晕眩 "}c["近期内你每感电 1 个未被感电的敌人，则燃烧伤害提高 6% 击中点燃敌人时附加 3 - 70 基础闪电伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=134479872,name="FireDamage",type="INC",value=6}},"近期内你每感电 1 个未被感电的敌人，则 附加 3 - 70 基础闪电伤害 "}c["闪电伤害的 0.2% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageLifeLeech",type="BASE",value=0.2}},nil}
c["法术附加 65 - 105 基础混沌伤害"]={{[1]={flags=0,keywordFlags=131072,name="ChaosMin",type="BASE",value=65},[2]={flags=0,keywordFlags=131072,name="ChaosMax",type="BASE",value=105}},nil}
c["+13 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=13}},nil}
c["近期若有能量护盾开始回复，则能量护盾的回复不会被打断"]={nil,"近期若有能量护盾开始回复，则能量护盾的回复不会被打断 "}c["附加 30 - 41 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=41}},nil}
c["移灵换影"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="移灵换影"}},nil}
c["左戒指栏位：分裂类法术的投射物无法弹射 {variant:2}右戒指栏位：法术的投射物会额外弹射 1 次"]={{[1]={[1]={num=1,type="SlotNumber"},flags=2,keywordFlags=0,name="ProjectileCount",type="BASE"}},"分裂类的无法弹射 {variant:2}右戒指栏位：法术的投射物会"}c["敌人被晕眩时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=10}},nil}
c["锤类和短杖攻击的攻击速度提高 8%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["左戒指栏位：分裂类法术的投射物无法弹射"]={nil,"分裂类法术的投射物无法弹射 "}c["+35% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=35}},nil}
c["每 10 秒，获得额外火焰伤害， 其数值等同于物理伤害的 100%，持续 4 秒"]={{},"每 10 秒，获得"}c["召唤生物的移动速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}}}},nil}
c["法术可以额外发射 1 个投射物"]={{[1]={flags=2,keywordFlags=0,name="ProjectileCount",type="BASE",value=1}},nil}
c["处于生命药剂持续时间内时，获得护体效果"]={nil,"处于生命药剂持续时间内时，获得护体效果 "}c["地雷所使用的技能范围效果扩大 6%"]={{[1]={flags=0,keywordFlags=8192,name="AreaOfEffect",type="INC",value=6}},nil}
c["受到的冰霜和闪电伤害有 50% 视为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageTakenAsFire",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="LightningDamageTakenAsFire",type="BASE",value=50}},nil}
c["物品稀有度降低 15%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=-15}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 25%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=25}},nil}
c["击败敌人时回复 1% 最大生命"]={nil,"击败敌人时回复 1% 最大生命 "}c["右戒指栏位：反射的物理伤害降低 30%"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-30}},"反射的 "}c["左戒指栏位：反射的火焰、冰霜、闪电伤害降低 40%"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=-40}},"反射的 "}c["物理攻击伤害的 0.8% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.8}},nil}
c["左戒指栏位：反射的火焰、冰霜、闪电伤害降低 30%"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=-30}},"反射的 "}c["技能魔力消耗提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=40}},nil}
c["对感电敌人的暴击几率提高 15%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["攻击附加 15 - 28 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=15},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=28}},nil}
c["范围效果扩大 5%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["附加 17 - 29 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=17},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=29}},nil}
c["附加 27 - 37 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=27},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=37}},nil}
c["每个耐力球可使每秒生命回复提高 25"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=25}},nil}
c["+14 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=14}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 30% {variant:4}攻击技能的火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=30}},"攻击的 {variant:4}攻击技能的火焰、冰霜、闪电伤害提高 30% "}c["静止时受到的元素伤害降低 5%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=-5}},nil}
c["锤类攻击的火焰、冰霜、闪电伤害提高 12%"]={{[1]={flags=1048576,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},nil}
c["左戒指栏位：魔力回复速度提高 100%"]={{[1]={[1]={num=1,type="SlotNumber"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=100}},nil}
c["【猫之势】不保留魔力值"]={{[1]={[1]={skillName="猫之势",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["右戒指栏位：每秒回复 3% 能量护盾"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=3}},nil}
c["获得 20 级的的主动技能【召唤石化雕像】 该装备的能量护盾提高 250%"]={nil,nil}
c["【猫之隐匿】的持续时间 +2 秒"]={{[1]={[1]={skillName="猫之势",type="SkillName"},flags=0,keywordFlags=0,name="PrimaryDuration",type="BASE",value=2}},nil}
c["你身上的捷效果提高 25%"]={{[1]={[1]={skillType=63,type="SkillType"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=25}},nil}
c["你身上的冰缓效果颠倒"]={{[1]={flags=0,keywordFlags=0,name="SelfChillEffectIsReversed",type="FLAG",value=true}},nil}
c["该装备的闪避与能量护盾提高 250%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=250}},nil}
c["每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=3}}}},"每拥有一个，获得 1% ，最多 10% 每拥有一个召唤生物， 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% "}c["无法使用头部装备 暴击率特别幸运 暴击伤害特别幸运"]={nil,"无法使用头部装备 暴击率特别幸运 暴击伤害特别幸运 "}c["敌人被冰缓的持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=50}},nil}
c["受到【冰霜净化】影响时，承受的反射冰霜伤害降低 50% {variant:56}受到【闪电净化】影响时，免疫感电"]={{[1]={[1]={type="Condition",var="AffectedBy冰霜净化"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=-50}},"承受的反射 {variant:56}受到【闪电净化】影响时，免疫感电 "}c["可以施放 1 个额外烙印 你每使敌人附着一种烙印，它们受到的伤害便提高 10% 【烙印召回】冷却回复速度提高 30% 烙印的附着范围扩大 14%"]={{},"可以施放 1 个"}c["该药剂创造的奉献地面范围x3 在效果持续期间，对位于奉献地面之上的敌人的暴击几率 +2%"]={{},"该药剂创造的奉献地面x3 在效果持续期间，对位于奉献地面之上的敌人的暴击几率  "}c["你受到点燃时，也会点燃周围 15 范围内的敌人 {variant:4}此物品上的技能石受到 20 级的 点燃扩散 辅助"]={nil,"你受到点燃时，也会点燃周围 15 范围内的敌人 {variant:4}此物品上的技能石受到 20 级的 点燃扩散 辅助 "}c["75 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=75}},nil}
c["召唤生物伤害提高 70%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=70}}}},nil}
c["无法格档"]={{[1]={flags=0,keywordFlags=0,name="CannotBlockAttacks",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="CannotBlockSpells",type="FLAG",value=true}},nil}
c["你可以受到 1 个额外的诅咒 自身的每个诅咒会使伤害提高 20%"]={{},"你可以受到 1 个"}c["使用时获得 1 个耐力球 {variant:1}提高 100% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=100}},"使用时获得 1 个耐力球 {variant:1}  "}c["受到【纪律】影响时，有 8% 几率格挡法术"]={{[1]={[1]={type="Condition",var="AffectedBy纪律"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=8}},nil}
c["插槽内魔像技能击中时有 25% 几率嘲讽 {variant:1}此物品上的技能石受到 17 级的 召唤生物伤害 辅助"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=25}}}},"插槽内技能时嘲讽 {variant:1}此物品上的技能石受到 17 级的 召唤生物 辅助 "}c["弓类技能的持续伤害效果提高 6%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=6}},nil}
c["攻击附加 12 - 30 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=12},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=30}},nil}
c["幻化类召唤生物的近战攻击会对对周围目标造成溅射伤害"]={nil,"幻化类近战攻击会对对周围目标造成溅射伤害 "}c["感电效果提高 30%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=30}},nil}
c["图腾所使用攻击的攻击速度提高 10%"]={{[1]={flags=1,keywordFlags=16384,name="Speed",type="INC",value=10}},nil}
c["图腾的生命提高 10%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=10}},nil}
c["燃烧伤害提高 80%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=80}},nil}
c["受到防卫技能增益效果影响时，获得 4% 额外物理伤害减伤 防卫技能冷却回复速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=4}},"受到防卫技能增益效果影响时，获得  防卫技能冷却回复速度提高 15% "}c["不会承受反射的物理伤害 对传奇敌人时，总伤害额外提高 20%"]={{}," "}c["技能的总魔力消耗 -6"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=-6}},nil}
c["此物品上的技能石受到 30 级的 寒冰转烈焰 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=30,skillId="SupportColdToFire"}}},nil}
c["被击中时， 4 秒内回复等同于 8% 伤害的魔力"]={nil,"被击中时， 4 秒内回复等同于 8% 伤害的魔力 "}c["6 每秒魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=6}},nil}
c["此物品上的技能石受到 10 级的 生命偷取 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportLifeLeech"}}},nil}
c["持续吟唱技能伤害提高 30%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["获得额外火焰伤害， 其数值等同于物理伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=20}},nil}
c["当不拥有耐力球时，所有属性的最大抗性上限 +3%"]={{[1]={[1]={stat="EnduranceCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=3},[2]={[1]={stat="EnduranceCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=3},[3]={[1]={stat="EnduranceCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=3},[4]={[1]={stat="EnduranceCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="ChaosResistMax",type="BASE",value=3}},nil}
c["5 每秒魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=5}},nil}
c["击败被冰冻的敌人时有 50% 几率获得暴击球"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=50}},"击败被的敌人时获得暴击球 "}c["击中稀有或传奇敌人时，有 10% 几率创造【奉献地面】，持续 8 秒"]={{},"稀有或传奇敌人时，创造【奉献地面】，持续 8 秒 "}c["若范围内含有 40 点力量，则【冰霜之锤】会对周围敌人造成冰霜伤害 若范围内含有 40 点力量，则【冰霜之锤】25% 的物理伤害会转化为冰霜伤害"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE",value=25}},"若内含有 40 点，则【冰霜之锤】会对周围敌人造成冰霜伤害 若范围内含有 40 点力量，则【冰霜之锤】物理伤害会转化为冰霜伤害 "}c["+75 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=75}},nil}
c["魔力回复速度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=25}},nil}
c["每个蓝色插槽 +100 最大能量护盾"]={{[1]={[1]={type="Multiplier",var="BlueSocketIn{SlotName}"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=100}},nil}
c["此物品上的技能石受到 30 级的【高等施法回响】辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=30,skillId="SupportGreaterSpellEcho"}}},nil}
c["每个红色插槽 +100 最大生命"]={{[1]={[1]={type="Multiplier",var="RedSocketIn{SlotName}"},flags=0,keywordFlags=0,name="Life",type="BASE",value=100}},nil}
c["附加 9 - 13 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=9},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=13}},nil}
c["攻击击中流血的敌人时瘫痪敌人 击中流血敌人时有 10% 几率使其致盲 被你瘫痪的敌人受到的物理伤害提高 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=1,keywordFlags=262144,name="PhysicalDamageTaken",type="BASE",value=10}},"击中流血的敌人时瘫痪敌人 击中使其致盲 被你瘫痪的敌人提高 10% "}c["当你点燃 1 个敌人时，回复 30 生命"]={nil,"当你点燃 1 个敌人时，回复 30 生命 "}c["攻击击中每个点燃的敌人会回复 +5 生命 {variant:2}当你点燃 1 个敌人时，回复 30 生命"]={{[1]={flags=1,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=5}},"击中每个的敌人会回复  生命 {variant:2}当你点燃 1 个敌人时，回复 30 生命 "}c["附加 10 - 14 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=14}},nil}
c["攻击附加 8 - 13 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=8},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=13}},nil}
c["使用时回复生命上限 100% 的生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=100}},"使用时回复上限 生命 "}c["玩家施放插槽内的魔像技能会获得 10 秒【猛攻】状态"]={nil,"玩家施放插槽内的技能会获得 10 秒【猛攻】状态 "}c["敌人被晕眩时间延长 70%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=70}},nil}
c["药剂持续期间，你的法术不消耗魔力"]={nil,"药剂持续期间，你的法术不消耗魔力 "}c["此物品上的技能石受到 16 级的 召唤生物速度 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=16,skillId="SupportMinionSpeed"}}},nil}
c["5% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=5}},nil}
c["地雷伤害提高 25%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=25}},nil}
c["药剂持续期间，攻击和法术附加 18-28 基础混沌伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=196608,name="ChaosMin",type="BASE",value=18},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=196608,name="ChaosMax",type="BASE",value=28}},nil}
c["近战单手武器攻击的攻击速度提高 4%"]={{[1]={flags=301989889,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["此物品上的技能石受到 13 级的 快速攻击 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=13,skillId="SupportFasterAttack"}}},nil}
c["被点燃时施法速度提高 20%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=16,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["锤类攻击 +25% 暴击伤害加成"]={{[1]={flags=1048576,keywordFlags=0,name="CritMultiplier",type="BASE",value=25}},nil}
c["持斧时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=25}},nil}
c["当你击败 1 名感电敌人，对周围敌人造成相同的感电效果 {variant:1}当你击败 1 名点燃敌人，对周围 1 名敌人造成相同的点燃效果，持续2秒"]={nil,"当你击败 1 名感电敌人，对周围敌人造成相同的感电效果 {variant:1}当你击败 1 名点燃敌人，对周围 1 名敌人造成相同的点燃效果，持续2秒 "}c["最大能量护盾降低 8%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=-8}},nil}
c["获得额外混沌伤害，其数值等同于物理伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=20}},nil}
c["+10 力量和智慧"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=10}},nil}
c["持爪时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["+3000 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=3000}},nil}
c["最大能量护盾降低 10%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=-10}},nil}
c["可附加第二种附魔词缀 +30 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=30},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=30}},"可附加第二种附魔词缀   "}c["击败时，回复 2% 能量护盾 击败时，回复 4% 魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=70}},"击败时，回复 2%  击败时，回复 4% 魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复 "}c["持弓攻击附加 5 - 10 基础火焰伤害"]={{[1]={flags=131072,keywordFlags=0,name="FireMin",type="BASE",value=5},[2]={flags=131072,keywordFlags=0,name="FireMax",type="BASE",value=10}},nil}
c["若你的其他戒指中有【裂界之器】，则法术伤害提高 70%"]={{[1]={[1]={type="Condition",var="ElderItemInRing {OtherSlotNum}"},flags=2,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["法术附加 16 - 53 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=16},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=53}},nil}
c["15% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=15}},nil}
c["承受投射物攻击造成的物理伤害 -10"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCountTaken",type="BASE",value=-10}},"物理伤害  "}c["若你的其他戒指中有【塑界之器】，则免疫法术造成的晕眩 击败敌人时有 20% 几率触发 20 级的【召唤异动奇点】"]={{},"免疫造成的晕眩 击败敌人时触发 20 级的【召唤异动奇点】 "}c["若你的其他戒指中有【塑界之器】，则免疫法术造成的晕眩"]={nil,"若你的其他戒指中有【塑界之器】，则免疫法术造成的晕眩 "}c["若你的其他戒指中有【裂界之器】，则法术伤害提高 80%"]={{[1]={[1]={type="Condition",var="ElderItemInRing {OtherSlotNum}"},flags=2,keywordFlags=0,name="Damage",type="INC",value=80}},nil}
c["法术附加 18 - 56 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=18},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=56}},nil}
c["当你触发或施法法术技能时牺牲 4% 的血量"]={{},"当你触发或施法技能时牺牲 血量 "}c["若你的其他戒指中有【塑界之器】，则攻击伤害提高 70%"]={{[1]={[1]={type="Condition",var="ShaperItemInRing {OtherSlotNum}"},flags=1,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["照亮范围扩大 20%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=20}},nil}
c["攻击附加 4 - 12 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=12}},nil}
c["击败敌人时有 20% 几率触发 20 级的【藤蔓抽击】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillId="藤蔓抽击"}}},nil}
c["击败敌人会扣除自身 1% 最大能量护盾"]={nil,"击败敌人会扣除自身 1% 最大能量护盾 "}c["召唤生物的攻击速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=8}}}},nil}
c["若你的其他戒指中有【塑界之器】，则攻击伤害提高 80%"]={{[1]={[1]={type="Condition",var="ShaperItemInRing {OtherSlotNum}"},flags=1,keywordFlags=0,name="Damage",type="INC",value=80}},nil}
c["每有 1 个轮回球，便获得 1% 击中物理伤害减免"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=1}},nil}
c["此物品上的技能石获得【元素之相】，效果降低 40%"]={{},"获得【元素之相】，效果 "}c["对敌人的感电效果持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=50}},nil}
c["当插槽内有 1 个【凶残之凝】珠宝时，攻击击中敌人会恐吓它们 4 秒 当插槽内有 1 个【锐利之凝】珠宝时，攻击击中敌人会瘫痪它们 4 秒"]={nil,"当插槽内有 1 个【凶残之凝】珠宝时，攻击击中敌人会恐吓它们 4 秒 当插槽内有 1 个【锐利之凝】珠宝时，攻击击中敌人会瘫痪它们 4 秒 "}c["此物品上的技能石额外获得【元素之相】 {variant:1}此物品上的技能石获得【元素之相】，效果降低 40%"]={{},""}c["能量护盾全满时，技能魔力消耗降低 50%"]={{[1]={[1]={type="Condition",var="FullEnergyShield"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-50}},nil}
c["图腾有 10% 额外物理伤害减免"]={{[1]={flags=0,keywordFlags=16384,name="PhysicalDamageReduction",type="BASE",value=10}},nil}
c["【蛛之势】的范围效果扩大 70%"]={{[1]={[1]={skillName="蛛之势",type="SkillName"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=70}},nil}
c["无法偷取 {variant:3,4,5}不能偷取生命"]={nil,"无法偷取 {variant:3,4,5}不能偷取生命 "}c["所有插槽都是白色的 此物品上的技能石额外获得【元素之相】"]={nil,"所有插槽都是白色的 此物品上的技能石额外获得【元素之相】 "}c["药剂持续期间，法术格挡率提高 15%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=15}},nil}
c["承受来自致盲敌人的法术伤害降低 30%"]={{[1]={flags=2,keywordFlags=0,name="DamageTaken",type="INC",value=-30}},"来自致盲敌人的 "}c["插上 1 个绿色技能石时获得 +100% 冰霜抗性 插上 1 个蓝色技能石时获得 +100% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=100}},"插上 1 个绿色技能石时  插上 1 个蓝色技能石时获得 +100% 闪电抗性 "}c["剑类攻击的伤害提高 24%"]={{[1]={flags=4194304,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["插上 1 个绿色技能石时获得 +100% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=100}},"插上 1 个绿色技能石时  "}c["当你用弓攻击时，有 25% 几率触发一个插槽内的法术 攻击速度提高 15%"]={{[1]={flags=131073,keywordFlags=0,name="Speed",type="BASE",value=25}},"当你用时，触发一个插槽内的法术 提高 15% "}c["陷阱冷却回复速度提高 15%"]={{[1]={flags=0,keywordFlags=4096,name="CooldownRecovery",type="INC",value=15}},nil}
c["对满血敌人的攻击和法术暴击伤害提高 +40% "]={{[1]={[1]={actor="enemy",type="ActorCondition",var="FullLife"},flags=0,keywordFlags=262144,name="CritMultiplier",type="BASE",value=40},[2]={[1]={actor="enemy",type="ActorCondition",var="FullLife"},flags=0,keywordFlags=262144,name="4",type="BASE",value=40}},nil}
c["获得 -25% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-25}},nil}
c["药剂持续期间，攻击格挡率提高 40%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=40}},nil}
c["所有物理法术技能石等级 +3"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keywordList={[1]="active_skill",[2]="spell",[3]="physical",[4]=0},value=3}}},nil}
c["低血时 +23% 混沌抗性"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=23}},nil}
c["魔力保留降低 10%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-10}},nil}
c["获得 +9% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=9}},nil}
c["投射物伤害提高 15%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["药剂持续期间，获得等同 20% 物理伤害的冰霜伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=20}},nil}
c["低血时 +25% 混沌抗性"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=25}},nil}
c["药剂持续期间，有 30% 几率避免被冰冻"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=30}},nil}
c["+20% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=20}},nil}
c["药剂回复的魔力提高 25%"]={{[1]={flags=0,keywordFlags=0,name="FlaskManaRecovery",type="INC",value=25}},nil}
c["对感电敌人造成伤害的 0.2% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.2}},nil}
c["地雷伤害提高 16%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=16}},nil}
c["击中时有 10% 几率对敌人施放 1 个随机诅咒"]={{},"时对敌人施放 1 个随机诅咒 "}c["地雷提供的光环效果提高 100%"]={{[1]={flags=0,keywordFlags=8192,name="AuraEffect",type="INC",value=100}},nil}
c["魔力保留降低 5%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-5}},nil}
c["召唤生物有 10% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}}}},nil}
c["可以吞噬 4 个辅助宝石 尚未吞噬任何宝石"]={nil,"可以吞噬 4 个辅助宝石 尚未吞噬任何宝石 "}c["双持攻击时武器暴击率提高 75%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="CritChance",type="INC",value=75}},nil}
c["能量护盾的回复速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=15}},nil}
c["+160 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=160}},nil}
c["诅咒技能施法速度提高 20%"]={{[1]={flags=16,keywordFlags=2,name="Speed",type="INC",value=20}},nil}
c["可以吞噬 4 个辅助宝石"]={nil,"可以吞噬 4 个辅助宝石 "}c["当插槽内的辅助宝石达到最大等级时吞噬该宝石 可以吞噬 4 个辅助宝石"]={nil,"当插槽内的辅助宝石达到最大等级时吞噬该宝石 可以吞噬 4 个辅助宝石 "}c["+10 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=10}},nil}
c["当插槽内的辅助宝石达到最大等级时吞噬该宝石"]={nil,"当插槽内的辅助宝石达到最大等级时吞噬该宝石 "}c["13 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=13}},nil}
c["持盾牌时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["药剂回复的魔力提高 30%"]={{[1]={flags=0,keywordFlags=0,name="FlaskManaRecovery",type="INC",value=30}},nil}
c["物理伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["当幻化武器击败一个敌人时，有 10% 几率触发 18 级的【幻化守卫武器】"]={{},"当幻化击败一个敌人时，触发 18 级的【幻化守卫武器】 "}c["双手近战武器的攻击命中值提高 20%"]={{[1]={flags=570425344,keywordFlags=0,name="Accuracy",type="INC",value=20}},nil}
c["被击中时, 10% 的伤害优先从魔力扣除"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=10}},"被时, 优先从魔力扣除 "}c["在过去 10 秒内，你每格挡一次攻击或法术，攻击伤害格挡几率 +1%"]={{[1]={flags=1,keywordFlags=0,name="BlockChance",type="BASE",value=1}},"在过去 10 秒内，你每格挡一次或法术，  "}c["混沌伤害提高 62%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=62}},nil}
c["获得护体时护甲提高 30%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="Armour",type="INC",value=30}},nil}
c["该装备的能量护盾提高 200%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=200}},nil}
c["获得 12 级的【召唤巨石魔像】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="12",skillName="召唤巨石魔像",type="SkillName"}}},nil}
c["双持时攻击格挡率提高 5%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["在奉献地面上时，伤害提高 50%"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["暴击击败敌人时物品稀有度提高 50% {variant:2}在奉献地面上时，伤害提高 50%"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},"暴击击败敌人时 {variant:2}伤害提高 50% "}c["召唤生物每秒回复 1.5% 生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1.5}}}},nil}
c["50% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=50}},nil}
c["暴击时制造奉献地面 暴击击败敌人时物品稀有度提高 50%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},"制造奉献地面 暴击击败敌人时 "}c["+30% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["该装备的闪避与能量护盾提高 113%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=113}},nil}
c["暴击时触发 10 级的【奉献】"]={nil,nil}
c["魔力保留提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=40}},nil}
c["法杖攻击的伤害提高 12%"]={{[1]={flags=8388608,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["可以拥有多个大师工艺属性"]={nil,"可以拥有多个大师工艺属性 "}c["耐力球达到上限时，受到的物理伤害降低 10%"]={{[1]={[1]={stat="EnduranceCharges",thresholdStat="EnduranceChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=-10}},nil}
c["被点燃敌人的燃烧减缓 65%"]={{[1]={flags=0,keywordFlags=0,name="IgniteBurnSlower",type="INC",value=65}},nil}
c["每个狂怒球可使攻击伤害的 0.5% 转化为生命偷取"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.5}},nil}
c["近期若打出过暴击，则法术伤害提高 150%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=150}},nil}
c["召唤愤怒狂灵的伤害提高 70%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=70}}}},nil}
c["物理伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["经验值获取提高 3%"]={{},"经验值获取 "}c["当你消耗灵柩时，在之后的2秒内回复 8% 能量护盾"]={nil,"当你消耗灵柩时，在之后的2秒内回复 8% 能量护盾 "}c["当暴击球被消耗或过期时获得耐力球"]={nil,"当暴击球被消耗或过期时获得耐力球 "}c["攻击和法术附加 22-35 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=22},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=35}},nil}
c["附加 14 - 21 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=21}},nil}
c["敌人身上每有 1 层蜘蛛网，则附加 10 - 15 混沌伤害"]={{[1]={[1]={actor="enemy",type="Multiplier",var="Spider's WebStack"},flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value="10"},[2]={[1]={actor="enemy",type="Multiplier",var="Spider's WebStack"},flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value="15"}},nil}
c["召唤生物的伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=8}}}},nil}
c["+3% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=3}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["获得额外混沌伤害， 其数值等同于闪电伤害的 5%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageGainAsChaos",type="BASE",value=5}},nil}
c["+18% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=18}},nil}
c["弓类攻击的攻击速度提高 6%"]={{[1]={flags=131073,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["+280 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=280}},nil}
c["+450 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=450}},nil}
c["陷阱冷却回复速度提高 5%"]={{[1]={flags=0,keywordFlags=4096,name="CooldownRecovery",type="INC",value=5}},nil}
c["击败敌人时获得 4 秒【猛攻】状态"]={nil,"击败敌人时获得 4 秒【猛攻】状态 "}c["每 50 点敏捷可使召唤生物的攻击速度提高 2%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=50,stat="Dex",type="PerStat"},flags=1,keywordFlags=0,name="Speed",type="INC",value=2}}}},nil}
c["魔力回复速度提高 35%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=35}},nil}
c["你的法术有 100% 几率对冰冻的敌人造成感电"]={{[1]={flags=2,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=100}},"你的对的敌人造成感电 "}c["可以施放 1 个额外烙印 烙印技能伤害提高 20% 烙印的附着范围扩大 10%"]={{},"可以施放 1 个"}c["地雷伤害提高 8%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=8}},nil}
c["40% 的闪电伤害转换为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageConvertToCold",type="BASE",value=40}},nil}
c["弓类技能的持续伤害效果提高 12%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=12}},nil}
c["50% 的闪电伤害转换为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageConvertToCold",type="BASE",value=50}},nil}
c["此物品上的技能石受到 15 级的 召唤生物生命 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=15,skillId="SupportMinionLife"}}},nil}
c["最大生命提高 35%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=35}},nil}
c["斧类攻击的物理伤害提高 20%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["插槽内魔像技能获得等同最大生命 20% 的额外能量护盾"]={{[1]={[1]={skillType=62,type="SkillType"},[2]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeGainAsEnergyShield",type="BASE",value=20}}}},nil}
c["召唤生物获得额外混沌伤害，其数值等同于元素伤害的 18%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=18}}}},nil}
c["此物品上的技能石受到 15 级的 集中效应 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=15,skillId="SupportConcentratedEffect"}}},nil}
c["你的行动速度无法被减速至基础以下"]={{[1]={flags=0,keywordFlags=0,name="ActionSpeedCannotBeBelowBase",type="FLAG",value=true}},nil}
c["每把幻化武器可使幻化守卫的伤害提高 5%"]={{[1]={flags=134217728,keywordFlags=0,name="Damage",type="INC",value=5}},"每把幻化可使幻化守卫的 "}c["受到【坚定】影响时，+1000 点护甲"]={{[1]={[1]={type="Condition",var="AffectedBy坚定"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=1000}},nil}
c["周围敌人有额外 2% 几率受到暴击"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SelfExtraCritChance",type="BASE",value=2}}}},nil}
c["你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20% 你击中造成的感电，必定会使对方所承受伤害提高至少 15%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="MORE"}},"你造成的冰缓必定使目标减速 10 你击中造成的感电，必定会使对方所承受提高至少 15% "}c["击败中毒的敌人时，周围友军每秒回复 200 生命"]={nil,"击败中毒的敌人时，周围友军每秒回复 200 生命 "}c["冰霜技能有 20% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=32,name="PoisonChance",type="BASE",value=20}},nil}
c["攻击附加 14 - 28 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=14},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=28}},nil}
c["你仅可以拥有一个无持续时间限制的非旗帜光环 非旗帜并且非地雷技能的光环不保留魔力"]={nil,"你仅可以拥有一个无持续时间限制的非旗帜光环 非旗帜并且非地雷技能的光环不保留魔力 "}c["你所施放诅咒的效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=5}},nil}
c["暴击时失去所有暴击球"]={nil,"暴击时失去所有暴击球 "}c["在迪虚瑞特的阿卡拉中指派 8000 名德卡拉的服务"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC迪虚瑞特",type="FLAG",value=true}},nil}
c["攻击附加 15 - 30 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=15},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=30}},nil}
c["药剂持续期间，每秒受到 30 混沌伤害 药剂持续期间，击中有 25% 几率使敌人中毒"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=262144,name="ChaosDamage",type="BASE",value=25}},"每秒受到 30  使敌人中毒 "}c["持盾牌时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["受到【雷霆】影响时，暴击率提高 100%"]={{[1]={[1]={type="Condition",var="AffectedBy雷霆"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=100}},nil}
c["【猛攻】状态下攻击伤害提高 30%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=1,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["攻击附加 14 - 28 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=14},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=28}},nil}
c["被点燃时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["获得 15 级的主动技能【嫉妒】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=15,skillId="Envy"}}},nil}
c["弓类攻击的物理伤害提高 10%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["你受到的冰缓效果降低 45%"]={{[1]={flags=0,keywordFlags=0,name="SelfChillEffect",type="INC",value=-45}},nil}
c["法术暴击率提高 15%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["爪类攻击击中时，有 25% 几率偷取暴击、狂怒和耐力球 持爪时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=262144,keywordFlags=0,name="Damage",type="BASE",value=25}},"击中时，偷取暴击、狂怒和耐力球 攻击技能造成的异常状态提高 20% "}c["该装备的能量护盾提高 80%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=80}},nil}
c["攻击附加 10 - 20 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=20}},nil}
c["近战攻击击中后有 30% 几率造成中毒"]={{[1]={flags=256,keywordFlags=0,name="PoisonChance",type="BASE",value=30}},nil}
c["近战攻击有 40% 几率造成流血"]={{[1]={flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=40}},nil}
c["当你获得【火之化身】时，暴击率提高 180%"]={{[1]={[1]={type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=180}},nil}
c["+63% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=63}},nil}
c["【活力】不保留魔力"]={{[1]={[1]={skillName="活力",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["近战攻击击中会造成中毒 {variant:2}近战攻击击中后有 40% 几率造成中毒"]={{[1]={flags=256,keywordFlags=0,name="PoisonChance",type="BASE",value=40}},"击中会 {variant:2}近战攻击击中后造成中毒 "}c["+200 锤类和短杖攻击的命中值"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="BASE",value=200}},nil}
c["+25% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=25}},nil}
c["若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 15 个魔侍法师"]={nil,"若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 15 个魔侍法师 "}c["近战攻击有 50% 几率造成流血"]={{[1]={flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=50}},nil}
c["投掷地雷的技能魔力保留降低 12%"]={{[1]={flags=0,keywordFlags=8192,name="ManaReserved",type="INC",value=-12}},nil}
c["+65 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=65}},nil}
c["物理伤害提高 140%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=140}},nil}
c["10% 几率使敌人逃跑 {variant:1}近战攻击会造成流血"]={{[1]={flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=10}},"使敌人逃跑 {variant:1}会 "}c["物品稀有度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=15}},nil}
c["攻击附加 1 - 3 基础混沌伤害"]={{[1]={flags=0,keywordFlags=65536,name="ChaosMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="ChaosMax",type="BASE",value=3}},nil}
c["受到【灰烬之捷】影响时，火焰伤害提高 50%"]={{[1]={[1]={type="Condition",var="AffectedBy灰烬之捷"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=50}},nil}
c["闪电伤害提高 28%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=28}},nil}
c["攻击和法术附加 23-40 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=23},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=40}},nil}
c["弓类攻击 +12% 暴击伤害加成"]={{[1]={flags=131072,keywordFlags=0,name="CritMultiplier",type="BASE",value=12}},nil}
c["当你击败 1 名点燃敌人，对周围 1 名敌人造成相同的点燃效果，持续2秒 {variant:2}当你击败 1 名点燃敌人，对周围敌人造成相同的点燃效果"]={nil,"当你击败 1 名点燃敌人，对周围 1 名敌人造成相同的点燃效果，持续2秒 {variant:2}当你击败 1 名点燃敌人，对周围敌人造成相同的点燃效果 "}c["附加 38 - 58 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=38},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=58}},nil}
c["附加 +0.75% 攻击和法术基础暴击率"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="BASE",value=0.75}},nil}
c["附加 18 - 28 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=18},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=28}},nil}
c["该装备的能量护盾提高 205%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=205}},nil}
c["+1 耐力球数量下限"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesMin",type="BASE",value=1}},nil}
c["若力量高于敏捷，则无法被点燃"]={{[1]={[1]={type="Condition",var="StrHigherThanDex"},flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=100}},nil}
c["若你在过去 8 秒内打出过暴击，则命中值提高 30%"]={{[1]={[1]={type="Condition",var="CritInPast8Sec"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=30}},nil}
c["陷阱和地雷造成 5 - 15 额外物理伤害"]={{[1]={flags=0,keywordFlags=12288,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=12288,name="PhysicalMax",type="BASE",value=15}},nil}
c["【憎恨】的光环效果提高 60%"]={{[1]={[1]={skillName="憎恨",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["暗影：+0.5% 暴击率"]={{[1]={[1]={type="Condition",var="ConnectedTo暗影刺客Start"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=0.5}},nil}
c["当你击败 1 名感电敌人，对周围 1 名敌人造成相同的感电效果，持续2秒 {variant:2}当你击败 1 名感电敌人，对周围敌人造成相同的感电效果"]={nil,"当你击败 1 名感电敌人，对周围 1 名敌人造成相同的感电效果，持续2秒 {variant:2}当你击败 1 名感电敌人，对周围敌人造成相同的感电效果 "}c["当你击败 1 名感电敌人，对周围 1 名敌人造成相同的感电效果，持续2秒"]={nil,"当你击败 1 名感电敌人，对周围 1 名敌人造成相同的感电效果，持续2秒 "}c["获得护体效果"]={{[1]={flags=0,keywordFlags=0,name="Condition:Fortify",type="FLAG",value=true}},nil}
c["每 5 点力量使最大能量护盾提高 +1"]={{[1]={[1]={div="5",stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value="1"}},nil}
c["图腾的生命提高 40%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=40}},nil}
c["闪电伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=30}},nil}
c["长杖攻击的暴击率提高 50%"]={{[1]={flags=2097152,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["攻击和法术附加 25-50 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=25},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=50}},nil}
c["攻击附加 1-30 基础火焰伤害"]={{[1]={flags=1,keywordFlags=0,name="FireMin",type="BASE",value=1},[2]={flags=1,keywordFlags=0,name="FireMax",type="BASE",value=30}},nil}
c["受到暴击时获得 1 个耐力球 {variant:1,2,3}低血时每秒回复 2% 生命"]={{},"受到获得 1 个耐力球 {variant:1,2,3}"}c["击败敌人时有 10% 几率获得【灵巧】状态"]={{},"击败敌人时获得【灵巧】状态 "}c["+16% 火焰与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=16},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=16}},nil}
c["魔像的增益效果提高 30%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=30}},nil}
c["法术伤害提高 31%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=31}},nil}
c["匕首攻击的暴击率提高 60%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["免疫沉默诅咒"]={nil,"免疫沉默诅咒 "}c["附加 1 - 54 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=54}},nil}
c["你击中造成的感电，必定会使对方所承受伤害提高至少 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="BASE",value=10}},nil}
c["技能魔力消耗提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=100}},nil}
c["攻击和法术附加 25 - 50 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=25},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=50}},nil}
c["攻击附加 1 - 30 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=30}},nil}
c["+16% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=16},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=16}},nil}
c["攻击击中有 5% 几率使敌人流血"]={{[1]={flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=5}},nil}
c["攻击和法术附加 1 - 60 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=60}},nil}
c["冰霜伤害提高 28%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=28}},nil}
c["获得 22 级的主动技能【枯萎】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=22,skillId="Blight"}}},nil}
c["当你消耗灵柩时，在之后的2秒内回复 8% 能量护盾 当你消耗灵柩时，在之后的2秒内回复 8% 魔力"]={nil,"当你消耗灵柩时，在之后的2秒内回复 8% 能量护盾 当你消耗灵柩时，在之后的2秒内回复 8% 魔力 "}c["5 最大虚空之矢数量"]={nil,"5 最大虚空之矢数量 "}c["药剂持续期间， +6% 火焰、冰霜、闪电抗性上限"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=6},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=6},[3]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=6}},nil}
c["对感电敌人造成伤害的 1% 转化为魔力偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="DamageManaLeech",type="BASE",value=1}},nil}
c["对被感电敌人造成伤害的 1% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["终结燃烧中的敌人"]={nil,"终结燃烧中的敌人 "}c["召唤生物有 10% 几率冰冻、感电、点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=10}}}},"、感电、点燃敌人 "}c["+64 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=64}},nil}
c["击败感电敌人后物品稀有度提高 50% {variant:2,3,4,5}击败感电敌人后物品稀有度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},"击败感电敌人后 {variant:2,3,4,5}击败感电敌人后物品稀有度提高 30% "}c["攻击附加 1 - 70 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=70}},nil}
c["+16% 冰霜与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=16},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=16}},nil}
c["闪避值提高 110%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=110}},nil}
c["周围敌人的晕眩和格挡回复降低 10% {variant:1}【愤怒】不保留魔力"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-10}},"周围敌人的 {variant:1}【愤怒】不保留魔力 "}c["法术伤害提高 70%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["药剂持续期间，技能可以额外发射 2 个投射物"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=2}},nil}
c["获得 -20% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-20}},nil}
c["物品稀有度提高 70%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=70}},nil}
c["受到【闪电之捷】影响时，闪电伤害提高 50%"]={{[1]={[1]={type="Condition",var="AffectedBy闪电之捷"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=50}},nil}
c["冰冻时 +5000 点护甲"]={{[1]={[1]={type="Condition",var="Frozen"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=5000}},nil}
c["50% 的物理伤害转换为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=50}},nil}
c["施法速度提高 28%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=28}},nil}
c["持单手武器时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["获得护体时，近战物理伤害提高 10%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["受到【闪电之捷】影响时，闪电伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy闪电之捷"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=60}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=24}},nil}
c["承受的冰霜总伤害降低 20%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageTaken",type="MORE",value=-20}},nil}
c["击败时，回复 2% 生命 击败时，回复 2% 能量护盾"]={nil,"击败时，回复 2% 生命 击败时，回复 2% 能量护盾 "}c["图腾伤害提高 14%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=14}},nil}
c["闪电伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=40}},nil}
c["若范围内含有 40 点力量，则周围每有一个敌人，劈砍的范围扩大 3% {variant:2}若范围内含有 40 点力量，则周围每有一个敌人，劈砍的攻击半径 +1，最大+10"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=3}},"若内含有 40 点，则周围每有一个敌人，劈砍的范围 {variant:2}若范围内含有 40 点力量，则周围每有一个敌人，劈砍的攻击半径 +1，最大+10 "}c["弓类攻击的命中值提高 8%"]={{[1]={flags=131072,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["受到【闪电之捷】影响时，+1% 闪电抗性上限"]={{[1]={[1]={type="Condition",var="AffectedBy闪电之捷"},flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=1}},nil}
c["爪类攻击的攻击速度提高 4%"]={{[1]={flags=262145,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["【闪电之捷】的魔力保留降低 40%"]={{[1]={[1]={skillName="闪电之捷",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-40}},nil}
c["近期内你若有进行攻击，你和周围友军有 +10% 几率格挡攻击伤害"]={{[1]={[1]={type="Condition",var="AttackedRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}}}},nil}
c["【闪电之捷】的增益效果提高 100%"]={{[1]={[1]={skillName="闪电之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=100}},nil}
c["附加 1 - 60 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=60}},nil}
c["持爪时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=25}},nil}
c["受到【苦痛之捷】影响时，混沌伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy苦痛之捷"},flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=60}},nil}
c["+3% 闪避几率"]={{[1]={flags=0,keywordFlags=0,name="EvadeChance",type="BASE",value=3}},nil}
c["【灵巧】效果提高 25%"]={{[1]={flags=0,keywordFlags=0,name="ElusiveEffectOnSelf",type="INC",value=25}},nil}
c["每连锁弹射 1 次，投射物获得额外混沌伤害，其数值等同于非混沌伤害的 18%"]={{[1]={[1]={stat="Chain",type="PerStat"},flags=1024,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=18}},nil}
c["该装备的护甲与能量护盾提高 151%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=151}},nil}
c["击中时有 20% 几率用灰烬覆盖稀有或传奇敌人，持续 10 秒。 力量提高 10%"]={{[1]={flags=0,keywordFlags=262144,name="Str",type="BASE",value=20}},"时用灰烬覆盖稀有或传奇敌人，持续 10 秒。 提高 10% "}c["受到【苦痛之捷】影响时，+43% 混沌抗性"]={{[1]={[1]={type="Condition",var="AffectedBy苦痛之捷"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=43}},nil}
c["爪类攻击的暴击率提高 40%"]={{[1]={flags=262144,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["双持时，法术伤害提高 10%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["【苦痛之捷】的魔力保留降低 40%"]={{[1]={[1]={skillName="苦痛之捷",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-40}},nil}
c["你技能的非诅咒类光环效果提高 13%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=13}},nil}
c["附加 20 - 30 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=30}},nil}
c["附加 23 - 31 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=23},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=31}},nil}
c["+5 【深海屏障】数量上限"]={{[1]={flags=0,keywordFlags=0,name="CrabBarriersMax",type="BASE",value=5}},nil}
c["【闪电净化】不保留魔力"]={{[1]={[1]={skillName="闪电净化",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["闪避值提高 135%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=135}},nil}
c["15% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=15}},nil}
c["最大生命上限变成 1，免疫混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosInoculation",type="FLAG",value=true}},nil}
c["格挡时回复 5% 最大生命"]={nil,"格挡时回复 5% 最大生命 "}c["击败敌人时，每个狂怒球可以回复 +20 生命"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=20}},nil}
c["【灰烬之捷】的魔力保留降低 40%"]={{[1]={[1]={skillName="灰烬之捷",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-40}},nil}
c["【灰烬之捷】的增益效果提高 100%"]={{[1]={[1]={skillName="灰烬之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=100}},nil}
c["剑类攻击的物理伤害提高 8%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["附加 25 - 35 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=35}},nil}
c["格挡时回复 +24 魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=24}},"格挡时回复   "}c["附加 23 - 31 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=23},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=31}},nil}
c["弓类攻击的命中值提高 16%"]={{[1]={flags=131072,keywordFlags=0,name="Accuracy",type="INC",value=16}},nil}
c["护甲提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=10}},nil}
c["附加 25 - 35 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=35}},nil}
c["被击中时，丢失一个幽灵护罩，回复 5% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="Evasion",type="INC",value=10}},"被时，丢失一个幽灵护罩，回复 5% 等同于你的能量护盾 移动速度 "}c["近战暴击时有 10% 几率获得 1 个耐力球 持长杖时，攻击类技能造成的异常状态伤害提高 30% +1 长杖的近战攻击范围"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="UsingStaff"},flags=256,keywordFlags=0,name="Damage",type="BASE",value=10}},"获得 1 个耐力球 攻击类技能造成的异常状态提高 30% +1 长杖的近战攻击范围 "}c["攻击附加 40 - 60 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=40},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=60}},nil}
c["在忆境之台上使用时，新物品获得一个额外的【捷】属性"]={nil,"在忆境之台上使用时，新物品获得一个额外的【捷】属性 "}c["免疫沉默诅咒 {variant:1,2}获得 20 级的【幻象传送】"]={nil,"免疫沉默诅咒 {variant:1,2}获得 20 级的【幻象传送】 "}c["武器攻击的冰霜伤害提高 40%"]={{[1]={flags=134217728,keywordFlags=0,name="ColdDamage",type="INC",value=40}},"攻击的 "}c["召唤的纯净哨兵伤害提高 85%"]={{[1]={[1]={skillId="HeraldOfPurity",type="SkillId"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=85}}}},nil}
c["若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 3 个魔侍法师"]={nil,"若范围内有 40 点智慧，则【召唤魔侍】技能可以召唤最多 3 个魔侍法师 "}c["法杖攻击的命中值提高 30%"]={{[1]={flags=8388608,keywordFlags=0,name="Accuracy",type="INC",value=30}},nil}
c["附加 9 - 14 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=9},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=14}},nil}
c["不会被致盲 承受来自致盲敌人的伤害降低 10% 周围敌人被致盲"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 周围敌人被致盲 "}c["返还的投射物穿透所有目标"]={nil,"返还的投射物穿透所有目标 "}c["受到【纯净之捷】影响时，物理伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy纯净之捷"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=60}},nil}
c["+60% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=60}},nil}
c["火焰、冰霜、闪电伤害提高 6%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=6}},nil}
c["你每控制一个魔侍，召唤生物伤害和施法速度便提高 2% {variant:1,2}你每控制一个魔卫，召唤生物持续时间延长 2%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=2}}}},"你每控制一个魔侍，和施法速度 {variant:1,2}你每控制一个，召唤生物持续时间延长 2% "}c["你每控制一个魔侍，有 1% 几率格挡攻击伤害 {variant:3}你每控制一个愤怒狂灵，会使你攻击和施法速度便提高 2%"]={{[1]={flags=1,keywordFlags=0,name="BlockChance",type="BASE",value=1}},"你每控制一个魔侍，伤害 {variant:3}你每控制一个愤怒狂灵，会使你和施法速度便提高 2% "}c["地雷引爆速度提高 50%"]={{},"引爆速度 "}c["每装备 1 个被腐化的物品时，技能的总魔力消耗 -2"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=-2}},"每装备 1 个被腐化的物品时，  "}c["魔像移动速度提高 100%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=100}}}},nil}
c["+3% 全部抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=3},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=3},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=3},[4]={flags=0,keywordFlags=0,name="ChaosResistMax",type="BASE",value=3}},nil}
c["+4% 全部抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=4},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=4},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=4},[4]={flags=0,keywordFlags=0,name="ChaosResistMax",type="BASE",value=4}},nil}
c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 20% 当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5% 生命 你和周围队友的移动速度提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=12}}}},"当你创建旗帜时，它会获得你当前放置旗帜等阶的 20% 当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5%  移动速度 "}c["+20% chance to be Pierced by Projectiles {variant:2}敌人的投射物会穿透你"]={{[1]={flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=20}}," chance to be Pierced by Projectiles {variant:2}敌人的会穿透你 "}c["攻击技能的冰霜伤害提高 16%"]={{[1]={flags=0,keywordFlags=65536,name="ColdDamage",type="INC",value=16}},nil}
c["使用时消耗所有狂怒球 {variant:1,2}每个生效中的狂怒球给予 1 秒【猛攻】状态"]={nil,"使用时消耗所有狂怒球 {variant:1,2}每个生效中的狂怒球给予 1 秒【猛攻】状态 "}c["法术附加 19 - 35 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=19},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=35}},nil}
c["敌人解冻后受到冰缓效果 有 10% 几率冰冻被冰缓的敌人"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="EnemyChillEffect",type="BASE",value=10}},"敌人解冻后受到 冰冻 "}c["装备 1 件普通物品时，物品稀有度提高 90%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="NormalItem"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=90}},nil}
c["近期内每引爆一个地雷，+8% 暴击伤害加成，最多 40%"]={{[1]={[1]={limit=40,limitTotal=true,type="Multiplier",var="MineDetonatedRecently"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=8}},nil}
c["药剂持续期间，你的暴击无法造成暴击伤害加成"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="NoCritMultiplier",type="FLAG",value=true}},nil}
c["该装备的能量护盾提高 116%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=116}},nil}
c["受到诅咒的持续时间延长 100% +5% 攻击格挡率"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=100}},"受到的 +5% 攻击格挡率 "}c["+15% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=15}},nil}
c["近战伤害提高 18%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=18}},nil}
c["每个疾电球可使总攻击速度额外提高 2%"]={{[1]={[1]={type="Multiplier",var="BlitzCharge"},flags=1,keywordFlags=0,name="Speed",type="MORE",value=2}},nil}
c["受到【闪电净化】影响时，不受【导电】影响"]={nil,"受到【闪电净化】影响时，不受【导电】影响 "}c["每个耐力球可使火焰伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=5}},nil}
c["当你失去耐力能量球时触发一个插槽内的战吼 +80 最大生命"]={{[1]={flags=0,keywordFlags=4,name="Life",type="BASE",value=80}},"当你失去耐力能量球时触发一个插槽内的   "}c["召唤生物附加 51 - 78 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=51}}},[2]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=78}}}},nil}
c["在召唤魔像后的 8 秒内伤害提高 30%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=30}}}},"在召唤后的 8 秒内 "}c["【*】上面这条词缀游戏中是会换行的，如果从游戏中复制或导入，那么需要手动修改为1行"]={nil,"【*】上面这条词缀游戏中是会换行的，如果从游戏中复制或导入，那么需要手动修改为1行 "}c["30% 的物理伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToChaos",type="BASE",value=30}},nil}
c["近期每有 1 个你的地雷被引爆，则每秒回复 1% 生命，最多 10%"]={{[1]={[1]={limit=10,limitTotal=true,type="Multiplier",var="MineDetonatedRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}},nil}
c["每个暴击球可使法术伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["击败敌人时有 5% 几率获得 3 秒【猛攻】状态 {variant:2}击败敌人时有 10% 几率获得不洁之力 3 秒"]={{},"击败敌人时获得 3 秒【猛攻】状态 {variant:2}击败敌人时有 10% 几率获得不洁之力 3 秒 "}c["近距离用弓击中后的总伤害额外提高 100%"]={{[1]={[1]={type="Condition",var="AtCloseRange"},flags=131076,keywordFlags=0,name="Damage",type="MORE",value=100}},nil}
c["10% 几率使用冰霜伤害击中时冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=10}},nil}
c["该装备的能量护盾提高 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=50}},nil}
c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% 近期内你若没有被击中，则免疫晕眩 近期内你若使用过移动技能，则每秒回复 15 魔力"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},[2]={type="Condition",var="UsedMovementSkillRecently"},flags=8,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% 免疫晕眩 每秒回复 15 魔力 "}c["承受伤害降低 5%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},nil}
c["反射 1 - 150 闪电伤害给近战攻击者 当你格挡时，能量护盾有 20% 几率开始回复"]={{[1]={flags=256,keywordFlags=0,name="LightningDamage",type="BASE",value=20}},"反射 1 - 150 给者 当你格挡时，能量护盾开始回复 "}c["反射 1 - 150 闪电伤害给近战攻击者"]={nil,"反射 1 - 150 闪电伤害给近战攻击者 "}c["智慧提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=16}},nil}
c["每秒回复 90 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRegen",type="BASE",value=90}},nil}
c["获得 +6% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=6}},nil}
c["投射物伤害提高 8%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["持续吟唱技能的攻击伤害提高 12%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["附加 13 - 23 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=23}},nil}
c["法杖攻击的命中值提高 6%"]={{[1]={flags=8388608,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["身上未装备已腐化的物品时，最大生命提高 10%"]={{[1]={[1]={threshold=0,type="MultiplierThreshold",upper=true,var="CorruptedItem"},flags=0,keywordFlags=0,name="Life",type="INC",value=10}},nil}
c["锤类攻击 +16% 暴击伤害加成"]={{[1]={flags=1048576,keywordFlags=0,name="CritMultiplier",type="BASE",value=16}},nil}
c["图腾放置速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=30}},nil}
c["地雷可以被额外触发 1 次 {variant:3}此物品上装备的【法术技能石】等级 +2"]={{},"可以被"}c["消耗总计 200 魔力后触发 20 级的【秘术苏醒】 +300 命中值"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=300}},"消耗总计 200 后触发 20 级的【秘术苏醒】  命中值 "}c["+290 护甲和闪避值"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="BASE",value=290}},nil}
c["地雷放置速度提高 60%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=60}},nil}
c["击败敌人时获得【猛攻】状态，持续 10 秒"]={nil,"击败敌人时获得【猛攻】状态，持续 10 秒 "}c["施法速度提高 8%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["魔卫抗性提高 28%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=28}}}},nil}
c["护体状态下，攻击速度提高 4%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=1,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["地雷总伤害额外降低 35%"]={{[1]={flags=8192,keywordFlags=0,name="Damage",type="MORE",value=-35}},nil}
c["闪避值提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=10}},nil}
c["你创建的奉献地面可使敌人承受的伤害提高 10% 站立时，创建奉献地面 在奉献地面上时，每秒回复 15 魔力"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你创建的奉献地面可使敌人 站立时，创建奉献地面 每秒回复 15 魔力 "}c["装备在副手时，攻击可以额外发射 1 个投射物"]={{[1]={[1]={num=2,type="SlotNumber"},flags=1,keywordFlags=0,name="ProjectileCount",type="BASE",value=1}},nil}
c["移动时失去所有暴击球，耐力球和狂怒球"]={nil,"移动时失去所有暴击球，耐力球和狂怒球 "}c["该装备的能量护盾提高 115%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=115}},nil}
c["冰霜伤害提高 45%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=45}},nil}
c["冰霜伤害击中时有 8% 的几率冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=8}},nil}
c["火焰抗性降低 53%"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="INC",value=-53}},nil}
c["弓类攻击的攻击速度提高 4%"]={{[1]={flags=131073,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["附加 251 - 277 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=251},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=277}},nil}
c["近期内你若因被击中而受伤，攻击伤害格挡几率 +8%"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=8}},nil}
c["受到的物理伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=50}},nil}
c["击败敌人回复 +5 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaOnKill",type="BASE",value=5}},nil}
c["获得 20 级的主动技能【蟹之势】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="CrabAspect"}}},nil}
c["+100 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=100}},nil}
c["满血时攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["附加 6 - 80 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=6},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=80}},nil}
c["附加 30 - 53 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=53}},nil}
c["每 4 秒便有 33% 几率冻结周围被冰缓的传奇敌人，持续 0.6 秒 每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒 周围被冰缓敌人打出的击中伤害降低 10%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=33}},"每 4 秒便冻结周围被冰缓的传奇敌人，持续 0.6 秒 每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒 周围被冰缓敌人打出的降低 10% "}c["你和周围队友的移动速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}}}},nil}
c["锤类攻击的攻击速度提高 8%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["+425 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=425}},nil}
c["附近至少有一个灵柩时，周围敌人的伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-10}},"附近至少有一个灵柩时，周围敌人的 "}c["你被冰冻时不会被感电 {variant:2}你被冰冻时不会被感电"]={nil,"你被冰冻时不会被感电 {variant:2}你被冰冻时不会被感电 "}c["对满血敌人的暴击几率提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="FullLife"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["你被冰冻时不会被感电"]={nil,"你被冰冻时不会被感电 "}c["近战击中时有 10% 几率获得护体效果 受到你嘲讽的敌人所承受的伤害提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓"]={{[1]={flags=256,keywordFlags=0,name="DamageTaken",type="BASE",value=10}},"击中时获得护体效果 受到你嘲讽的敌人所提高 10% 击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 "}c["若智慧高于力量，则无法被感电"]={{[1]={[1]={type="Condition",var="IntHigherThanStr"},flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=100}},nil}
c["箭矢速度提高 20%"]={{[1]={flags=131072,keywordFlags=0,name="ProjectileSpeed",type="INC",value=20}},nil}
c["附加 35 - 60 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=35},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=60}},nil}
c["攻击附加 1 - 100 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=100}},nil}
c["低血时物品稀有度提高 100%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=100}},nil}
c["每秒 1% 魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegenPercent",type="BASE",value=1}},nil}
c["投射物伤害提高 80%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=80}},nil}
c["投掷陷阱时，有 15% 的几率获得 1 个暴击球"]={{},"投掷时，有 几率获得 1 个暴击球 "}c["此物品上的技能石可以发射 4 个额外投射物"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=4}}}},nil}
c["受到【奋锐光环】影响时，你创造的奉献地面效果可延续 2 秒"]={nil,"受到【奋锐光环】影响时，你创造的奉献地面效果可延续 2 秒 "}c["每个幽灵护罩可使承受的伤害降低 3%"]={{[1]={[1]={type="Multiplier",var="GhostShroud"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-3}},nil}
c["每有 1 个再生腐尸，承受的元素总伤害额外降低 1%"]={{},"每有 1 "}c["投射物伤害提高 100%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=100}},nil}
c["获得 +7% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=7}},nil}
c["持盾牌时攻击造成的伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["获得等同 20% 最大魔力的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ManaGainAsEnergyShield",type="BASE",value=20}},nil}
c["火焰伤害提高 80%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=80}},nil}
c["+60% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=60}},nil}
c["暴击伤害加成也会套用于异常状态的伤害加成，数值为 30%"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplierAppliesToDegen",type="BASE",value=30}},nil}
c["燃烧伤害提高 70%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=70}},nil}
c["击败敌人后 3 秒内持续承受 450 混沌伤害"]={nil,"击败敌人后 3 秒内持续承受 450 混沌伤害 "}c["图腾所使用法术的施法速度提高 3%"]={{[1]={flags=16,keywordFlags=16384,name="Speed",type="INC",value=3}},nil}
c["承受来自致盲敌人的伤害降低 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-10}},nil}
c["火焰伤害提高 90%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=90}},nil}
c["药剂回复的生命提高 100%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=100}},nil}
c["附加 13 - 23 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=23}},nil}
c["持续吟唱时，被击中有 20% 几率获得耐力球"]={{},"持续吟唱时，被获得耐力球 "}c["+15 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=15}},nil}
c["此物品上装备的【辅助技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="support",value=1}}},nil}
c["召唤生物附加 (5–9) - (11–15) 基础冰霜伤害 召唤生物的移动速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=15}}}},"附加 (5–9) - (11–15) 基础 召唤生物的移动速度 "}c["附加 15 - 25 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=25}},nil}
c["图腾所使用法术的施法速度提高 5%"]={{[1]={flags=16,keywordFlags=16384,name="Speed",type="INC",value=5}},nil}
c["+435 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=435}},nil}
c["+50 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=50}},nil}
c["陷阱触发范围扩大 50%"]={{[1]={flags=0,keywordFlags=0,name="TrapTriggerAreaOfEffect",type="INC",value=50}},nil}
c["+38% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=38}},nil}
c["此物品上的技能石受到 30 级的 施法回响 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=30,skillId="SupportMulticast"}}},nil}
c["双持攻击的命中值提高 12%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["每 10 点敏捷会使攻击速度提高 1%"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=1,keywordFlags=0,name="Speed",type="INC",value=1}},nil}
c["无魔力保留时，法术伤害提高 50%"]={{[1]={[1]={stat="ManaReserved",threshold=0,type="StatThreshold",upper=true},flags=2,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["每 20 点智慧会使范围效果扩大 1%"]={{[1]={[1]={div=20,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=1}},nil}
c["不会承受反射的元素伤害 你身上的捷效果提高 40% 你击中造成的感电，必定会使对方所承受伤害提高至少 10%"]={{[1]={flags=0,keywordFlags=262144,name="ElementalDamage",type="INC",value=40}},"不会承受反射的 你身上的捷效果 你造成的感电，必定会使对方所承受伤害提高至少 10% "}c["+1000 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=1000}},nil}
c["长杖攻击的暴击率提高 30%"]={{[1]={flags=2097152,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["游侠：移动速度提高 7%"]={{[1]={[1]={type="Condition",var="ConnectedTo游侠Start"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=7}},nil}
c["14% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=14}},nil}
c["击中时有 100% 几率嘲讽敌人 近期内你若有成功嘲讽敌人，则受到的伤害降低 6%"]={{[1]={[1]={type="Condition",var="TauntedEnemyRecently"},flags=0,keywordFlags=262144,name="DamageTaken",type="BASE",value=100}},"时嘲讽敌人 降低 6% "}c["每 10 点力量提高 1% 能量护盾"]={{[1]={[1]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=1}},nil}
c["冰霜抗性高于 75% 时，每高 1%，冰霜伤害便提高 20%"]={{[1]={[1]={div=1,stat="ColdResistOver75",type="PerStat"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=20}},nil}
c["药剂持续期间你会被感电，受到的伤害提高 50% {variant:1,2,3,4}药剂持续期间，闪电伤害的 30% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=50}},"药剂持续期间你会被感电， {variant:1,2,3,4}闪电伤害的 30% 转化为生命偷取 "}c["近期内你若有过格挡，则伤害穿透 15% 火焰抗性"]={{[1]={[1]={type="Condition",var="BlockedRecently"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=15}},nil}
c["附加 55 - 80 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=55},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=80}},nil}
c["附加 65 - 76 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=65},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=76}},nil}
c["附加 35 - 55 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=35},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=55}},nil}
c["附加 45 - 90 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=45},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=90}},nil}
c["投射物伤害提高 20%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["附加 25 - 45 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=45}},nil}
c["闪避值提高 30%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=30}},nil}
c["附加 400 - 600 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=400},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=600}},nil}
c["对流血敌人的攻击伤害提高 33%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=1,keywordFlags=262144,name="Damage",type="INC",value=33}},nil}
c["攻击击中时有 20% 几率使目标中毒"]={{[1]={flags=1,keywordFlags=0,name="PoisonChance",type="BASE",value=20}},nil}
c["近战伤害击退敌人时，有 10% 的几率获得 1 个暴击球"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="BASE",value=10}},"击退敌人时，有 几率获得 1 个暴击球 "}c["当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 最多可同时拥有额外 1 个魔像"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE"}}}},"当你身旁有召唤的寒冰时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被 当你召唤出闪电魔像时，你无法被感电 最多可同时拥有"}c["解除护甲或能量护盾"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="MORE",value=-100},[2]={flags=0,keywordFlags=0,name="EnergyShield",type="MORE",value=-100}},nil}
c["附加 190 - 220 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=190},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=220}},nil}
c["6% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=6}},nil}
c["流血时击中敌人将获得 1 个狂怒球 流血时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="Bleeding"},[2]={type="Condition",var="Bleeding"},flags=0,keywordFlags=262144,name="MovementSpeed",type="INC",value=15}},"敌人将获得 1 个狂怒球  "}c["你从激活的先祖图腾获得的增益效果提高 50% 先祖图腾的激活范围效果扩大 100%"]={{[1]={flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=50}},"你从激活的先祖获得的增益效果 先祖图腾的激活扩大 100% "}c["此物品上的技能石受到 16 级的 散弹陷阱 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=16,skillId="SupportClusterTrap"}}},nil}
c["你的陷阱被敌人触发时回复 100 生命 你的陷阱被敌人触发时回复 50 能量护盾"]={nil,"你的陷阱被敌人触发时回复 100 生命 你的陷阱被敌人触发时回复 50 能量护盾 "}c["当你使用火焰技能时，有 35% 几率获得 1 个耐力球"]={{},"当你使用时，获得 1 个耐力球 "}c["击败敌人有 10% 几率获得暴击球"]={{},"击败敌人获得暴击球 "}c["击败敌人时有 10% 几率触发 18 级的【召唤幽狼】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="18",skillId="召唤幽狼"}}},nil}
c["+20 最大疾电球数量上限"]={{[1]={flags=0,keywordFlags=0,name="BlitzChargesMax",type="BASE",value=20}},nil}
c["你每拥有一个灵体，魔力回复速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=30}},"你每拥有一个灵体， "}c["被击中时，有 10% 几率获得双倍护甲效果 受到防卫技能增益效果影响时，每秒生命回复 0.5% 最大生命"]={{[1]={flags=0,keywordFlags=262144,name="Armour",type="BASE",value=10}},"被时，获得双倍效果 受到防卫技能增益效果影响时，每秒生命回复 0.5% 最大生命 "}c["获得护体时，近战物理伤害提高 12%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["当你或你的图腾使用法术击中 1 名敌人，便获得【秘术增强】效果 拥有【秘术增强】时法术伤害提高 20%"]={{[1]={[1]={type="Condition",var="AffectedBy秘术增强"},flags=2,keywordFlags=16384,name="Damage",type="INC",value=20}},"当你或你的使用法术击中 1 名敌人，便获得【秘术增强】效果  "}c["敌人身上的非伤害异常状态效果提高 8%"]={{[1]={flags=2048,keywordFlags=0,name="EnemyShockEffect",type="INC",value=8},[2]={flags=2048,keywordFlags=0,name="EnemyChillEffect",type="INC",value=8},[3]={flags=2048,keywordFlags=0,name="EnemyFreezeEffech",type="INC",value=8}},nil}
c["魔像免疫火焰、冰霜、闪电伤害 每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}}}},"免疫 每个召唤的魔像可使你的伤害 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限 "}c["当你放置图腾时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 你拥有耐力球时，承受的元素伤害降低 5%"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=16384,name="ElementalDamageTaken",type="BASE",value=50}},"当你放置时，获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 降低 5% "}c["每个耐力球会使魔力消耗降低 4%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-4}},nil}
c["药剂持续期间，法术格挡率提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=10}},nil}
c["召唤生物有 10% 额外物理伤害减免"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=10}}}},nil}
c["你每控制一个魔卫，每秒回复 0.6% 生命"]={{},"你每控制一个，"}c["敌人被晕眩时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=15}},nil}
c["你每控制一个愤怒狂灵，会使你攻击和施法速度便提高 2% {variant:3}你每控制一个魔卫，每秒回复 0.6% 生命"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=2}}}},"你每控制一个愤怒狂灵，会使你 {variant:3}你每控制一个，每秒回复 0.6% 生命 "}c["感电时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="Shocked"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["匕首攻击的攻击速度提高 6%"]={{[1]={flags=524289,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["每种影响你的【深渊珠宝】可使伤害提高 10%"]={{[1]={[1]={type="Multiplier",var="AbyssJewelType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["当精神球失效或被消耗时，回复 5% 生命"]={nil,"当精神球失效或被消耗时，回复 5% 生命 "}c["你每拥有一个灵体，召唤生物伤害提高 12% {variant:3}召唤生物伤害提高 80%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=12}}}},"你每拥有一个灵体， {variant:3}召唤生物伤害提高 80% "}c["你每拥有一个灵体，召唤生物伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=12}}}},"你每拥有一个灵体， "}c["匕首攻击的攻击速度提高 10%"]={{[1]={flags=524289,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["近期内你若使用过移动技能，则攻击和施法速度提高 15%"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["敏捷提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=8}},nil}
c["你每控制一个魔卫，召唤生物持续时间延长 2%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Duration",type="INC",value=2}}}},"你每控制一个， "}c["你每控制一个魔侍，召唤生物伤害和施法速度便提高 2%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=2}}}},"你每控制一个魔侍，和施法速度 "}c["召唤生物每秒回复 2.5% 生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2.5}}}},nil}
c["附加 10 - 23 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=23}},nil}
c["附加 185 - 225 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=185},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=225}},nil}
c["12% 几率造成冰冻、感电与点燃效果"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=12},[2]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=12},[3]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=12}},nil}
c["持续吟唱时，获得 4% 额外物理伤害减伤"]={{[1]={[1]={type="Condition",var="OnChannelling"},flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=4}},nil}
c["攻击暴击率提高 80%"]={{[1]={flags=1,keywordFlags=0,name="CritChance",type="INC",value=80}},nil}
c["受到【清晰】影响时，被击中时， 4 秒内回复等同于 20% 伤害的魔力"]={nil,"受到【清晰】影响时，被击中时， 4 秒内回复等同于 20% 伤害的魔力 "}c["受到【火焰净化】影响时，承受的反射火焰伤害降低 50% {variant:51}受到【冰霜净化】影响时，免疫冰冻"]={{[1]={[1]={type="Condition",var="AffectedBy火焰净化"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=-50}},"承受的反射 {variant:51}受到【冰霜净化】影响时，免疫冰冻 "}c["获得【召唤残暴先驱者】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={skillId="SummonHarbingerOfBrutality"}}},nil}
c["魔力回复速度提高 55%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=55}},nil}
c["周围友军的伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=18},onlyAllies=true}}},nil}
c["投射物会穿透 3 个额外目标"]={{[1]={flags=0,keywordFlags=0,name="PierceCount",type="BASE",value=3}},nil}
c["副手攻击和法术附加 270 - 315 基础冰霜伤害"]={{[1]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=270},[2]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=315}},nil}
c["光环技能范围提高 18%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=18}},nil}
c["近期若打出过暴击，则法术伤害提高 135%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=2,keywordFlags=0,name="Damage",type="INC",value=135}},nil}
c["你的副手未装备武器时，有 20% 几率躲避攻击击中"]={{[1]={[1]={type="Condition",var="OffHandIsEmpty"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=20}},nil}
c["+23% 冰霜与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=23},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=23}},nil}
c["每 1% 攻击伤害格挡几率 +1% 基础暴击伤害加成"]={{[1]={[1]={div=1,stat="BlockChance",type="PerStat"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=1}},nil}
c["魔力回复速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=15}},nil}
c["获得额外混沌伤害，其数值等同于元素伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=20}},nil}
c["技能可以额外发射 1 个投射物"]={{[1]={flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=1}},nil}
c["魔卫数量上限降低 50%"]={{[1]={flags=0,keywordFlags=0,name="ActiveZombieLimit",type="INC",value=-50}},nil}
c["法术暴击率提高 80%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=80}},nil}
c["4% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["单体近战攻击会对周围目标造成溅射伤害 范围效果扩大 20%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=20}},"单体会对周围目标造成溅射 范围效果 "}c["击中和异常状态对被干扰敌人的伤害提高 80%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Hindered"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=80}},nil}
c["每个轮回球可使攻击和法术附加 13 - 16 基础物理伤害"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=196608,name="PhysicalMin",type="BASE",value=13},[2]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=196608,name="PhysicalMax",type="BASE",value=16}},nil}
c["+40 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=40}},nil}
c["法术附加 388 - 584 基础物理伤害"]={{[1]={flags=0,keywordFlags=131072,name="PhysicalMin",type="BASE",value=388},[2]={flags=0,keywordFlags=131072,name="PhysicalMax",type="BASE",value=584}},nil}
c["敌人被冰缓的持续时间延长 43%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=43}},nil}
c["此物品上装备的【诅咒技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="curse",value=2}}},nil}
c["不受点燃影响"]={nil,"不受点燃影响 "}c["攻击附加 32 - 48 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=32},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=48}},nil}
c["每个轮回球可使攻击和法术附加 14 - 16 基础物理伤害"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=196608,name="PhysicalMin",type="BASE",value=14},[2]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=196608,name="PhysicalMax",type="BASE",value=16}},nil}
c["每个鬼影缠身可使承受的伤害降低 2% 每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾"]={{[1]={flags=0,keywordFlags=262144,name="DamageTaken",type="INC",value=-2}},"每个鬼影缠身可使 每 2 秒获得一个鬼影缠身，最大 3 个 被时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 "}c["每秒回复 0.8% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.8}},nil}
c["火焰、冰霜、闪电伤害的 0.5% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageLifeLeech",type="BASE",value=0.5}},nil}
c["药剂持续期间，物品稀有度提高 60%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=60}},nil}
c["该装备的闪避与能量护盾提高 300%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=300}},nil}
c["法杖攻击的攻击速度提高 15%"]={{[1]={flags=8388609,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["+48% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=48}},nil}
c["魔卫体型增大 25% {variant:1,2,3}魔卫的物理伤害提高 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}}}},"体型增大 25% {variant:1,2,3}魔卫的 "}c["能量护盾启动回复比平常快 40%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=40}},nil}
c["地雷暴击率提高 30%"]={{[1]={flags=0,keywordFlags=8192,name="CritChance",type="INC",value=30}},nil}
c["附加 25 - 50 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=50}},nil}
c["自身的每个增益会为攻击附加 4 - 10 基础火焰伤害"]={{[1]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=4},[2]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=10}},nil}
c["持盾牌时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=25}},nil}
c["-10% 攻击和法术格挡率上限"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceMax",type="BASE",value=-10}},nil}
c["在主手时，每 8 力量提高 1% 伤害"]={{[1]={[1]={num=1,type="SlotNumber"},[2]={div=8,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["+10 力量和敏捷"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=10}},nil}
c["近期内每引爆一个地雷，暴击几率提高 20%，最多 100%"]={{[1]={[1]={limit=100,limitTotal=true,type="Multiplier",var="MineDetonatedRecently"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["双手近战武器攻击造成的晕眩时间延长 20%"]={{[1]={flags=570425344,keywordFlags=0,name="EnemyStunDuration",type="INC",value=20}},nil}
c["格挡攻击时反射 44 物理伤害"]={nil,"格挡攻击时反射 44 物理伤害 "}c["最大生命提高 9%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=9}},nil}
c["法术附加 10 - 120 闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=10},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=120}},nil}
c["药剂持续期间，免疫元素异常状态 药剂持续期间，火焰、冰霜、闪电伤害提高 40% 药剂持续期间，有 20% 几率冰冻，感电和点燃敌人"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=2048,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},"免疫元素  药剂持续期间，有 20% 几率冰冻，感电和点燃敌人 "}c["火焰伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=20}},nil}
c["+100 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=100}},nil}
c["在药剂持续期间，击败敌人会补充 3% 的能量护盾"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=3}},"在击败敌人会补充  "}c["力量需求提高 40%"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="INC",value=40}},nil}
c["投射物可以穿透所有周围目标"]={{[1]={flags=0,keywordFlags=0,name="PierceAllTargets",type="FLAG",value=true}},nil}
c["8% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=8}},nil}
c["药剂持续期间，免疫元素异常状态 药剂持续期间，火焰、冰霜、闪电伤害提高 40%"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=2048,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},"免疫元素  "}c["击中敌人后使其冰缓 1 秒，速度降低 30%"]={{},"敌人后使其冰缓 1 秒，速度 "}c["先祖图腾的激活范围扩大 100%"]={{},"先祖的激活范围 "}c["+120 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=120}},nil}
c["100% 的物理伤害转换为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=100}},nil}
c["16% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=16}},nil}
c["召唤生物的移动速度提高 13%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=13}}}},nil}
c["【冻伤】的魔力保留降低 100%"]={{[1]={[1]={skillName="冻伤",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["击中和异常状态对被干扰敌人的伤害提高 70%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Hindered"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=70}},nil}
c["10% increased Damage per Freeze, Shock and Ignite on Enemy {variant:2}对被冰冻、感电、点燃敌人的击中伤害和异常状态伤害提高 20%"]={{[1]={[1]={type="Multiplier",var="FreezeShockIgniteOnEnemy"},[2]={actor="enemy",type="ActorCondition",varList={[1]="Frozen",[2]="Shocked",[3]="Ignited"}},flags=0,keywordFlags=786432,name="Damage",type="INC",value=20}},"10% increased Damage  {variant:2} "}c["闪电伤害的 0.2% 会转化为能量护盾偷取"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageEnergyShieldLeech",type="BASE",value=0.2}},nil}
c["18% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=18}},nil}
c["药剂持续期间，移动速度提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["受到【优雅】影响时，不受【衰弱】影响 {variant:28}受到【优雅】影响时，有 50% 几率使击中你的敌人致盲"]={{},"不受【衰弱】影响 {variant:28}受到【优雅】影响时，使你的敌人致盲 "}c["该装备的护甲提高 90%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=90}},nil}
c["当你有图腾存在时，范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="HaveTotem"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=25}},nil}
c["攻击和法术附加 2 - 70 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=2},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=70}},nil}
c["总属性每有 250 点，魔力保留降低 1% 分裂之物"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=-1},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=-1},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=-1}},"总每有 250 点，魔力保留 分裂之物 "}c["当你没有损失怒火时，每点怒火使你每秒失去 0.1% 的最大生命"]={{[1]={[1]={stat="Life",type="PerStat"},[2]={limit=50,type="Multiplier",var="Rage"},flags=0,keywordFlags=0,name="LifeDegen",type="BASE",value=0.001}},nil}
c["每级 +1 生命"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="Life",type="BASE",value=1}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 18%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=18}},nil}
c["附加 +1% 攻击和法术基础暴击率"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="BASE",value=1}},nil}
c["+23% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=23}},nil}
c["当精神球失效或被消耗时，回复 3% 生命 每秒获得一个精神球"]={nil,"当精神球失效或被消耗时，回复 3% 生命 每秒获得一个精神球 "}c["攻击和法术附加 30 - 45 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=30},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=45}},nil}
c["+25 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=25},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=25}},nil}
c["移动速度提高 40%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=40}},nil}
c["爪类攻击的伤害提高 12%"]={{[1]={flags=262144,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["锤类和短杖攻击的物理伤害提高 16%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["获得 25 级的主动技能【冰霜净化】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=25,skillId="ColdResistAura"}}},nil}
c["获得 25 级的主动技能【火焰净化】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=25,skillId="FireResistAura"}}},nil}
c["获得 25 级的主动技能【闪电净化】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=25,skillId="LightningResistAura"}}},nil}
c["+28% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=28}},nil}
c["敌人的感电持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=20}},nil}
c["每秒失去 7% 最大魔力"]={{[1]={[1]={stat="Mana",type="PerStat"},flags=0,keywordFlags=0,name="ManaDegen",type="BASE",value=0.07}},nil}
c["攻击造成的物理伤害提高 8%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["最大魔力每有 500 点，则有 2% 几率不被攻击和法术击中，最多 20%"]={{[1]={[1]={div="500",limit=20,limitTotal=true,stat="Mana",type="PerStat"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value="2"},[2]={[1]={div="500",limit=20,limitTotal=true,stat="Mana",type="PerStat"},flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value="2"}},nil}
c["每秒失去 35 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaDegen",type="BASE",value=35}},nil}
c["每秒失去 40 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaDegen",type="BASE",value=40}},nil}
c["非低魔时获得【猛攻】"]={{[1]={[1]={neg=true,type="Condition",var="LowMana"},flags=0,keywordFlags=0,name="Condition:Onslaught",type="FLAG",value=true}},nil}
c["从偷取获取的每秒生命回复提高 20%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=20}},nil}
c["光环技能范围提高 40%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=40}},nil}
c["该装备的闪避与能量护盾提高 160%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=160}},nil}
c["绚丽众星行走特效 塑界之器"]={nil,"绚丽众星行走特效 塑界之器 "}c["受到的物理伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=30}},nil}
c["绚丽众星行走特效"]={nil,"绚丽众星行走特效 "}c["处于【迷踪】状态时，投射物穿透 5 个额外目标"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="PierceCount",type="BASE",value=5}},nil}
c["魔卫的物理伤害提高 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}}}},"的 "}c["Projectiles Pierce while Phasing {variant:2}处于【迷踪】状态时，投射物穿透 5 个额外目标"]={nil,"Projectiles Pierce while Phasing {variant:2}处于【迷踪】状态时，投射物穿透 5 个额外目标 "}c["你技能的光环可使你和周围友方的攻击和施法速度提高 2%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAuraEffect",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=2}}}},nil}
c["每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25% 最多可同时拥有额外 1 个魔像"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使你的 每个召唤的魔像可使它们为你提供的增益效果提高 25% 最多可同时拥有额外 1 个魔像 "}c["击败敌人时有 10% 几率触发 8 级的【召唤愤怒狂灵】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="8",skillId="召唤愤怒狂灵"}}},nil}
c["你每拥有 1 个魔卫，你和你的召唤生物获得 1% 物理伤害减免 你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 【复苏的魔卫】的重击攻击效果范围扩大 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="INC",value=100}}}},"你每拥有 1 个，你和你的 1%  你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 【复苏的魔卫】的重击攻击效果范围 "}c["【迷踪】状态时有 20% 几率躲避投射物 近期内你若有击败敌人，则进入【迷踪】状态"]={{[1]={[1]={type="Condition",var="Phasing"},[2]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=20}},"躲避 进入【迷踪】状态 "}c["每 16 秒获得一次【霸体】，持续 8 秒 当你获得【霸体】时，近距离用弓击中后的总伤害额外提高 30%"]={{},"每 16 秒获得一次【霸体】，持续 8 "}c["伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["每个暴击球可使范围效果的扩大 5%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["被点燃时，获得 100 每秒生命回复"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=100}},nil}
c["该装备的闪避与能量护盾提高 280%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=280}},nil}
c["被点燃时，获得 125 每秒生命回复"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=125}},nil}
c["每个轮回球可使伤害的 0.2% 转化为生命偷取"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.2}},nil}
c["被点燃时移动速度提高 20%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["空手时攻击附加 188 - 563 基础闪电伤害"]={{[1]={flags=16777216,keywordFlags=0,name="LightningMin",type="BASE",value="188"},[2]={flags=16777216,keywordFlags=0,name="LightningMax",type="BASE",value="563"}},nil}
c["持锤时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["药剂持续期间，附加击退效果"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=100}},nil}
c["投射物的伤害随着飞行距离提升，击中目标时最多提高 50%"]={{[1]={[1]={ramp={[1]={[1]=35,[2]=0},[2]={[1]=70,[2]=1}},type="DistanceRamp"},flags=1025,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["物品稀有度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=25}},nil}
c["召唤生物的最大生命提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=8}}}},nil}
c["拥有【鸟之斗魄】时每秒回复 12 魔力"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之斗魄"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=12}},nil}
c["若范围内含有 40 点敏捷，则【燃烧箭矢】有 10% 几率在没有点燃敌人时产生焦油地面"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE",value=10}},"若内含有 40 点，则【燃烧箭矢】在没有点燃敌人时产生焦油地面 "}c["+125 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=125}},nil}
c["+160 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=160}},nil}
c["范围内配置的力量和敏捷总计 40 点时，【元素打击】无法选择闪电元素"]={nil,"范围内配置的力量和敏捷总计 40 点时，【元素打击】无法选择闪电元素 "}c["+40 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=40}},nil}
c["已被诅咒的敌人有 60% 几率被击中后中毒"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Cursed"},flags=0,keywordFlags=262144,name="PoisonChance",type="BASE",value=60}},nil}
c["能量护盾全满时，受到的伤害提高 15%"]={{[1]={[1]={type="Condition",var="FullEnergyShield"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=15}},nil}
c["你的冰霜伤害可以点燃"]={{[1]={flags=0,keywordFlags=0,name="ColdCanIgnite",type="FLAG",value=true}},nil}
c["受到的物理伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=20}},nil}
c["附近至少有一个灵柩时，你和周围友军的总伤害额外提高 10%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="NearbyCorpse"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="MORE",value=10}}}},nil}
c["范围内配置的智慧和敏捷总计 40 点时，【元素打击】无法选择火焰元素"]={nil,"范围内配置的智慧和敏捷总计 40 点时，【元素打击】无法选择火焰元素 "}c["【蛛之势】的减益持续时间提高 45%"]={{[1]={[1]={skillName="蛛之势",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=45}},nil}
c["持盾牌时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["你每击中 1 个被【蜘蛛网】覆盖的敌人，便获得 18 能量护盾"]={{[1]={[1]={actor="enemy",threshold=1,type="MultiplierThreshold",var="Spider's WebStack"},flags=0,keywordFlags=0,name="EnergyShieldOnHit",type="BASE",value=18}},nil}
c["爪类攻击的物理伤害提高 16%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["药剂持续期间，近战物理总伤害额外提高 35%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=256,keywordFlags=0,name="PhysicalDamage",type="MORE",value=35}},nil}
c["【蛛之势】可对敌人额外造成 1 层蜘蛛网"]={{[1]={[1]={skillName="蛛之势",type="SkillName"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="Multiplier:SpiderWebApplyStackMax",type="BASE",value=1}}}},nil}
c["移动技能冷却回复速度提高 10%"]={{[1]={flags=0,keywordFlags=8,name="CooldownRecovery",type="INC",value=10}},nil}
c["你每控制一个魔侍，有 1% 几率格挡攻击伤害"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=1}},"你每控制一个魔侍，伤害 "}c["攻击技能的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=10}},nil}
c["召唤生物获得 0.2% 生命偷取"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.2}}}},nil}
c["+10 敏捷和智慧"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=10}},nil}
c["红色插槽内的技能石 +1 等级"]={{},"红色插槽内的技能石  等级 "}c["+1 长杖的近战攻击范围"]={{[1]={flags=2097152,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1}},nil}
c["持续吟唱时，被击中有 20% 几率获得狂怒球"]={{},"持续吟唱时，被获得狂怒球 "}c["每个生效中的狂怒球给予 1 秒【猛攻】状态"]={nil,"每个生效中的狂怒球给予 1 秒【猛攻】状态 "}c["击败敌人回复 +15 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=15}},nil}
c["每个白色插槽会使防御提高 8%"]={{[1]={[1]={type="Global"},[2]={type="Multiplier",var="WhiteSocketIn{SlotName}"},flags=0,keywordFlags=0,name="Defences",type="INC",value=8}},nil}
c["当你的陷阱触发时，你周围的陷阱也跟着触发"]={nil,"当你的陷阱触发时，你周围的陷阱也跟着触发 "}c["低血时移动速度降低 40%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-40}},nil}
c["当你静止时，每秒获得 1 个狂怒球，耐力球或暴击球"]={nil,"当你静止时，每秒获得 1 个狂怒球，耐力球或暴击球 "}c["对被点燃敌人的伤害提高 33%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=33}},nil}
c["你击败的敌人将会感电"]={nil,"你击败的敌人将会感电 "}c["你所施放诅咒的效果提高 4%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=4}},nil}
c["火焰伤害击中时有 13% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=13}},nil}
c["使用时有 75% 几率使敌人逃跑"]={{},"使用时使敌人逃跑 "}c["中毒伤害提高 8%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=8}},nil}
c["获得护体时，近战物理伤害提高 15%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["法术伤害提高 16%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["当你被击中一次并受到物理伤害时，你只会丢失 7 个【深海屏障】"]={nil,"当你被击中一次并受到物理伤害时，你只会丢失 7 个【深海屏障】 "}c["若近期有引爆过地雷，则地雷所使用的技能范围效果扩大 10%"]={{[1]={[1]={type="Condition",var="DetonatedMinesRecently"},flags=0,keywordFlags=8192,name="AreaOfEffect",type="INC",value=10}},nil}
c["火焰伤害击中时有 7% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=7}},nil}
c["【纯净之捷】的魔力保留降低 40%"]={{[1]={[1]={skillName="纯净之捷",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-40}},nil}
c["你与周围队友共享能量球"]={nil,"你与周围队友共享能量球 "}c["受到【憎恨】影响时，冰霜伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy憎恨"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=60}},nil}
c["自身受到的元素异常状态时间延长 50% 免疫流血"]={{[1]={flags=2048,keywordFlags=0,name="AvoidBleed",type="INC",value=50}},"自身受到的元素时间  "}c["每个影响你的【深渊珠宝】可使最大生命提高 1%"]={{[1]={[1]={type="Multiplier",var="AbyssJewel"},flags=0,keywordFlags=0,name="Life",type="INC",value=1}},nil}
c["自身受到的元素异常状态时间延长 50%"]={{},"自身受到的元素时间 "}c["法术附加 37 - 57 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=37},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=57}},nil}
c["锤类和短杖攻击降低 10% 敌人晕眩门槛"]={{[1]={flags=1048576,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-10}},nil}
c["力量提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=18}},nil}
c["+220 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=220}},nil}
c["近战暴击会造成流血"]={nil,"近战暴击会造成流血 "}c["【优雅】的光环效果提高 60%"]={{[1]={[1]={skillName="优雅",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["受到的闪电总伤害额外降低 20%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageTaken",type="MORE",value=-20}},nil}
c["每个狂怒球可使攻击速度提高 2%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=1,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["攻击速度提高 15%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["【鸟之斗魄】的持续时间 +2 秒 拥有【鸟之斗魄】时每秒回复 100 生命"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之斗魄"},flags=0,keywordFlags=0,name="Duration",type="BASE",value=2}},"【鸟之斗魄】的  秒 每秒回复 100 生命 "}c["【鸟之斗魄】的持续时间 +2 秒"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="BASE",value=2}},"【鸟之斗魄】的  秒 "}c["获得 20 级的主动技能【鸟之势】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="BirdAspect"}}},nil}
c["+30 力量与智慧"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=30}},nil}
c["法术附加 28 - 45 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=28},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=45}},nil}
c["魔像的总伤害额外降低 45%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="MORE",value=-45}}}},nil}
c["+24 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=24}},nil}
c["对燃烧的敌人，+30% 暴击加成"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Burning"},flags=0,keywordFlags=262144,name="CritMultiplier",type="BASE",value=30},[2]={[1]={actor="enemy",type="ActorCondition",var="Burning"},flags=0,keywordFlags=262144,name="4",type="BASE",value=30}},nil}
c["+175 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=175}},nil}
c["低血时免疫晕眩"]={nil,"低血时免疫晕眩 "}c["晕眩和格挡回复降低 50%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-50}},nil}
c["+15 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=15}},nil}
c["命中值提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=16}},nil}
c["闪电伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=18}},nil}
c["插槽内魔像技能攻击和施法速度提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},[2]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=20}}}},nil}
c["药剂持续期间，提高 +50% 混沌抗性"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=50}},nil}
c["3 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=3}},nil}
c["+35 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=35}},nil}
c["每 450 闪避值提高 1% 移动速度，最多 100%"]={{[1]={[1]={div="450",limit=100,limitTotal=true,stat="Evasion",type="PerStat"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value="1"}},nil}
c["该装备的攻击暴击率提高 75%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=75}},nil}
c["烙印技能伤害提高 10%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["附加 56 - 78 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=56},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=78}},nil}
c["受到【奋锐光环】影响时，从能量护盾偷取中获得的每秒最大总恢复量提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy奋锐光环"},flags=0,keywordFlags=0,name="MaxEnergyShieldLeechRate",type="INC",value=30}},nil}
c["击中未被诅咒目标时，有 20% 几率对其施放任意诅咒"]={{},"未被诅咒目标时，对其施放任意诅咒 "}c["击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力"]={nil,"击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力 "}c["攻击造成的物理伤害提高 12%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["狂怒球持续时间缩短 50%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=-50}},nil}
c["法术伤害提高 30%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["闪电伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=25}},nil}
c["该装备的护甲与闪避提高 70%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=70}},nil}
c["受到【闪电净化】影响时，承受的反射闪电伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy闪电净化"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=-50}},"承受的反射 "}c["技能效果持续时间延长 25%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=25}},nil}
c["低血时物品掉落数量提高 13%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=13}},nil}
c["低血时物品掉落数量提高 16%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=16}},nil}
c["该装备的护甲与能量护盾提高 125%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=125}},nil}
c["+8 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=8}},nil}
c["+8 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=8}},nil}
c["该装备的能量护盾提高 65%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=65}},nil}
c["不受腐化地面影响"]={nil,"不受腐化地面影响 "}c["物理伤害的 30% 转换为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=30}},nil}
c["在燃烧地面上的伤害提高 50%"]={{[1]={[1]={type="Condition",var="OnBurningGround"},flags=0,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["+20 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=20}},nil}
c["晕眩门槛提高 20%"]={{[1]={flags=0,keywordFlags=0,name="StunThreshold",type="INC",value=20}},nil}
c["对点燃敌人的击中物理伤害和异常状态伤害提高 85%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=786432,name="PhysicalDamage",type="INC",value=85}},nil}
c["当你的陷阱被敌人触发时，有 15% 几率获得 1 个狂怒球"]={{},"当你的被敌人触发时，获得 1 个狂怒球 "}c["若范围内含有 40 点力量，则周围每有一个敌人，劈砍的攻击半径 +1，最大+10"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE",value=1}},"若内含有 40 点，则周围每有一个敌人，劈砍的攻击半径 ，最大+10 "}c["在感电地面上的移动速度提高 20%"]={{[1]={[1]={type="Condition",var="OnShockedGround"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["溢出伤害的 20% 转为生命偷取 你偷取生命或魔力时，免疫流血"]={nil,"溢出伤害的 20% 转为生命偷取 你偷取生命或魔力时，免疫流血 "}c["击中被诅咒的敌人时造成中毒 {variant:2}已被诅咒的敌人有 60% 几率被击中后中毒"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Cursed"},flags=0,keywordFlags=262144,name="PoisonChance",type="BASE",value=60}},"被诅咒的敌人时 {variant:2}被击中后中毒 "}c["力量提高 5%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=5}},nil}
c["长杖攻击的物理伤害提高 12%"]={{[1]={flags=2097152,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["暴击时有 25% 几率获得暴击球 魔力保留降低 6%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="ManaReserved",type="BASE",value=25}},"获得暴击球 降低 6% "}c["暴击时有 25% 几率获得暴击球"]={{},"获得暴击球 "}c["低血时获得每秒 2% 能量护盾回复"]={nil,"低血时获得每秒 2% 能量护盾回复 "}c["若你有至少 300 点敏捷，则中毒伤害提高 88%"]={{[1]={[1]={stat="Dex",threshold=300,type="StatThreshold"},flags=0,keywordFlags=1048576,name="Damage",type="INC",value=88}},nil}
c["−75% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=-75}},nil}
c["斧类攻击的物理伤害提高 25%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=25}},nil}
c["满血时移动速度提高 20%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["受到防卫技能增益效果影响时，每秒回复 0.5% 最大生命"]={{},"受到防卫技能增益效果影响时，"}c["陷阱伤害提高 35%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=35}},nil}
c["该装备的能量护盾提高 180%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=180}},nil}
c["持续吟唱时，有 10% 几率免疫晕眩"]={{[1]={[1]={type="Condition",var="OnChannelling"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=10}},nil}
c["25% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=25}},nil}
c["+65 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=65}},nil}
c["智慧提高 7%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=7}},nil}
c["当你可能获得暴击球时，有 25% 几率直接获得最大数量的暴击球"]={{},"当你可能获得暴击球时，直接获得最大数量的暴击球 "}c["弓类攻击的伤害提高 24%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["【魔侍造成】的伤害提高 40%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=40}}}},nil}
c["攻击附加 1 - 30 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=30}},nil}
c["物理伤害提高 155%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=155}},nil}
c["被击中时， 4 秒内回复等同于 10% 伤害的魔力"]={nil,"被击中时， 4 秒内回复等同于 10% 伤害的魔力 "}c["最大能量护盾提高 12%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=12}},nil}
c["有 50% 几率感电已被冰缓的敌人"]={{},"感电已 "}c["附加 60 - 140 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=60},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=140}},nil}
c["有 10% 几率在你获得 1 个【深海屏障】时，直接获得最大上限的【深海屏障】"]={{},"在你获得 1 个【深海屏障】时，直接获得最大上限的【深海屏障】 "}c["击中和异常状态对流血敌人的伤害提高 45%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=45}},nil}
c["获得【猛攻】时闪避值提高 100%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=100}},nil}
c["双持时攻击伤害格挡几率提高 5%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["暴击时触发【炼狱之诫】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,noSupports=true,skillId="EnchantmentOfInfernoOnKill4"}}},nil}
c["被击中时，每个耐力球可使你获得 1 秒的【猛攻】状态 {variant:2}被击中时，每个耐力球可使你获得 2 秒的【猛攻】状态"]={{},"被时， 秒的【猛攻】状态 {variant:2}被击中时，你获得 2 秒的【猛攻】状态 "}c["移动速度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=50}},nil}
c["回复量提高 100%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecovery",type="INC",value=100}},nil}
c["力量提高 17%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=17}},nil}
c["每 10 点敏捷提高 +2 最大生命"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="Life",type="BASE",value=2}},nil}
c["爪类攻击的攻击速度提高 15%"]={{[1]={flags=262145,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["移动时每秒回复 100 生命"]={{[1]={[1]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=100}},nil}
c["闪避值提高 130%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=130}},nil}
c["受到【活力】影响时， 每秒回复 140 生命"]={{[1]={[1]={type="Condition",var="AffectedBy活力"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=140}},nil}
c["若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 25% 几率获得耐力球 {variant:3}若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 35% 几率获得耐力球"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE",value=25}},"若内含有 40 点，【裂地之击】在晕眩敌人时获得耐力球 {variant:3}若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 35% 几率获得耐力球 "}c["45% 几率免疫流血"]={{[1]={flags=0,keywordFlags=0,name="AvoidBleed",type="BASE",value=45}},nil}
c["持续吟唱时，有 20% 几率免疫晕眩"]={{[1]={[1]={type="Condition",var="OnChannelling"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=20}},nil}
c["免疫燃烧地面，感电地面和冰缓地面 移动时每秒回复 100 生命"]={nil,"免疫燃烧地面，感电地面和冰缓地面 移动时每秒回复 100 生命 "}c["受到的元素伤害降低 5%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=-5}},nil}
c["被击中时有 30% 几率获得耐力球 获得耐力球时有 25% 几率转而以提升你的耐力球上限"]={{},"被时获得耐力球 获得耐力球时有 25% 几率转而以提升你的耐力球上限 "}c["若范围内含有 40 点力量，\n则【劈砍】击中时获得护体效果 {variant:1}若范围内含有 40 点力量，则周围每有一个敌人，劈砍的范围扩大 3%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=3}},"若内含有 40 点，\n则【劈砍】击中时获得护体效果 {variant:1}若范围内含有 40 点力量，则周围每有一个敌人，劈砍的范围 "}c["+45 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=45}},nil}
c["用 8000 枚金币纪念切特斯"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC切特斯",type="FLAG",value=true}},nil}
c["近期内你若打出过暴击，则攻击速度提高 12%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=1,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["投掷陷阱时移动速度提高 30%，持续 9 秒 {variant:2}投掷陷阱时移动速度提高 15%，持续 9 秒"]={{[1]={flags=0,keywordFlags=4096,name="MovementSpeed",type="INC",value=30}},"投掷时，持续 9 秒 {variant:2}投掷陷阱时移动速度提高 15%，持续 9 秒 "}c["持剑时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=25}},nil}
c["攻击伤害的 0.3% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.3}},nil}
c["闪避值提高 200%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=200}},nil}
c["对低血敌人，每个狂怒球可使伤害提高 3%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},[2]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=3}},nil}
c["瘀血爪印 {variant:1}对低血敌人，每个狂怒球可使伤害提高 3%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},[2]={type="Multiplier",var="FrenzyCharge"},flags=262144,keywordFlags=262144,name="Damage",type="INC",value=3}},"瘀血印 {variant:1} "}c["偷取时伤害提高 20%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["近期内你若有消耗灵柩，则伤害提高 40%"]={{[1]={[1]={type="Condition",var="ConsumedCorpseRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 每个狂怒球可使伤害提高 5% 每个暴击球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},[2]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 提高 5% 伤害提高 5% "}c["击败敌人后有 30% 几率获得 1 个狂怒球"]={{},"击败敌人后获得 1 个狂怒球 "}c["每个狂怒球每秒回复 1% 生命"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=1}},nil}
c["装备 5 个被腐化物品时：受到混沌伤害的 50% 由能量护盾承受，受到物理伤害的 50% 会穿透能量护盾 已腐化"]={nil,"装备 5 个被腐化物品时：受到混沌伤害的 50% 由能量护盾承受，受到物理伤害的 50% 会穿透能量护盾 已腐化 "}c["武器造成的伤害穿透 6% 火焰、冰霜、闪电抗性"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalPenetration",type="BASE",value=6}},nil}
c["16% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=16}},nil}
c["火焰伤害击中时有 8% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=8}},nil}
c["冰霜伤害击中时有 2% 的几率冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=2}},nil}
c["攻击击中有 5% 几率使敌人致盲"]={{}," 使敌人致盲 "}c["每 10 点力量可以为攻击附加 1 - 2 基础火焰伤害"]={{[1]={[1]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=1},[2]={[1]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=2}},nil}
c["每 10 点奉献使召唤生物的命中值 +60"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=60}}}},nil}
c["+10 最大挑战球数量上限"]={{[1]={flags=0,keywordFlags=0,name="ChallengerChargesMax",type="BASE",value=10}},nil}
c["从偷取获取的每秒生命回复提高 100%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=100}},nil}
c["投射物攻击伤害提高 10%"]={{[1]={flags=1025,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["赞美 10000 名被高阶圣堂武僧神主转化的新信徒"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC神主",type="FLAG",value=true}},nil}
c["当你击败 1 名点燃敌人，对周围敌人造成相同的点燃效果"]={nil,"当你击败 1 名点燃敌人，对周围敌人造成相同的点燃效果 "}c["装备的护盾上每有 5 点闪避值，便 +5 护甲"]={{[1]={[1]={div=5,stat="EvasionOnWeapon 2",type="PerStat"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=5}},nil}
c["嘲讽持续时间延长 20% "]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=20}},"嘲讽  "}c["击败敌人有 20% 几率获得狂怒球 击中稀有或传奇敌人时，有 20% 几率获得 1 个狂怒球 +1 狂怒球数量上限"]={{[1]={flags=0,keywordFlags=262144,name="FrenzyChargesMax",type="BASE",value=20}},"击败敌人获得狂怒球 稀有或传奇敌人时，有 20% 几率获得 1 个狂怒球 +1  "}c["护甲提高 65%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=65}},nil}
c["双持攻击时武器暴击率提高 20%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["在冰缓地面上每秒回复 2% 生命"]={{[1]={[1]={type="Condition",var="OnChilledGround"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["每个耐力球可使物理伤害提高 7%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=7}},nil}
c["你的召唤生物死亡时产生腐蚀地面，每秒造成等同它们 20% 最大生命的混沌伤害"]={nil,"你的死亡时产生腐蚀地面，每秒造成等同它们 20% 最大生命的混沌伤害 "}c["+96 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=96}},nil}
c["斧类攻击的攻击速度提高 8%"]={{[1]={flags=65537,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["击中点燃敌人时附加 3 - 70 基础闪电伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="LightningMin",type="BASE",value=3},[2]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=262144,name="LightningMax",type="BASE",value=70}},nil}
c["不受燃烧地面影响"]={nil,"不受燃烧地面影响 "}c["攻击附加 5 - 10 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=10}},nil}
c["受到【纪律】影响时，每击中一个敌人便会获得 +30 能量护盾"]={{[1]={[1]={type="Condition",var="AffectedBy纪律"},flags=0,keywordFlags=0,name="EnergyShieldOnHit",type="BASE",value=30}},nil}
c["物理伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["范围内含的力量和智慧总计 40 点时，【元素打击】的总冰霜伤害额外降低 50% {variant:2}攻击技能的元素伤害提高 15%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE"},[2]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内含的总计 40 {variant:2}攻击技能的元素伤害提高 15% "}c["此物品上装备的【召唤生物技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="minion",value=2}}},nil}
c["此物品上装备的【光环技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="aura",value=2}}},nil}
c["+50 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=50},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=50}},nil}
c["当你获得【火之化身】时，暴击率提高 120%"]={{[1]={[1]={type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=120}},nil}
c["冰霜伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=50}},nil}
c["受到【雷霆】影响时，40% 的物理伤害转化为闪电伤害"]={{[1]={[1]={type="Condition",var="AffectedBy雷霆"},flags=0,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=40}},nil}
c["被攻击击中时，有 50% 几率流血 瘀血爪印"]={{},"被击中时，流血 瘀血爪印 "}c["每 1 个召唤出的不同魔像可使魔像伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HavePhysicalGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}},[2]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveLightningGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}},[3]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveColdGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}},[4]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveFireGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}},[5]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveChaosGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}},[6]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveCarrionGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},nil}
c["静止时受到的物理伤害降低 10%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="PhysicalDamageTaken",type="INC",value=-10}},nil}
c["地雷放置后 5 秒内不会损坏"]={nil,"地雷放置后 5 秒内不会损坏 "}c["每 16 秒获得一次【元素超载】，持续 8 秒"]={nil,"每 16 秒获得一次【元素超载】，持续 8 秒 "}c["流血时击中敌人将获得 1 个狂怒球"]={nil,"流血时击中敌人将获得 1 个狂怒球 "}c["被攻击击中时，有 50% 几率流血"]={{},"被击中时，流血 "}c["捷光环的魔力保留总是 45%"]={{[1]={[1]={skillType=63,type="SkillType"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=45}}},nil}
c["获得等同 30% 魔力的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ManaGainAsEnergyShield",type="BASE",value=30}},nil}
c["流血状态下移动不再承受额外的伤害 流血时移动速度提高 15%"]={{},"状态下移动不再承受"}c["+26% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=26}},nil}
c["+55% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=55}},nil}
c["弓类攻击造成的晕眩时间延长 20%"]={{[1]={flags=131072,keywordFlags=0,name="EnemyStunDuration",type="INC",value=20}},nil}
c["与周围队友分享耐力、狂怒与暴击球"]={nil,"与周围队友分享耐力、狂怒与暴击球 "}c["双持时法术伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=4}},nil}
c["若你拥有 10 个以上的【深海屏障】，则无法被晕眩"]={{[1]={[1]={stat="CrabBarriers",threshold=10,type="StatThreshold"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["该装备的护甲与能量护盾提高 275%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=275}},nil}
c["该装备的护甲与能量护盾提高 300%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=300}},nil}
c["若你有至少 300 点敏捷，则中毒伤害提高 100%"]={{[1]={[1]={stat="Dex",threshold=300,type="StatThreshold"},flags=0,keywordFlags=1048576,name="Damage",type="INC",value=100}},nil}
c["+10 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=10}},nil}
c["此物品上的技能石受到 25 级的 【祝福】 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=25,skillId="SupportAuraDuration"}}},nil}
c["无法被击退"]={nil,"无法被击退 "}c["闪避值提高 160%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=160}},nil}
c["周围敌人击中造成的伤害特别幸运 移动速度提高 8%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=8}},"周围敌人造成的特别幸运 移动速度 "}c["周围敌人击中造成的伤害特别幸运"]={nil,"周围敌人击中造成的伤害特别幸运 "}c["范围伤害提高 20%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["敌人击中你的闪电伤害会特别幸运 +50 敏捷"]={{[1]={flags=0,keywordFlags=262144,name="LightningDamage",type="BASE",value=50}},"敌人你的会特别幸运  敏捷 "}c["防卫技能冷却回复速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=15}},"防卫技能 "}c["敌人击中你的闪电伤害会特别幸运"]={nil,"敌人击中你的闪电伤害会特别幸运 "}c["【嫉妒】不保留魔力"]={{[1]={[1]={skillName="嫉妒",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["你被点燃的持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="INC",value=100}},"你被的持续时间 "}c["剑类攻击的物理伤害提高 12%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["+13 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=13}},nil}
c["锤类攻击的命中值提高 6%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["范围效果扩大 10%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},nil}
c["【坚定】不保留魔力"]={{[1]={[1]={skillName="坚定",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["+30% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=30}},nil}
c["当插槽内有 1 个【凶残之凝】珠宝时，攻击击中敌人会恐吓它们 4 秒"]={nil,"当插槽内有 1 个【凶残之凝】珠宝时，攻击击中敌人会恐吓它们 4 秒 "}c["周围敌人的晕眩和格挡回复降低 10%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=-10}},"周围敌人的 "}c["召唤生物的伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=30}}}},nil}
c["过去 10 秒内你若成功格挡，则你和周围友军无法被晕眩 近期内你若有进行攻击，你和周围友军有 +10% 几率格挡攻击伤害 近期内你若有施放法术，你和周围友军有 +10% 几率格挡法术伤害"]={{[1]={flags=1,keywordFlags=0,name="BlockChance",type="BASE",value=10}},"过去 10 秒内你若成功格挡，则你和周围友军无法被晕眩 近期内你若有进行，你和周围友军伤害 近期内你若有施放法术，你和周围友军有 +10% 几率格挡法术伤害 "}c["【优雅】不保留魔力"]={{[1]={[1]={skillName="优雅",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["冰霜伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=30}},nil}
c["已腐化时仍可以修改 当物品有本词缀时可以有最多 5 个固定基底词缀"]={nil,"已腐化时仍可以修改 当物品有本词缀时可以有最多 5 个固定基底词缀 "}c["总能量护盾每秒回复额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRegen",type="MORE",value=-50}},nil}
c["【迅捷】不保留魔力"]={{[1]={[1]={skillName="迅捷",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["10% 的伤害优先从魔力扣除"]={{[1]={flags=0,keywordFlags=0,name="DamageTakenFromManaBeforeLife",type="BASE",value=10}},nil}
c["此物品上的技能石受到 18 级的 附加闪电伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportAddedLightningDamage"}}},nil}
c["击败周围敌人后药剂充能获取提高 25% {variant:1}【憎恨】不保留魔力"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=25}},"击败周围敌人后 {variant:1}【憎恨】不保留魔力 "}c["你的攻击击中每个敌人会回复 +15 魔力"]={{[1]={flags=1,keywordFlags=0,name="ManaOnHit",type="BASE",value=15}},nil}
c["每个再生腐尸可使伤害提高 8% 每有 1 个再生腐尸，承受的元素总伤害额外降低 1%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=8}},"每个再生腐尸可使 每有 1 个再生腐尸，承受的元素总伤害额外降低 1% "}c["【奋锐光环】不保留魔力"]={{[1]={[1]={skillName="奋锐光环",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["【元素净化】不保留魔力"]={{[1]={[1]={skillName="元素净化",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["闪避值提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=40}},nil}
c["生命回满时不会取消生命偷取效果 偷取时攻击伤害提高 50%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=1,keywordFlags=0,name="Life",type="INC",value=50}},"回满时不会取消生命偷取效果 伤害 "}c["召唤生物有 +9% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=9}}}},nil}
c["+1 灵体数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveSpectreLimit",type="BASE",value=1}},nil}
c["你的元素魔像免疫火焰、冰霜、闪电伤害"]={nil,"你的元素免疫火焰、冰霜、闪电伤害 "}c["击败敌人会扣除自身 1% 最大生命 击败敌人会扣除自身 1% 最大能量护盾"]={nil,"击败敌人会扣除自身 1% 最大生命 击败敌人会扣除自身 1% 最大能量护盾 "}c["装备和技能石的属性需求提高 50%"]={{[1]={flags=0,keywordFlags=0,name="GlobalAttributeRequirements",type="INC",value=50}},nil}
c["击败时，回复 2% 能量护盾"]={nil,"击败时，回复 2% 能量护盾 "}c["+8 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=8},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=8},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=8}},nil}
c["附加 53 - 60 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=53},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=60}},nil}
c["附加 2 - 50 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=2},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=50}},nil}
c["+110 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=110}},nil}
c["附加 25 - 36 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=36}},nil}
c["敌人身上的非伤害异常状态效果提高 30%"]={{[1]={flags=2048,keywordFlags=0,name="EnemyShockEffect",type="INC",value=30},[2]={flags=2048,keywordFlags=0,name="EnemyChillEffect",type="INC",value=30},[3]={flags=2048,keywordFlags=0,name="EnemyFreezeEffech",type="INC",value=30}},nil}
c["近期内你若使用过瓦尔技能，则移动速度提高 10%"]={{[1]={[1]={type="Condition",var="UsedVaalSkillRecently"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["近期内你若使用过瓦尔技能，则击中每个敌人回复 10 生命 近期内你若使用过瓦尔技能，则移动速度提高 10%"]={{[1]={[1]={type="Condition",var="UsedVaalSkillRecently"},[2]={type="Condition",var="UsedVaalSkillRecently"},flags=0,keywordFlags=262144,name="Life",type="INC",value=10}},"每个敌人回复 10  移动速度 "}c["近期内你若使用过瓦尔技能，则击中每个敌人回复 10 生命"]={nil,"近期内你若使用过瓦尔技能，则击中每个敌人回复 10 生命 "}c["你使用瓦尔技能时获得 1 个暴击球"]={nil,"你使用瓦尔技能时获得 1 个暴击球 "}c["持斧时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["附加 3 - 52 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=3},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=52}},nil}
c["敌人晕眩门槛降低 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-10}},nil}
c["+24 敏捷和智慧"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=24}},nil}
c["格挡时永久恐吓敌人"]={nil,"格挡时永久恐吓敌人 "}c["附加 27 - 38 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=27},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=38}},nil}
c["驱散燃烧"]={nil,"驱散燃烧 "}c["该装备的能量护盾提高 260%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=260}},nil}
c["施法时有 25% 几率免疫晕眩打断"]={{},"施法时免疫晕眩打断 "}c["近期内你若有召唤图腾，攻击和法术暴击率提高 100%"]={{[1]={[1]={type="Global"},[2]={type="Condition",var="SummonedTotemRecently"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=100}},nil}
c["魔像的总伤害额外降低 40%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="MORE",value=-40}}}},nil}
c["近战攻击暴击率提高 25%"]={{[1]={flags=257,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["每装备 1 个未腐化的物品，获得 15 每秒生命回复"]={nil,"每装备 1 个未腐化的物品，获得 15 每秒生命回复 "}c["不受冰缓地面影响"]={nil,"不受冰缓地面影响 "}c["你无法拥有非魔像类召唤生物 魔像体型缩小 25%"]={{},"你无法拥有非类召唤生物 魔像体型 "}c["召唤生物命中值提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=30}}}},nil}
c["你无法拥有非魔像类召唤生物"]={nil,"你无法拥有非类召唤生物 "}c["该装备的护甲与闪避提高 90%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=90}},nil}
c["近战单手武器的攻击暴击率提高 40%"]={{[1]={flags=301989889,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["击败敌人回复 +20 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=20}},"击败敌人回复   "}c["攻击速度提高 9%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=9}},nil}
c["获得等级 20 的【骨制战甲】技能 每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=20}}}},"获得等级 【骨制战甲】技能 每拥有一个，获得 1% ，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20% "}c["闪电伤害击中时有 8% 几率使敌人受到感电效果影响"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=8}},nil}
c["你的火焰、冰霜、闪电伤害可以造成感电"]={{[1]={flags=0,keywordFlags=0,name="ColdCanShock",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="FireCanShock",type="FLAG",value=true}},nil}
c["爪类攻击的攻击速度提高 3%"]={{[1]={flags=262145,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["敌人身上每个诅咒可使击中和异常状态的伤害提高 20%"]={{[1]={[1]={type="Multiplier",var="CurseOnEnemy"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=20}},nil}
c["敌人被冰缓的持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=30}},nil}
c["受到【清晰】影响时，被击中时， 4 秒内回复等同于 20% 伤害的魔力 {variant:12}受到【清晰】影响时，魔力回复速度提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=30}},"被时， 4 秒内回复等同于 20% 的魔力 {variant:12}受到【清晰】影响时，魔力回复速度 "}c["+10% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=10}},nil}
c["技能魔力消耗降低 20%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-20}},nil}
c["持长杖时，施法速度提高 3%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=16,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["被击中时让敌人受到【灰烬缠身】"]={nil,"被击中时让敌人受到【灰烬缠身】 "}c["冰冻时每秒回复 20% 生命"]={{[1]={[1]={type="Condition",var="Frozen"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=20}},nil}
c["击败流血的敌人时产生爆炸，造成等同其 5% 最大生命的物理伤害"]={nil,"击败流血的敌人时产生爆炸，造成等同其 5% 最大生命的物理伤害 "}c["技能效果持续时间缩短 10%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-10}},nil}
c["你可以对单一敌人造成最多 300 个点燃状态"]={nil,"你可以对单一敌人造成最多 300 个点燃状态 "}c["暴击球的持续时间缩短 30%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=-30}},nil}
c["格挡攻击时反射 1 - 220 闪电伤害"]={nil,"格挡攻击时反射 1 - 220 闪电伤害 "}c["攻击附加 10 - 25 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=25}},nil}
c["击中时有 25% 几率嘲讽敌人"]={{},"时嘲讽敌人 "}c["Critical Strikes deal 50% increased Lightning Damage {variant:2}闪电伤害提高 50%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=50}},"50% increased Lightning Damage {variant:2} "}c["+150 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=150}},nil}
c["--30% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=-30}},"-  "}c["近期每击败一个敌人，范围效果提高 5%，最大 50%"]={{[1]={[1]={limit=50,limitTotal=true,type="Multiplier",var="EnemyKilledRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["当你总计消耗超过 800 点魔力后，获得 +2% 攻击和法术基础暴击率，持续 2 秒"]={{[1]={flags=1,keywordFlags=0,name="Mana",type="BASE",value=2}},"当你总计消耗超过 800 点后， 和法术基础暴击率，持续 2 秒 "}c["此物品上的技能石受到 1 级的 冰霜穿透 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportColdPenetration"}}},nil}
c["+15 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=15},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=15}},nil}
c["身体护甲上每有 6 点闪避值，便 +1 最大能力护盾"]={{[1]={[1]={div=6,stat="EvasionOnBody Armour",type="PerStat"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=1}},nil}
c["+2% 持续中毒伤害加成"]={{[1]={flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=2}},nil}
c["每个暴击球可使投射物伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=1024,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["每个狂怒球可使投射物速度提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=5}},nil}
c["该装备的闪避与能量护盾提高 225%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=225}},nil}
c["击败敌人后有 10% 几率获得 1 个狂怒球 击败敌人有 10% 几率获得暴击球"]={{},"击败敌人后获得 1 个狂怒球 击败敌人有 10% 几率获得暴击球 "}c["若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 25% 几率获得耐力球"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE",value=25}},"若内含有 40 点，【裂地之击】在晕眩敌人时获得耐力球 "}c["药剂持续期间提高 100% 其他药剂获得的充能"]={{},"药剂持续期间 其他药剂获得的充能 "}c["持斧时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["击败敌人后有 10% 几率获得 1 个狂怒球"]={{},"击败敌人后获得 1 个狂怒球 "}c["附加 53 - 76 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=53},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=76}},nil}
c["附加 63 - 98 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=63},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=98}},nil}
c["晕眩回复和格挡回复提高 13%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=13}},nil}
c["召唤生物移动时不再承受流血的额外伤害"]={nil,"移动时不再承受流血的额外伤害 "}c["附加 13 - 19 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=19}},nil}
c["+12 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=12}},nil}
c["移动速度降低 20%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-20}},nil}
c["−50% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=-50}},nil}
c["攻击附加 36 - 50 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=36},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=50}},nil}
c["护甲提高 625%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=625}},nil}
c["获得 10 级的主动技能【元素净化】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,skillId="Purity"}}},nil}
c["+30 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=30}},nil}
c["击中低血的敌人时，伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=30}},nil}
c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100% 战吼冷却回复速度提高 100% 使用战吼时获得 5 怒火"]={{[1]={flags=0,keywordFlags=4,name="Life",type="INC",value=100}},"施放时回复 25% 和魔力 战吼持续时间 战吼冷却回复速度提高 100% 使用战吼时获得 5 怒火 "}c["14% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=14}},nil}
c["锤类攻击的命中值提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["+14% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=14}},nil}
c["诅咒范围扩大 60%"]={{[1]={flags=0,keywordFlags=2,name="AreaOfEffect",type="INC",value=60}},nil}
c["+13 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=13}},nil}
c["召唤生物的最大生命提高 13%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=13}}}},nil}
c["对流血敌人的击中火焰伤害和异常状态伤害提高 85%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=786432,name="FireDamage",type="INC",value=85}},nil}
c["召唤生物的移动速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}}}},nil}
c["拥有 1 个深渊插槽"]={{[1]={flags=0,keywordFlags=0,name="AbyssalSocketCount",type="BASE",value=1}},nil}
c["召唤生物附加 (5–9) - (11–15) 基础冰霜伤害"]={nil,"附加 (5–9) - (11–15) 基础冰霜伤害 "}c["周围友军获得 40% 魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=40},onlyAllies=true}}},nil}
c["当攻击使怪物点燃时，获得 1 个狂怒球"]={nil,"当攻击使怪物点燃时，获得 1 个狂怒球 "}c["周围友军获得每秒回复 1% 生命"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1},onlyAllies=true}}},nil}
c["对爪类武器的攻击暴击率加成同时套用于空手攻击暴击率上"]={{[1]={flags=0,keywordFlags=0,name="ClawCritChanceAppliesToUnarmed",type="FLAG",value=true}},nil}
c["15 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=15}},nil}
c["对爪类武器的伤害加成同时套用于空手攻击伤害上"]={{[1]={flags=0,keywordFlags=0,name="ClawDamageAppliesToUnarmed",type="FLAG",value=true}},nil}
c["狂怒球持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=20}},nil}
c["敌人身上每层穿刺效果可以为你和周围友军附加 6 - 12 物理伤害"]={{[1]={[1]={actor="enemy",type="Multiplier",var="ImpaleStack"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=6}}},[2]={[1]={actor="enemy",type="Multiplier",var="ImpaleStack"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=12}}}},nil}
c["攻击速度提高 18%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=18}},nil}
c["空手攻击时攻击和法术基础暴击率 +7%"]={{[1]={flags=16777216,keywordFlags=0,name="CritChance",type="BASE",value=7}},nil}
c["+30 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=30}},nil}
c["拥有【秘术增强】时免疫元素异常状态"]={nil,"拥有【秘术增强】时免疫元素异常状态 "}c["免疫流血"]={{[1]={flags=0,keywordFlags=0,name="AvoidBleed",type="BASE",value=100}},nil}
c["+8% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=8}},nil}
c["使用时获得 1 个暴击球"]={nil,"使用时获得 1 个暴击球 "}c["该装备的闪避与能量护盾提高 100%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=100}},nil}
c["冰霜伤害击中时有 10% 的几率冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=10}},nil}
c["Grants 1 Passive Skill Point"]={{[1]={flags=0,keywordFlags=0,name="ExtraPoints",type="BASE",value=1}},nil}
c["持续吟唱技能的攻击速度提高 3%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["当你拥有兽化的召唤生物时，投射物攻击击中时有 20% 几率造成瘫痪"]={{[1]={[1]={type="Condition",var="HaveBestialMinion"},flags=1,keywordFlags=0,name="ProjectileCount",type="BASE",value=20}},"击中时造成瘫痪 "}c["5% 几率造成冰冻、感电与点燃效果"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=5},[3]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=5}},nil}
c["装备和技能石的属性需求降低 10%"]={{[1]={flags=0,keywordFlags=0,name="GlobalAttributeRequirements",type="INC",value=-10}},nil}
c["击败敌人会回复自身 1% 最大魔力 击败敌人会扣除自身 1% 最大生命"]={nil,"击败敌人会回复自身 1% 最大魔力 击败敌人会扣除自身 1% 最大生命 "}c["此物品上的技能石受到 10 级的 晕眩时施放 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportCastOnStunned"}}},nil}
c["击败敌人时有 10% 几率获得 1 个随机能量球 能量连接"]={{},"击败敌人时获得 1 个随机能量球 能量连接 "}c["此物品上的技能石受到 10 级的 致盲 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportBlind"}}},nil}
c["此物品上的技能石受到 15 级的 附加混沌伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=15,skillId="SupportAddedChaosDamage"}}},nil}
c["可以对敌人附着 1 个额外烙印"]={nil,"可以对敌人附着 1 个额外烙印 "}c["25% 的物理伤害转换为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=25}},nil}
c["你的攻击和法术无法被闪避"]={{[1]={flags=0,keywordFlags=0,name="CannotBeEvaded",type="FLAG",value=true}},nil}
c["此物品上的技能石受到 10 级的 附加混沌伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportAddedChaosDamage"}}},nil}
c["此物品上装备的技能石等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="all",value=2}}},nil}
c["附加 75 - 220 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=75},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=220}},nil}
c["该装备的闪避与能量护盾提高 155%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=155}},nil}
c["固定基底词缀三倍效果加成 已腐化"]={nil,"固定基底词缀三倍效果加成 已腐化 "}c["伤害提高 35%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=35}},nil}
c["+225% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=225}},nil}
c["爪类攻击 +20% 暴击伤害加成"]={{[1]={flags=262144,keywordFlags=0,name="CritMultiplier",type="BASE",value=20}},nil}
c["你仅可以拥有一个非旗帜光环"]={nil,"你仅可以拥有一个非旗帜光环 "}c["攻击和法术总暴击率额外降低 60%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="MORE",value=-60}},nil}
c["3 每秒魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=3}},nil}
c["非暴击造成 40% 伤害 {variant:1}攻击和法术总暴击率额外降低 60%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE"}},"非暴击造成 40%  {variant:1 "}c["非暴击造成 40% 伤害"]={nil,"非暴击造成 40% 伤害 "}c["+35 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=35}},nil}
c["非暴击造成 25% 伤害"]={nil,"非暴击造成 25% 伤害 "}c["附近最多只有 1 个稀有或传奇敌人时，总伤害额外提高 20% 附近最少有 2 个稀有或传奇敌人时，承受的伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="MORE"}},"附近最多只有 1 附近最少有 2 个稀有或传奇敌人时，降低 10% "}c["受到的暴击伤害降低 30% +40 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-30}},"受到的暴击 +40 最大生命 "}c["静止时魔力回复提高 60%"]={{[1]={[1]={type="Condition",var="Stationary"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=60}},nil}
c["法术附加 240 - 325 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=240},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=325}},nil}
c["每秒获得一个幽灵护罩，最大 3 个"]={nil,"每秒获得一个幽灵护罩，最大 3 个 "}c["零点射击"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="零点射击"}},nil}
c["空手时范围效果扩大 15%"]={{[1]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=15}},nil}
c["每个暴击球可使中毒持续时间延长 3%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=3}},nil}
c["击败少于 5 层中毒状态的敌人时，有 15% 几率获得 1 个暴击球"]={{},"击败少于 5 层状态的敌人时，获得 1 个暴击球 "}c["击败中毒 5 层以上的敌人时，有 30% 几率获得 1 个狂怒球 击败少于 5 层中毒状态的敌人时，有 15% 几率获得 1 个暴击球"]={{},"击败 5 层以上的敌人时，获得 1 个狂怒球 击败少于 5 层中毒状态的敌人时，有 15% 几率获得 1 个暴击球 "}c["击败中毒 5 层以上的敌人时，有 30% 几率获得 1 个狂怒球"]={{},"击败 5 层以上的敌人时，获得 1 个狂怒球 "}c["持续伤害效果提高 35%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=35}},nil}
c["陷阱投掷后 5 秒内不会损坏 地雷放置后 5 秒内不会损坏"]={nil,"陷阱投掷后 5 秒内不会损坏 地雷放置后 5 秒内不会损坏 "}c["附加 18 - 26 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=18},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=26}},nil}
c["匕首攻击的物理伤害提高 20%"]={{[1]={flags=524288,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["战吼冷却回复速度提高 100%"]={{[1]={flags=0,keywordFlags=4,name="CooldownRecovery",type="INC",value=100}},nil}
c["击败稀有或者传奇敌人时，获得【癫狂】状态 10 秒 裂界之器"]={nil,"击败稀有或者传奇敌人时，获得【癫狂】状态 10 秒 裂界之器 "}c["力量不对最大生命提供加成"]={{[1]={flags=0,keywordFlags=0,name="NoStrBonusToLife",type="FLAG",value=true}},nil}
c["附加 20 - 35 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=35}},nil}
c["不能偷取生命"]={{[1]={flags=0,keywordFlags=0,name="CannotLeechLife",type="FLAG",value=true}},nil}
c["【导电】的魔力保留降低 100%"]={{[1]={[1]={skillName="导电",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["【易燃】的魔力保留降低 100%"]={{[1]={[1]={skillName="易燃",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["击中时有 10% 几率对敌人施放 1 个随机诅咒 {variant:2}击中未被诅咒目标时，有 20% 几率对其施放任意诅咒"]={{},"时对敌人施放 1 个随机诅咒 {variant:2}击中未被诅咒目标时，有 20% 几率对其施放任意诅咒 "}c["法术范围效果扩大 10%"]={{[1]={flags=2,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},nil}
c["每 16 秒获得一次【霸体】，持续 8 秒"]={nil,"每 16 秒获得一次【霸体】，持续 8 秒 "}c["陷阱有 12% 几率额外触发一次"]={{},"额外触发一次 "}c["附加 13 - 47 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=47}},nil}
c["附加 24 - 36 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=36}},nil}
c["附加 24 - 36 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=36}},nil}
c["附加 16 - 25 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=16},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=25}},nil}
c["5 最大虚空之矢数量 {variant:1}每秒获得 1 个虚空之矢"]={nil,"5 最大虚空之矢数量 {variant:1}每秒获得 1 个虚空之矢 "}c["地雷伤害提高 14%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=14}},nil}
c["对致盲敌人的伤害穿透 10% 火焰抗性"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="FirePenetration",type="BASE",value=10}},nil}
c["近战暴击会造成流血 {variant:2}暴击时有 50% 几率造成流血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=50}},"暴击会 {variant:2}造成流血 "}c["心灵幻化"]={{[1]={flags=0,keywordFlags=0,name="TransfigurationOfMind",type="FLAG",value=true}},nil}
c["+125 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=125}},nil}
c["+125 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=125}},nil}
c["【猛攻】效果提高 20%"]={{[1]={flags=0,keywordFlags=0,name="OnslaughtEffect",type="INC",value=20}},nil}
c["+20% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=20}},nil}
c["持续时间缩短 50%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-50}},nil}
c["攻击附加 12 - 24 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=12},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=24}},nil}
c["拥有【猫之隐匿】时，你的攻击必定造成流血"]={{[1]={[1]={type="Condition",var="AffectedBy猫之隐匿"},flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=100}},nil}
c["8% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=8}},nil}
c["灵体的暴击率提高 900%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CritChance",type="INC",value=900}}}},nil}
c["对冰缓敌人穿透其 20% 冰霜抗性"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="ColdPenetration",type="BASE",value=20}},nil}
c["每 8 秒获得一次【火之化身】，持续 4 秒 {variant:1}当你获得【火之化身】时，暴击率提高 120%"]={{[1]={[1]={type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=120}},"每 8 秒获得一次【火之化身】，持续 4 秒 {variant:1} "}c["战吼冷却回复速度提高 10%"]={{[1]={flags=0,keywordFlags=4,name="CooldownRecovery",type="INC",value=10}},nil}
c["物理伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=40}},nil}
c["法杖攻击的攻击速度提高 5%"]={{[1]={flags=8388609,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["药剂持续期间，移动速度提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["持法杖时，攻击类技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingWand"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["战吼技能冷却时间为 2 秒"]={nil,"战吼技能冷却时间为 2 秒 "}c["此物品上的技能石受到 5 级的 寒冰转烈焰 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=5,skillId="SupportColdToFire"}}},nil}
c["近期内你若有冰冻敌人，则伤害提高 60%"]={{[1]={[1]={type="Condition",var="FrozenEnemyRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["所有属性提高 7%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=7},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=7},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=7}},nil}
c["你或你的召唤生物击败的受诅咒敌人有 25% 几率爆炸，造成等同该敌人最大生命四分之一的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=2,name="Life",type="BASE",value=25}}}},"你或你的击败的受敌人爆炸，造成等同该敌人四分之一的混沌伤害 "}c["敌人被冰冻的持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=30}},nil}
c["魔力回复速度提高 52%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=52}},nil}
c["图腾免疫火焰伤害 图腾获得你 50% 的护甲值"]={{[1]={flags=0,keywordFlags=16384,name="FireDamage",type="BASE",value=50}},"免疫 图腾获得你 护甲值 "}c["投掷陷阱时，有 15% 的几率获得 1 个暴击球 {variant:2,3,4}投掷陷阱时，有 25% 的几率获得 1 个暴击球"]={{},"投掷时，有 几率获得 1 个暴击球 {variant:2,3,4}投掷陷阱时，有 25% 的几率获得 1 个暴击球 "}c["每 2 秒获得一个鬼影缠身，最大 3 个"]={nil,"每 2 秒获得一个鬼影缠身，最大 3 个 "}c["药剂持续期间你会被感电"]={nil,"药剂持续期间你会被感电 "}c["击败敌人回复 +25 能量护盾 每 6 秒会交替给予玩家以【玛拉凯的不同奇术】"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=25}},"击败敌人回复   每 6 秒会交替给予玩家以【玛拉凯的不同奇术】 "}c["你的攻击击中每个敌人会失去 25 生命"]={nil,"你的攻击击中每个敌人会失去 25 生命 "}c["-20% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=-20}},nil}
c["你的法术击中每个敌人会失去 15 生命"]={nil,"你的法术击中每个敌人会失去 15 生命 "}c["混沌伤害的 0.5% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageLifeLeech",type="BASE",value=0.5}},nil}
c["+20% 非异常状态的持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NonAilmentChaosDotMultiplier",type="BASE",value=20}},nil}
c["猛攻"]={{[1]={flags=0,keywordFlags=0,name="Condition:Onslaught",type="FLAG",value=true}},nil}
c["+45% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=45}},nil}
c["最大魔力提高 60%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=60}},nil}
c["该装备的能量护盾提高 130%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=130}},nil}
c["每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=3}}}},"每拥有一个， ，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% "}c["投射物会穿透 5 个额外目标"]={{[1]={flags=0,keywordFlags=0,name="PierceCount",type="BASE",value=5}},nil}
c["持续吟唱技能伤害提高 15%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["固定基底词缀两倍效果加成"]={nil,"固定基底词缀两倍效果加成 "}c["投射物会穿透 6 个额外目标"]={{[1]={flags=0,keywordFlags=0,name="PierceCount",type="BASE",value=6}},nil}
c["获得等同 24% 物理伤害的 1 个随机火焰、冰霜、闪电伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=24},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=24},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=24}},nil}
c["魔侍的持续时间缩短 15%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=-15}},nil}
c["受到击中闪电伤害的 100% 转为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageTakenAsFire",type="BASE",value=100}},nil}
c["+20 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=20}},nil}
c["受到击中火焰伤害的 100% 转为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTakenAsLightning",type="BASE",value=100}},nil}
c["受到击中火焰伤害的 100% 转为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTakenAsCold",type="BASE",value=100}},nil}
c["该装备的能量护盾提高 150%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=150}},nil}
c["受到击中冰霜伤害的 100% 转为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageTakenAsLightning",type="BASE",value=100}},nil}
c["陷阱冷却回复速度提高 10%"]={{[1]={flags=0,keywordFlags=4096,name="CooldownRecovery",type="INC",value=10}},nil}
c["攻击附加 1 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=20}},nil}
c["攻击伤害提高 12%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["+36% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=36}},nil}
c["每秒回复 4% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=4}},nil}
c["击败敌人有 20% 几率时获得耐力球 {variant:24}每秒回复 4% 生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=20}},"击败敌人时获得耐力球 {variant:24}每秒回复 4%  "}c["击败敌人有 20% 几率获得暴击球"]={{},"击败敌人获得暴击球 "}c["攻击瘫痪的敌人时，攻击伤害的 0.5% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Maimed"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.5}},nil}
c["最大生命提高 24%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=24}},nil}
c["你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命 【旗帜技能】不保留魔力"]={{},"你和周围友军从你放置的旗帜中每个位阶能"}c["使用终结时获得【猛攻】状态 3 秒"]={nil,"使用终结时获得【猛攻】状态 3 秒 "}c["每 4 秒便有 33% 几率冻结周围被冰缓的传奇敌人，持续 0.6 秒 每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒"]={{},"每 4 秒便冻结周围被冰缓的传奇敌人，持续 0.6 秒 每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒 "}c["匕首攻击的伤害提高 10%"]={{[1]={flags=524288,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["范围效果扩大 16%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=16}},nil}
c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 50%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你状态的敌人，则生命，魔力，和能量护盾回复提高 50% "}c["每个鬼影缠身可使承受的伤害降低 2%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-2}},"每个鬼影缠身可使 "}c["被你感电的敌人施法速度降低 30% 被你感电的敌人移动速度降低 20%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=-30}},"被你感电的敌人 被你感电的敌人移动速度降低 20% "}c["攻击速度降低 10%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-10}},nil}
c["最大魔力提高 5%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=5}},nil}
c["击败敌人有 5% 几率获得暴击球"]={{},"击败敌人获得暴击球 "}c["召唤生物伤害提高 14%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=14}}}},nil}
c["5% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["Requires 77"]={nil,"Requires 77 "}c["闪电伤害提高 60%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=60}},nil}
c["攻击伤害提高 60%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["全局防御提高 50%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=50}},nil}
c["物理伤害提高 275%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=275}},nil}
c["所有属性提高 32%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=32},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=32},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=32}},nil}
c["对被冰缓敌人所造成的攻击伤害的 1% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["每点燃 1 个敌人，则受到 100 火焰伤害 被点燃时，火焰伤害的 2% 转化为生命偷取"]={nil,"每点燃 1 个敌人，则受到 100 火焰伤害 被点燃时，火焰伤害的 2% 转化为生命偷取 "}c["+30% 陷阱暴击伤害加成"]={{[1]={flags=0,keywordFlags=4096,name="CritMultiplier",type="BASE",value=30}},nil}
c["敌人解冻后受到冰缓效果 有 10% 几率冰冻被冰缓的敌人 冰缓效果提高 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="EnemyChillEffect",type="BASE",value=10}},"敌人解冻后受到 冰冻 冰缓效果提高 10% "}c["附加 13 - 30 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=30}},nil}
c["击中冰缓敌人的伤害提高 18%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=18}},nil}
c["右戒指栏位：反射的物理伤害降低 30% {variant:3,4}右戒指栏位：反射的物理伤害降低 40%"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-30}},"反射的 {variant:3,4}右戒指栏位：反射的物理伤害降低 40% "}c["击败敌人时有 10% 几率获得 3 秒【猛攻】状态 击败敌人时回复 1% 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"击败敌人时获得 3 秒【猛攻】状态 击败敌人时回复 1%  "}c["药剂充能获取提高 50%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=50}},nil}
c["击败敌人时有 10% 几率获得不洁之力 3 秒 {variant:2}击败敌人时有 10% 几率获得 3 秒【猛攻】状态"]={{},"击败敌人时获得不洁之力 3 秒 {variant:2}击败敌人时有 10% 几率获得 3 秒【猛攻】状态 "}c["燃烧总伤害额外降低 80%"]={{}," "}c["每个暴击球使法术总伤害额外提高 3%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="Damage",type="MORE",value=3}},nil}
c["击败敌人时有 5% 几率给予周围敌人【猛攻】状态"]={{},"击败敌人时给予周围敌人【猛攻】状态 "}c["持爪时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["对致盲的敌人时，攻击和法术暴击率提高 140%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=140}},nil}
c["智慧需求提高 60%"]={{[1]={flags=0,keywordFlags=0,name="IntRequirement",type="INC",value=60}},nil}
c["每个耐力球提高 0.2% 每秒生命回复"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.2}},nil}
c["当你使用火焰技能时，有 35% 几率获得 1 个耐力球 每个耐力球可使物理伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=16,name="PhysicalDamage",type="BASE",value=35}},"当你使用时，获得 1 个耐力球 提高 5% "}c["使用尊严时，你的击中恐吓敌人 4 秒 {variant:93}使用尊严时，攻击物理伤害提高 60%"]={{[1]={[1]={type="Condition",var="UsedBy尊严"},[2]={type="Condition",var="UsedBy尊严"},flags=1,keywordFlags=262144,name="PhysicalDamage",type="INC",value=60}},"你的恐吓敌人 4 秒 {variant:93} "}c["药剂持续期间，移动速度提高 15%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["击败普通怪物的物品掉落数量提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=50}},"击败普通怪物的 "}c["物理攻击伤害的 1.6% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=1.6}},nil}
c["格挡时获得 10 秒不洁之力"]={nil,"格挡时获得 10 秒不洁之力 "}c["+40 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=40},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=40}},nil}
c["每秒回复 1.4% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1.4}},nil}
c["受到【优雅】影响时，有 10% 几率躲避攻击击中"]={{[1]={[1]={type="Condition",var="AffectedBy优雅"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=10}},nil}
c["被击中时有 5% 几率避免火焰伤害"]={{[1]={flags=0,keywordFlags=262144,name="FireDamage",type="BASE",value=5}},"被时避免 "}c["此物品上的火焰、冰霜、闪电技能石等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="elemental",value=2}}},nil}
c["武器总伤害额外降低 50%"]={{[1]={flags=134217728,keywordFlags=0,name="Damage",type="MORE",value=-50}},nil}
c["12 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=12}},nil}
c["攻击附加 10 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=20}},nil}
c["闪避值提高 500%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=500}},nil}
c["爪类攻击的暴击率提高 20%"]={{[1]={flags=262144,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["每个陷阱可使你的伤害提高 8%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=8}},"每个可使你的 "}c["-100 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=-100}},nil}
c["周围友军获得护体"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Condition:Fortify",type="FLAG",value=true},onlyAllies=true}}},nil}
c["伤害降低 30%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-30}},nil}
c["主手武器击败敌人时，有 25% 几率获得狂怒球"]={{},"击败敌人时，获得狂怒球 "}c["弓类攻击的伤害提高 12%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["持盾牌时有 2% 几率格挡法术伤害"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=2}},nil}
c["流血时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="Bleeding"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["击败中毒敌人后，召唤生物回复 20% 的最大生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=1048576,name="Life",type="BASE",value=20}}}},"击败敌人后，回复  "}c["弓类攻击的物理伤害提高 12%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["不会被致盲 承受来自致盲敌人的伤害降低 10% 周围敌人被致盲 对致盲敌人的击中和异常状态伤害提高 30% 击中敌人后有 25% 几率使其致盲"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 周围敌人被致盲 伤害提高 30% 击中敌人后有 25% 几率使其致盲 "}c["每有一个暴击球，你受到伤害的 1% 由魔力先承担"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="DamageTakenFromManaBeforeLife",type="BASE",value=1}},nil}
c["满血时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["击败普通怪物的物品掉落数量提高 100% {variant:3}击败普通怪物的物品掉落数量提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=100}},"击败普通怪物的 {variant:3}击败普通怪物的物品掉落数量提高 50% "}c["击败魔法怪物后的物品稀有度提高 150% {variant:2,3}击败魔法怪物后的物品稀有度提高 150%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=150}},"击败魔法怪物后的 {variant:2,3}击败魔法怪物后的物品稀有度提高 150% "}c["承受的范围伤害降低 5% 近期内你若有晕眩敌人，则范围效果扩大 10% 近战技能的范围效果提高 10%"]={{[1]={[1]={type="Condition",var="StunnedEnemyRecently"},flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},"的 范围效果扩大 10% 近战技能的范围效果提高 10% "}c["击败魔法怪物后的物品稀有度提高 150%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=150}},"击败魔法怪物后的 "}c["过去 8 秒你若有造成暴击，火焰、冰霜和闪电总伤害额外提高 40%"]={{[1]={[1]={type="Condition",var="CritInPast8Sec"},flags=0,keywordFlags=0,name="ElementalDamage",type="MORE",value=40}},nil}
c["经验值获取提高 5%"]={{},"经验值获取 "}c["每个暴击球暴击率降低 40%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=-40}},nil}
c["近期内你若有击败敌人，则范围效果扩大 30%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=30}},nil}
c["+325 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=325}},nil}
c["敌人被冰缓的持续时间延长 35%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=35}},nil}
c["受到击中物理伤害的 20% 转化为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsFire",type="BASE",value=20}},nil}
c["+25 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=25}},nil}
c["周围的友军和敌人跟你共享能量球"]={nil,"周围的友军和敌人跟你共享能量球 "}c["法术伤害提高 22%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=22}},nil}
c["承受攻击造成的物理伤害 -4"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-4}},nil}
c["物品稀有度提高 16%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=16}},nil}
c["装备 1 件普通物品时，物品稀有度提高 100%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="NormalItem"},flags=0,keywordFlags=0,name="LootRarity",type="INC",value=100}},nil}
c["物品稀有度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=20}},nil}
c["投掷地雷的技能魔力保留降低 20%"]={{[1]={flags=0,keywordFlags=8192,name="ManaReserved",type="INC",value=-20}},nil}
c["火焰伤害提高 70%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=70}},nil}
c["低血时每秒回复 1% 生命"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}},nil}
c["暴击球的持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=10}},nil}
c["格挡攻击时反射 200 - 250 物理伤害 {variant:2,3}格挡攻击时反射 240 - 300 物理伤害"]={nil,"格挡攻击时反射 200 - 250 物理伤害 {variant:2,3}格挡攻击时反射 240 - 300 物理伤害 "}c["地雷持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="MineDuration",type="INC",value=20}},nil}
c["+25% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=25}},nil}
c["不会承受反射的元素伤害 你身上的捷效果提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},"不会承受反射的 你身上的捷效果 "}c["+3% 攻击和法术格挡率上限"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceMax",type="BASE",value=3}},nil}
c["近期内你若有击败敌人，则移动速度提高 10%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["格挡时回复 +24 魔力 {variant:1}移动速度降低 20%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=24}},"格挡时回复   {variant:1}移动速度降低 20% "}c["受到【寒冰之捷】影响时，冰霜伤害提高 50%"]={{[1]={[1]={type="Condition",var="AffectedBy寒冰之捷"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=50}},nil}
c["若范围内含有 40 点敏捷，\n则【虚空匕首】将向四周环绕发射"]={nil,"若范围内含有 40 点敏捷，\n则【虚空匕首】将向四周环绕发射 "}c["对致盲敌人的击中和异常状态伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=30}},nil}
c["过去 10 秒内你若成功格挡，则你和周围友军无法被晕眩"]={nil,"过去 10 秒内你若成功格挡，则你和周围友军无法被晕眩 "}c["法术伤害提高 42%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=42}},nil}
c["周围敌人无法获得暴击，狂怒，或耐力球"]={nil,"周围敌人无法获得暴击，狂怒，或耐力球 "}c["+80 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=80}},nil}
c["+20 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},nil}
c["格挡时回复 +48 生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=48}},"格挡时回复   "}c["+5% 持续冰霜伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="BASE",value=5}},nil}
c["物理攻击伤害的 0.6% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.6}},nil}
c["格挡时回复 +40 生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=40}},"格挡时回复   "}c["法术附加 30 - 50 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=30},[2]={flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=50}},nil}
c["【时空锁链】的魔力保留降低 100%"]={{[1]={[1]={skillName="时空锁链",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["低血时法术总伤害额外提高 30%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=2,keywordFlags=0,name="Damage",type="MORE",value=30}},nil}
c["每秒 3 基础魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=3}},nil}
c["该装备的护甲与能量护盾提高 165%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=165}},nil}
c["击败敌人时有 10% 几率获得不洁之力 3 秒"]={{},"击败敌人时获得不洁之力 3 秒 "}c["近期内你若打出过暴击，则获得【玫红之舞】"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=0,keywordFlags=0,name="Keystone",type="LIST",value="玫红之舞"}},nil}
c["每 4 秒便有 33% 几率冻结周围被冰缓的传奇敌人，持续 0.6 秒"]={{},"每 4 秒便冻结周围被冰缓的传奇敌人，持续 0.6 秒 "}c["击中流血中的敌人时回复 +30 生命"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=0,name="LifeOnHit",type="BASE",value=30}},nil}
c["该装备的护甲与能量护盾提高 250%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=250}},nil}
c["召唤愤怒狂灵的持续时间延长 25%"]={{[1]={[1]={skillName="召唤愤怒狂灵",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=25}},nil}
c["召唤生物有 +0% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=0}}}},nil}
c["愤怒狂灵每秒受到等同于最大生命 20% 的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=20}},"愤怒狂灵每秒受到等同于 混沌伤害 "}c["+1000 灵体最大生命"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="BASE",value=1000}}}},nil}
c["点燃 1 个敌人后回复 1% 最大生命 对点燃敌人的近战物理伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=256,keywordFlags=262144,name="EnemyIgniteChance",type="INC",value=100}}," 1 个敌人后回复 1% 最大生命 物理伤害 "}c["召唤生物有 +17% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=17}}}},nil}
c["物理攻击伤害的 0.9% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.9}},nil}
c["攻击附加 13 - 26 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=13},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=26}},nil}
c["插槽内的技能石受到 20 级的 近战击晕获得耐力球 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="EnduranceChargeOnMeleeStun"}}},nil}
c["药剂持续期间，物品数量提高 25%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=25}},nil}
c["+28% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=28}},nil}
c["攻击附加 15 - 28 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=15},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=28}},nil}
c["流血状态下移动不再承受额外的伤害 投射物的伤害随着飞行距离提升，击中目标时最多提高 50% 技能可以额外发射 1 个投射物"]={{},"状态下移动不再承受"}c["攻击附加 15 - 28 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=28}},nil}
c["【精准】的总魔力保留额外降低 50%"]={{[1]={[1]={skillName="精准",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="MORE",value=-50}},nil}
c["自身的每个增益会为法术附加 3 - 7 基础火焰伤害"]={{[1]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=3},[2]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=7}},nil}
c["匕首攻击的暴击率提高 50%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["获得 22 级的主动技能【精准】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=22,skillId="AccuracyAndCritsAura"}}},nil}
c["击败敌人回复 +30 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaOnKill",type="BASE",value=30}},nil}
c["近期内你若有施放法术，你和周围友军有 +10% 几率格挡法术伤害"]={{[1]={[1]={type="Condition",var="CastSpellRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=10}}}},nil}
c["单手武器攻击的攻击速度提高 5%"]={{[1]={flags=268435457,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃"]={nil,"当你身旁有召唤的寒冰时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 "}c["召唤的哨兵会使用【圣战猛击】"]={{[1]={flags=0,keywordFlags=0,name="ExtraMinionSkill",type="LIST",value={minionList={[1]="AxisEliteSoldierHeraldOfLight",[2]="AxisEliteSoldierDominatingBlow"},skillId="SentinelHolySlam"}}},nil}
c["每 10 点智慧提高 1% 闪避值"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=1}},nil}
c["每 0.5 秒获得 1 个虚空之矢"]={nil,"每 0.5 秒获得 1 个虚空之矢 "}c["锤类攻击的物理伤害提高 15%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["物理伤害提高 310%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=310}},nil}
c["药剂充能获取降低 30%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=-30}},nil}
c["若范围内含有至少 40 点力量，【戒备打击】会使周围友军获得护体 3 秒"]={nil,"若范围内含有至少 40 点力量，【戒备打击】会使护体 3 秒 "}c["+70 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=70}},nil}
c["受到击中物理伤害的 10% 转化为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsFire",type="BASE",value=10}},nil}
c["每秒获得 1 个虚空之矢"]={nil,"每秒获得 1 个虚空之矢 "}c["+14% 冰霜与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=14}},nil}
c["击败敌人时回复 3% 最大魔力"]={nil,"击败敌人时回复 3% 最大魔力 "}c["投射物速度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=50}},nil}
c["承受投射物攻击造成的物理伤害 (-80--50) 承受投射物的攻击时，护甲提高 200%"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCountTaken",type="BASE",value=-80}},"物理伤害 (--50) 承受投射物的攻击时，护甲提高 200% "}c["图腾伤害提高 25%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=25}},nil}
c["攻击附加 40 - 100 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=40},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=100}},nil}
c["持盾牌时攻击速度提高 8%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["在药剂持续期间，击败中毒的敌人时，可使周围敌人中毒"]={nil,"在药剂持续期间，击败中毒的敌人时，可使周围敌人中毒 "}c["近战攻击晕眩敌人时，有 10% 几率获得一个耐力球"]={{},"晕眩敌人时，获得一个耐力球 "}c["剑类攻击的物理伤害提高 20%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["陷阱伤害提高 12%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=12}},nil}
c["能量护盾启动回复比平常快 150%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=150}},nil}
c["照亮范围缩小 25%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=-25}},nil}
c["攻击技能可以额外召唤 1 个图腾"]={{[1]={flags=0,keywordFlags=65536,name="ActiveTotemLimit",type="BASE",value=1}},nil}
c["每 10 点智慧可使闪电伤害提高 1%"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=1}},nil}
c["你的攻击击中每个敌人会回复 +7 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=7}},nil}
c["+3% 攻击和法术伤害格挡几率上限"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceMax",type="BASE",value=3}},nil}
c["召唤生物获得 +10% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=10}}}},nil}
c["投射物速度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=25}},nil}
c["终结 生命回满时不会取消生命偷取效果 近期内你若有击败敌人，则范围效果扩大 30%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=512,keywordFlags=0,name="Life",type="INC",value=30}},"终结 回满时不会取消生命偷取效果 效果 "}c["每 10 点奉献使自身受到诅咒的持续时间缩短 4% {variant:10}每 10 点奉献使召唤生物攻击和施法速度提高 1%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=10,stat="Devotion",type="PerStat"},[2]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=2,name="Duration",type="INC",value=-4}}}},"自身受到的 {variant:10}攻击和施法速度提高 1% "}c["+2 魔侍数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveSkeletonLimit",type="BASE",value=2}},nil}
c["获得等同 5% 物理伤害的火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=5}},nil}
c["持弓攻击附加 6 - 12 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=6},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=12}},nil}
c["持弓攻击附加 9 - 15 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=9},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=15}},nil}
c["图腾的生命提高 17%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=17}},nil}
c["对致盲的敌人的击中和异常状态伤害提高 60%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=60}},nil}
c["陷阱伤害提高 30%"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=30}},nil}
c["被击中时有 25% 几率制造一团烟雾"]={{},"被时制造一团烟雾 "}c["+40% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=40}},nil}
c["你受到的诅咒效果降低 50%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=-50}},nil}
c["+10% 持续伤害加成"]={{[1]={flags=0,keywordFlags=0,name="DotMultiplier",type="BASE",value=10}},nil}
c["长杖攻击的元素伤害提高 16%"]={{[1]={flags=2097152,keywordFlags=0,name="ElementalDamage",type="INC",value=16}},nil}
c["持弓攻击附加 7 - 10 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=7},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=10}},nil}
c["+20 力量和敏捷"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=20}},nil}
c["用 8000 枚金币纪念维多里奥"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC维多里奥",type="FLAG",value=true}},nil}
c["每个耐力球可使物理伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=6}},nil}
c["晕眩敌人时获得 50 生命 {variant:1}最小物理攻击总伤害额外降低 20%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE"}},"晕眩敌人时获得 50  {variant:1 "}c["持长杖时，施法速度提高 8%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=16,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["当你击败 1 名点燃敌人，对周围敌人造成相同的点燃效果 装备时施放 7 级的【艾贝拉斯之怒】"]={nil,"当你击败 1 名点燃敌人，对周围敌人造成相同的点燃效果 装备时施放 7 级的【艾贝拉斯之怒】 "}c["每 10 点敏捷可以为攻击附加 1 - 2 基础冰霜伤害"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=1},[2]={[1]={div=10,stat="Dex",type="PerStat"},flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=2}},nil}
c["你的攻击击中每个敌人会回复 +3 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=3}},nil}
c["你的攻击击中每个敌人会回复 +4 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=4}},nil}
c["+20% 火焰与冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=20}},nil}
c["每装备 1 个【裂界之器】，异常状态的持续伤害加成便提高 15% 每装备 1 个【裂界之器】，最大生命提高 +6"]={{[1]={[1]={type="Multiplier",var="ElderItem"},[2]={type="Multiplier",var="ElderItem"},flags=2048,keywordFlags=0,name="DotMultiplier",type="INC",value=15}},"的 最大生命提高 +6 "}c["该装备的护甲提高 80%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=80}},nil}
c["范围效果扩大 20%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=20}},nil}
c["装备的护盾上每有 5 点护甲，便 +1 最大能量护盾"]={{[1]={[1]={div=5,stat="ArmourOnWeapon 2",type="PerStat"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=1}},nil}
c["攻击和法术附加 21-33 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=21},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=33}},nil}
c["格挡攻击时反射 200 - 250 物理伤害"]={nil,"格挡攻击时反射 200 - 250 物理伤害 "}c["装备 5 个被腐化物品时：生命偷取只按照造成的混沌伤害计算"]={{[1]={[1]={threshold=5,type="MultiplierThreshold",var="CorruptedItem"},flags=0,keywordFlags=0,name="LifeLeechBasedOnChaosDamage",type="FLAG",value=true}},nil}
c["攻击技能的闪电伤害提高 12%"]={{[1]={flags=0,keywordFlags=65536,name="LightningDamage",type="INC",value=12}},nil}
c["最大魔力提高 24%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=24}},nil}
c["获得【召唤射术先驱者】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={skillId="SummonHarbingerOfDirections"}}},nil}
c["混沌伤害提高 14%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=14}},nil}
c["持弓攻击附加 12 - 22 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=12},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=22}},nil}
c["幻化类召唤生物的近战攻击对周围目标造成的总伤害额外降低 50%"]={{}," "}c["受到【坚定】影响时，不受【脆弱】影响"]={nil,"受到【坚定】影响时，不受【脆弱】影响 "}c["Projectile Damage increased by 50% of Arrow Pierce Chance"]={nil,"Projectile Damage increased by 50% of Arrow Pierce Chance "}c["持弓攻击附加 14 - 24 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=14},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=24}},nil}
c["承受的范围伤害降低 8% 对燃烧的敌人，+30% 暴击加成 对感电敌人的暴击几率提高 80% 对冰缓敌人的伤害穿透 10% 火焰、冰霜、闪电抗性"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Burning"},[2]={actor="enemy",type="ActorCondition",var="Chilled"},flags=512,keywordFlags=262144,name="DamageTaken",type="INC",value=-8}},"的 +30% 暴击加成 对感电敌人的暴击几率提高 80% 伤害穿透 10% 火焰、冰霜、闪电抗性 "}c["有 50% 几率使晕眩时间延长 1 倍"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="BASE",value=50}},"使延长 1 倍 "}c["占用所有武器栏位"]={nil,"占用所有武器栏位 "}c["持长杖时，攻击类技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["该装备的护甲与闪避提高 140%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=140}},nil}
c["魔侍的持续时间缩短 20%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=-20}},nil}
c["拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},nil}
c["你身上的护体效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="FortifyEffectOnSelf",type="INC",value=5}},nil}
c["近战攻击暴击率提高 20%"]={{[1]={flags=257,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["承受伤害提高 5%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=5}},nil}
c["满血时闪避值提高 +1500"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=1500}},nil}
c["持弓攻击附加 6 - 10 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=6},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=10}},nil}
c["敌人被晕眩时间延长 80%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=80}},nil}
c["攻击附加 1 - 4 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=4}},nil}
c["持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=100}},nil}
c["+90 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=90}},nil}
c["最大能量护盾降低 15%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=-15}},nil}
c["攻击附加 2 - 4 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=2},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=4}},nil}
c["获得等同 10% 魔力的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ManaGainAsEnergyShield",type="BASE",value=10}},nil}
c["+24 力量和智慧"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=24}},nil}
c["命中值提高 25%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=25}},nil}
c["无法使用生命偷取的恢复效果"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="MORE",value=-100}},nil}
c["被击败的敌人身上的诅咒将转移给周围 1 个敌人"]={nil,"被击败的敌人身上的诅咒将转移给周围 1 个敌人 "}c["武器攻击的火焰、冰霜、闪电伤害提高 12% {variant:2}武器攻击的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},"攻击的 {variant:2}武器攻击的火焰、冰霜、闪电伤害提高 24% "}c["你在专注时，冰缓周围敌人，使其行动速度降低 30%"]={{},"你在冰缓周围敌人，使其行动速度 "}c["有 1 个插槽"]={{[1]={flags=0,keywordFlags=0,name="SocketCount",type="BASE",value=1}},nil}
c["+90 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=90}},nil}
c["该装备的护甲提高 110%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=110}},nil}
c["暴击时有 10% 几率获得暴击球 击中时有 40% 几率使目标中毒 近期内你若有击败敌人，则移动速度提高 10%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=262144,name="MovementSpeed",type="BASE",value=10}},"获得暴击球 时有 40% 几率使目标中毒 提高 10% "}c["魔像施放技能的冷却速度提高 30%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=30}},nil}
c["近期内你若有使用过位移技能，则每秒回复 15 魔力"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=15}},nil}
c["每个图腾每秒使你回复 0.5%  魔力"]={nil,"每个图腾每秒使你回复 0.5%  魔力 "}c["若范围内含有 40 点敏捷，则【燃烧箭矢】对敌人造成额外 1 次点燃"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"若内含有 40 点，则【燃烧箭矢】对敌人造成"}c["格挡法术伤害的几率会特别不幸 +120 力量"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=120}},"的几率会特别不幸  力量 "}c["【寒冰之捷】的伤害提高 50%"]={{[1]={[1]={skillName="寒冰之捷",type="SkillName"},flags=0,keywordFlags=0,name="Damage",type="INC",value="50"}},nil}
c["格挡法术伤害的几率会特别不幸"]={nil,"格挡法术伤害的几率会特别不幸 "}c["每有 50 点力量，攻击伤害格挡几率额外 +1%"]={{[1]={[1]={div=50,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=1}},nil}
c["不再通过力量获得伤害加成，每 10 点力量会使近战物理伤害提高 3%"]={{[1]={flags=0,keywordFlags=0,name="StrDmgBonusRatioOverride",type="BASE",value=0.3}},nil}
c["每装备 1 个被腐化的物品，所有抗性 -5%"]={{[1]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-5},[2]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-5}},nil}
c["你和你的图腾有 20% 几率各获得 1 个耐力球 每个耐力球可使火焰伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=16384,name="FireDamage",type="BASE",value=20}},"你和你的各获得 1 个耐力球 提高 6% "}c["每装备 1 个被腐化的物品，所有抗性 -4%"]={{[1]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=-4},[2]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-4}},nil}
c["你造成中毒的敌人若没有冰缓，则受到冰缓"]={nil,"你造成中毒的敌人若没有冰缓，则受到冰缓 "}c["暴击时获得【不洁之力】 2 秒 {variant:3}暴击时获得【不洁之力】 4 秒"]={nil,"暴击时获得【不洁之力】 2 秒 {variant:3}暴击时获得【不洁之力】 4 秒 "}c["灵体的最大生命提高 100%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=100}}}},nil}
c["投射物可以连锁弹射 +1 次"]={{[1]={flags=0,keywordFlags=0,name="ChainCountMax",type="BASE",value=1}},nil}
c["有额外 3% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=3}},nil}
c["击败敌人会回复自身 5% 最大能量护盾 每装备 1 个被腐化的物品，所有抗性 -4%"]={{[1]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=-4}},"击败敌人会回复自身 5%  所有抗性  "}c["击败敌人会回复自身 5% 最大能量护盾"]={nil,"击败敌人会回复自身 5% 最大能量护盾 "}c["获得 +22% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=22}},nil}
c["该装备的护甲、闪避和能量护盾提高 305%"]={{[1]={flags=0,keywordFlags=0,name="Defences",type="INC",value=305}},nil}
c["获得护体时，攻击伤害提高 12%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=1,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["非诅咒类光环的效果提高 3%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=3}},nil}
c["击败敌人回复 +100 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaOnKill",type="BASE",value=100}},nil}
c["击败敌人回复 +100 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=100}},nil}
c["该装备的护甲、闪避和能量护盾提高 340%"]={{[1]={flags=0,keywordFlags=0,name="Defences",type="INC",value=340}},nil}
c["每个召唤的魔像可使你有 35% 几率避免元素异常状态"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=35}}},[2]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=35}}},[3]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=35}}},[4]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=35}}}},"每个召唤的可使你 "}c["剑类攻击的物理伤害提高 15%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["偷取时伤害提高 25%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=0,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["地雷投掷速度提高 6%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=6}},nil}
c["你获得【猫之隐匿】时也会同时获得自身最大数量的狂怒球和暴击球 拥有【猫之隐匿】时获得【迷踪】状态"]={nil,"你获得【猫之隐匿】时也会同时获得自身最大数量的狂怒球和暴击球 拥有【猫之隐匿】时获得【迷踪】状态 "}c["移动技能冷却回复速度提高 15%"]={{[1]={flags=0,keywordFlags=8,name="CooldownRecovery",type="INC",value=15}},nil}
c["非诅咒类光环的效果提高 15%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=15}},nil}
c["+6% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=6}},nil}
c["攻击和法术附加 20 - 30 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=20},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=30}},nil}
c["此物品上的技能石受到 30 级的 和善 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=30,skillId="SupportGenerosity"}}},nil}
c["此武器的攻击穿透 30% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=30}},nil}
c["+25% 火焰与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=25}},nil}
c["此物品上的技能石降低 30% 魔力保留"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-30}}}},nil}
c["火之化身"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="火之化身"}},nil}
c["你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ExtraMinionSkill",type="LIST",value={minionList={[1]="RaisedZombie"},skillId="BeaconZombieCausticCloud"}}},nil}
c["施法速度降低 20%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=-20}},nil}
c["此物品上的技能石降低 20% 魔力保留"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-20}}}},nil}
c["【鸟之势】也会使周围友军获得【鸟之力量】和【鸟之斗魄】"]={nil,"【鸟之势】也会使【鸟之力量】和【鸟之斗魄】 "}c["敌人被点燃的持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=15}},nil}
c["混沌伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=30}},nil}
c["匕首攻击 +14% 暴击伤害加成"]={{[1]={flags=524288,keywordFlags=0,name="CritMultiplier",type="BASE",value=14}},nil}
c["你的陷阱被敌人触发时回复 100 生命"]={nil,"你的陷阱被敌人触发时回复 100 生命 "}c["经验值获取提高 3% 火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=3}},"经验值获取 提高 20% "}c["近战伤害提高 16%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["药剂持续期间间缩短 25%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=-25}},nil}
c["燃烧伤害提高 20%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=20}},nil}
c["该装备的闪避与能量护盾提高 180%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=180}},nil}
c["击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人"]={{},"满血敌人时，将使他们永久受到威吓 攻击击中时穿刺敌人 "}c["+90 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=90}},nil}
c["+500 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=500}},nil}
c["击败敌人时有 10% 几率给予周围友军 1 个暴击球 击中时有 5% 几率给予周围友军 1 个狂怒球"]={{},"击败敌人时给予周围友军 1 个暴击球 时有 5% 几率给予周围友军 1 个狂怒球 "}c["+150 点闪避值和能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="BASE",value=150}},nil}
c["爪类攻击 +10% 暴击伤害加成"]={{[1]={flags=262144,keywordFlags=0,name="CritMultiplier",type="BASE",value=10}},nil}
c["灵体的暴击率提高 1000%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CritChance",type="INC",value=1000}}}},nil}
c["受到【活力】影响时，伤害的 1.5% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="AffectedBy活力"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1.5}},nil}
c["【鸟之势】也会使周围友军获得【鸟之力量】和【鸟之斗魄】 +150 点闪避值和能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Str",type="BASE",value=150},onlyAllies=true}}},"【鸟之势】也会使【鸟之】和【鸟之斗魄】 闪避值和能量护盾 "}c["此物品上装备的【光环技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="aura",value=1}}},nil}
c["【鸟之势】增益效果提高 100%"]={{[1]={[1]={skillName="鸟之势",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=100}},nil}
c["低血时移动速度提高 7%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=7}},nil}
c["爪类攻击的物理伤害提高 18%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=18}},nil}
c["敌人被冰冻的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=20}},nil}
c["+23 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=23}},nil}
c["不能使用其他戒指 {variant:1,2,3}获得 +12% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=12}},"不能使用其他戒指 {variant:1,2,3}  "}c["【怨毒光环】的光环效果提高 60%"]={{[1]={[1]={skillName="怨毒光环",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["魔侍的施法速度提高 10%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=10}}}},nil}
c["使用技能时，有 20% 几率回复 10% 魔力 在总计消耗 200 点魔力后的 4 秒内，承受的伤害降低 6%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"使用技能时，回复 10%  在总计消耗 200 点魔力后的 4 秒内，承受的伤害降低 6% "}c["空手攻击时的物理总伤害额外提高 1000%"]={{[1]={flags=16777216,keywordFlags=0,name="PhysicalDamage",type="MORE",value=1000}},nil}
c["耐力球，狂怒球，以及暴击球的持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=100},[2]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=100},[3]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=100}},nil}
c["每个狂怒球可使移动速度提高 1%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=1}},nil}
c["受到【雷霆之捷】影响时，伤害穿透 25% 闪电抗性"]={{[1]={[1]={type="Condition",var="AffectedBy闪电之捷"},flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=25}},nil}
c["获得 +4% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=4}},nil}
c["击败感电敌人时会爆炸，造成等同敌人最大生命 10% 的闪电伤害 {variant:2,3}击败感电敌人时会爆炸，造成等同敌人最大生命 5% 的闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"击败感电敌人时会爆炸，造成等同敌人 闪电伤害 {variant:2,3}击败感电敌人时会爆炸，造成等同敌人最大生命 5% 的闪电伤害 "}c["15% 几率避免元素异常状态"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=15},[3]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=15},[4]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=15}},nil}
c["分裂后的箭矢攻击暴击率提高 200%"]={{[1]={flags=1,keywordFlags=0,name="CritChance",type="INC",value=200}},"分裂后的箭矢 "}c["击败感电敌人时会爆炸，造成等同敌人最大生命 10% 的闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"击败感电敌人时会爆炸，造成等同敌人 闪电伤害 "}c["异灵魔侍每秒将其最大生命的 23% 转化为火焰伤害"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=1,stat="Life",type="PerStat"},flags=0,keywordFlags=0,name="FireDegen",type="BASE",value=0.23}}}},nil}
c["+6% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=6}},nil}
c["对流血敌人的近战伤害提高 50%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=256,keywordFlags=262144,name="Damage",type="INC",value=50}},nil}
c["攻击和法术暴击率提高 40%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["感电效果提高 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=25}},nil}
c["生命偷取的每秒恢复效果每 2% 使受到的总伤害额外降低 1%"]={{[1]={[1]={div=2,stat="MaxLifeLeechRatePercentage",type="PerStat"},[2]={type="Condition",var="LeechingLife"},flags=0,keywordFlags=0,name="DamageTaken",type="MORE",value=-1}},nil}
c["-15% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-15}},nil}
c["攻击和法术附加 30-45 基础火焰伤害"]={{[1]={flags=0,keywordFlags=196608,name="FireMin",type="BASE",value=30},[2]={flags=0,keywordFlags=196608,name="FireMax",type="BASE",value=45}},nil}
c["近期内你若感电任意敌人，则伤害提高 50%"]={{[1]={[1]={type="Condition",var="ShockedEnemyRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["攻击打出暴击时，有 50% 几率造成流血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=50}},"打出 "}c["匕首攻击 +20% 暴击伤害加成"]={{[1]={flags=524288,keywordFlags=0,name="CritMultiplier",type="BASE",value=20}},nil}
c["地雷持续时间延长 15%"]={{[1]={flags=0,keywordFlags=0,name="MineDuration",type="INC",value=15}},nil}
c["该装备的闪避与能量护盾提高 140%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=140}},nil}
c["+70 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=70}},nil}
c["受到【愤怒】影响时，火焰伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy愤怒"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=60}},nil}
c["吟唱技能时，每秒获得一个暴击或狂怒球"]={nil,"吟唱技能时，每秒获得一个暴击或狂怒球 "}c["冰霜伤害击中时有 5% 的几率冰冻敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=5}},nil}
c["图腾伤害降低 40%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=-40}},nil}
c["若范围内含有至少 40 点力量，【戒备打击】会使周围友军获得护体 3 秒 {variant:2}若范围内含有至少 40 点力量，【戒备打击】会使周围友军获得护体 12 秒"]={nil,"若范围内含有至少 40 点力量，【戒备打击】会使护体 3 秒 {variant:2}若范围内含有至少 40 点力量，【戒备打击】会使周围友军获得护体 12 秒 "}c["附加 4 - 9 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=4},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=9}},nil}
c["对受 3 层蜘蛛网影响的敌人，击中和异常状态伤害提高 60%"]={{[1]={[1]={actor="enemy",threshold=3,type="MultiplierThreshold",var="Spider's WebStack"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=60}},nil}
c["+125 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=125}},nil}
c["受到【坚定】影响时，有 8% 几率格挡"]={{[1]={[1]={type="Condition",var="AffectedBy坚定"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=8}},nil}
c["被击中时, 10% 的伤害优先从魔力扣除 {variant:3,4}10% 的伤害优先从魔力扣除"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="BASE",value=10}},"被时, 优先从魔力扣除 {variant:3,4}10% 的伤害优先从魔力扣除 "}c["在奉献地面上时有 5% 额外格挡率"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["击败稀有或者传奇敌人时，移动速度提高 20%，持续 20秒"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},"击败稀有或者传奇敌人时，，持续 20秒 "}c["-1 耐力球数量上限"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesMax",type="BASE",value=-1}},nil}
c["范围效果扩大 45%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=45}},nil}
c["该装备的闪避与能量护盾提高 135%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=135}},nil}
c["闪避值与护甲提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=12}},nil}
c["持斧时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["持近战武器时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="UsingMeleeWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=24}},nil}
c["召唤生物有额外 10% 躲避击中几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=10}}}},nil}
c["该装备的闪避与能量护盾提高 120%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=120}},nil}
c["+13 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=13}},nil}
c["烙印的激活频率提高 5%"]={{[1]={flags=0,keywordFlags=0,name="BrandActivationFrequency",type="INC",value=5}},nil}
c["移动速度提高 11%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=11}},nil}
c["攻击技能可使混沌伤害提高 25%"]={{[1]={flags=0,keywordFlags=65536,name="ChaosDamage",type="INC",value=25}},nil}
c["你受到点燃时，也会点燃周围 12 范围内的敌人 {variant:2,3}你受到点燃时，也会点燃周围 15 范围内的敌人"]={nil,"你受到点燃时，也会点燃周围 12 范围内的敌人 {variant:2,3}你受到点燃时，也会点燃周围 15 范围内的敌人 "}c["药剂持续期间，近战物理总伤害额外提高 23%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=256,keywordFlags=0,name="PhysicalDamage",type="MORE",value=23}},nil}
c["获得额外火焰伤害， 其数值等同于物理伤害的 70%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=70}},nil}
c["【复苏的魔卫】的重击攻击效果范围扩大 100%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={skillId="ZombieSlam",type="SkillId"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=100}}}},nil}
c["火焰、冰霜、闪电伤害提高 33%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=33}},nil}
c["半径：18 你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20%"]={{[1]={flags=0,keywordFlags=262144,name="AreaOfEffect",type="MORE"}},"：18 你造成的冰缓必定使目标减速 10 "}c["物品稀有度提高 18%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=18}},nil}
c["此物品上的诅咒会被反弹回自己"]={nil,"此物品上的诅咒会被反弹回自己 "}c["最多同时可额外放置 2 个陷阱"]={{[1]={flags=0,keywordFlags=0,name="ActiveTrapLimit",type="BASE",value=2}},nil}
c["+35 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=35}},nil}
c["+33 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=33}},nil}
c["攻击附加 7 - 25 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=7},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=25}},nil}
c["被你嘲讽的敌人无法闪避攻击"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="Taunted"},flags=0,keywordFlags=0,name="CannotEvade",type="FLAG",value=true}}}},nil}
c["你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=8}}}},nil}
c["你的最大抗性为 78%"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="OVERRIDE",value=78},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="OVERRIDE",value=78},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="OVERRIDE",value=78},[4]={flags=0,keywordFlags=0,name="ChaosResistMax",type="OVERRIDE",value=78}},nil}
c["你的最大抗性为 80%"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="OVERRIDE",value=80},[2]={flags=0,keywordFlags=0,name="ColdResistMax",type="OVERRIDE",value=80},[3]={flags=0,keywordFlags=0,name="LightningResistMax",type="OVERRIDE",value=80},[4]={flags=0,keywordFlags=0,name="ChaosResistMax",type="OVERRIDE",value=80}},nil}
c["伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["投射物伤害提高 12%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["获得 +8% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=8}},nil}
c["每秒对周围敌人造成 50 混沌伤害"]={nil,"每秒对周围敌人造成 50 混沌伤害 "}c["双持攻击时武器的物理伤害提高 10%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["对满血敌人的攻击和法术暴击率提高 100%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="FullLife"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=100}},nil}
c["攻击附加 10 - 36 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=36}},nil}
c["有 6 个插槽"]={{[1]={flags=0,keywordFlags=0,name="SocketCount",type="BASE",value=6}},nil}
c["获得等级 20 的【骨制战甲】技能 每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=20}}}},"获得等级 【骨制战甲】技能 每拥有一个，获得 1% ，最多 10% "}c["每 1 个召唤出的不同魔像可使魔像伤害提高 18%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HavePhysicalGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}},[2]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveLightningGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}},[3]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveColdGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}},[4]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveFireGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}},[5]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveChaosGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}},[6]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={actor="parent",type="ActorCondition",var="HaveCarrionGolem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=18}}}},nil}
c["该装备的护甲与能量护盾提高 130%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=130}},nil}
c["格挡时有 100% 几率制造腐化地面"]={{},"格挡时制造腐化地面 "}c["格挡时有 50% 几率制造腐化地面 {variant:3,4}格挡时有 100% 几率制造腐化地面"]={{},"格挡时制造腐化地面 {variant:3,4}格挡时有 100% 几率制造腐化地面 "}c["格挡时有 50% 几率制造腐化地面"]={{},"格挡时制造腐化地面 "}c["获得 20 级【死神光环】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="ChaosDegenAuraUnique"}}},nil}
c["冰霜抗性高于 75% 时，每高 1%，冰霜伤害便提高 18%"]={{[1]={[1]={div=1,stat="ColdResistOver75",type="PerStat"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=18}},nil}
c["击中时有 25% 几率使目标中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=25}},nil}
c["格挡时有 25% 几率制造腐化地面 {variant:2}格挡时有 50% 几率制造腐化地面"]={{},"格挡时制造腐化地面 {variant:2}格挡时有 50% 几率制造腐化地面 "}c["格挡时有 25% 几率制造腐化地面"]={{},"格挡时制造腐化地面 "}c["获得 20 级的主动技能【蛛之势】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="SpiderAspect"}}},nil}
c["+120 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=120}},nil}
c["反射 30 混沌伤害给近战攻击者"]={nil,"反射 30 混沌伤害给近战攻击者 "}c["持长杖时，法术伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["每个耐力球附加 5 - 8 基础物理伤害"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=5},[2]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=8}},nil}
c["施法速度提高 30%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=30}},nil}
c["+60 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=60}},nil}
c["当耐力球被使用或失效时，获得 100 生命"]={nil,"当耐力球被使用或失效时，获得 100 生命 "}c["若范围内含有 40 点力量，【裂地之击】的角度扩大 20%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=20}},"若内含有 40 点，【裂地之击】的角度 "}c["你所施放诅咒的效果提高 18%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=18}},nil}
c["攻击伤害的 0.9% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.9}},nil}
c["耐力球达到上限时进入暴走状态 暴走状态结束时失去所有耐力球"]={nil,"耐力球达到上限时进入暴走状态 暴走状态结束时失去所有耐力球 "}c["+5% 冰霜抗性上限"]={{[1]={flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=5}},nil}
c["击败敌人会扣除自身 1% 最大能量护盾 已腐化"]={nil,"击败敌人会扣除自身 1% 最大能量护盾 已腐化 "}c["该装备的护甲与能量护盾提高 230%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=230}},nil}
c["受到击中火焰、冰霜、闪电伤害的 25% 转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageTakenAsChaos",type="BASE",value=25}},nil}
c["击败敌人后有 25% 几率获得 1 个狂怒球 当你身上没有狂怒球时，伤害提高 80%"]={{[1]={[1]={stat="FrenzyCharges",threshold=0,type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="Damage",type="BASE",value=25}},"击败敌人后获得 1 个狂怒球 提高 80% "}c["当受到【奋锐光环】影响时，你创造奉献地面会获得【秘术增强】，持续 4 秒"]={nil,"当受到【奋锐光环】影响时，你创造奉献地面会获得【秘术增强】，持续 4 秒 "}c["持锤时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["持续伤害效果提高 30%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["【召唤灵体】的魔力消耗降低 45%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-45}},nil}
c["+257 智慧需求"]={{[1]={flags=0,keywordFlags=0,name="IntRequirement",type="BASE",value=257}},nil}
c["受到击中火焰伤害的 30% 转为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTakenAsCold",type="BASE",value=30}},nil}
c["受到击中物理伤害的 20% 转化为冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsCold",type="BASE",value=20}},nil}
c["格挡回复提高 60%"]={{[1]={flags=0,keywordFlags=0,name="BlockRecovery",type="INC",value=60}},nil}
c["近期内你若引爆过地雷，则地雷伤害提高 40%"]={{[1]={[1]={type="Condition",var="DetonatedMinesRecently"},flags=0,keywordFlags=8192,name="Damage",type="INC",value=40}},nil}
c["敌人被冰缓的持续时间延长 150%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=150}},nil}
c["+50% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=50}},nil}
c["+15 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=15}},nil}
c["+15% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["+35 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=35}},nil}
c["每 5 点力量使最大能量护盾提高 +2"]={{[1]={[1]={div="5",stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value="2"}},nil}
c["【猛攻】效果提高 15%"]={{[1]={flags=0,keywordFlags=0,name="OnslaughtEffect",type="INC",value=15}},nil}
c["+40 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=40}},nil}
c["当幻化守卫击败一个敌人时，触发 20 级的【幻化守卫武器】 当幻化武器击败一个敌人时，有 10% 几率触发 18 级的【幻化守卫武器】"]={{},"当幻化守卫击败一个敌人时，触发 20 级的【幻化守卫】 当幻化武器击败一个敌人时，触发 18 级的【幻化守卫武器】 "}c["幻化类召唤生物的近战攻击对周围目标造成的总伤害额外降低 50% 当幻化守卫击败一个敌人时，触发 20 级的【幻化守卫武器】"]={{}," 当幻化守卫击败一个敌人时，触发 20 级的【幻化守卫】 "}c["每把幻化武器可使幻化守卫的伤害提高 5% 幻化类召唤生物的近战攻击会对对周围目标造成溅射伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=134217728,keywordFlags=0,name="Damage",type="INC",value=5}}}},"每把幻化可使幻化守卫的 幻化类近战攻击会对对周围目标造成溅射伤害 "}c["近战击中时有 10% 几率获得护体效果"]={{},"击中时获得护体效果 "}c["与周围队友分享耐力球"]={nil,"与周围队友分享耐力球 "}c["近期内你若被击中，则每秒回复 2% 生命"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["低血时每秒回复 2% 生命"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["受到暴击时获得 1 个耐力球"]={nil,"受到暴击时获得 1 个耐力球 "}c["近期有感电过敌人，伤害提高 30%"]={{[1]={[1]={type="Condition",var="ShockedEnemyRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["技能石可以无视此物品上的插槽颜色 红色插槽内的技能石 +1 等级"]={{},"技能石可以无视此物品上的插槽颜色 红色插槽内的技能石  等级 "}c["药剂持续期间，攻击和法术附加 20-30 基础混沌伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=196608,name="ChaosMin",type="BASE",value=20},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=196608,name="ChaosMax",type="BASE",value=30}},nil}
c["免疫中毒"]={nil,"免疫中毒 "}c["12% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=12}},nil}
c["此物品上装备的【闪电技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="lightning",value=2}}},nil}
c["你仅可以拥有一个非旗帜光环 非旗帜光环不保留魔力"]={nil,"你仅可以拥有一个非旗帜光环 非旗帜光环不保留魔力 "}c["该装备的护甲与闪避提高 105%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=105}},nil}
c["此物品上的技能石受到 20 级的 点燃扩散 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportIgniteProliferation"}}},nil}
c["施法速度提高 12%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["你的魔像变得很有攻击性 起源珠宝"]={nil,"你的变得很有攻击性 起源珠宝 "}c["若范围内含有 40 点力量，【裂地之击】的角度扩大 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=50}},"若内含有 40 点，【裂地之击】的角度 "}c["受到击中物理伤害的 30% 转化为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsLightning",type="BASE",value=30}},nil}
c["剑类攻击 +200 点命中值"]={{[1]={flags=4194304,keywordFlags=0,name="Accuracy",type="BASE",value=200}},nil}
c["有 10% 几率使晕眩时间延长 1 倍 持锤或短杖时，攻击技能造成的异常状态伤害提高 28%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="EnemyStunDuration",type="BASE",value=10}},"使延长 1 倍 伤害提高 28% "}c["近期内你若有击败敌人，则总伤害额外提高 10%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="Damage",type="MORE",value=10}},nil}
c["受到击中物理伤害的 40% 转化为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsLightning",type="BASE",value=40}},nil}
c["【召唤灵体】的魔力消耗降低 50%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-50}},nil}
c["暴击时攻击伤害的 1% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["+220 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=220}},nil}
c["法术技能无法造成伤害 你的法术被禁用了"]={nil,"法术技能无法造成伤害 你的法术被禁用了 "}c["每个狂怒球提高 5% 闪避值"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=5}},nil}
c["可以施放 1 个额外烙印 烙印技能伤害提高 20% 烙印的附着范围效果扩大 10%"]={{},"可以施放 1 个"}c["角色体型增大 15%"]={nil,"角色体型增大 15% "}c["周围敌人被致盲"]={nil,"周围敌人被致盲 "}c["暴击时有 10% 几率获得暴击球 击中时有 40% 几率使目标中毒 击败敌人时有 10% 几率获得【灵巧】状态 你的暴击伤害无法被反射"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=262144,name="Damage",type="BASE",value=10}},"获得暴击球 时有 40% 几率使目标中毒 击败敌人时有 10% 几率获得【灵巧】状态 你的暴击无法被反射 "}c["每秒回复 5% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=5}},nil}
c["被击中时，每个耐力球可使你获得 5 秒的【猛攻】状态 {variant:3}【猛攻】效果提高 100%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=262144,name="OnslaughtEffect",type="BASE",value=5}},"被时， 秒的【猛攻】状态 {variant:3}提高 100% "}c["近期你每造成一层中毒效果，中毒持续时间便延长 5%"]={{[1]={[1]={type="Multiplier",var="PoisonAppliedRecently"},flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=5}},nil}
c["火焰伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=40}},nil}
c["盾牌提供的能量护盾提高 40%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=40}},nil}
c["护甲提高 420%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=420}},nil}
c["最大生命提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=6}},nil}
c["流血时护甲提高 40%"]={{[1]={[1]={type="Condition",var="Bleeding"},flags=0,keywordFlags=0,name="Armour",type="INC",value=40}},nil}
c["锤类攻击的攻击速度提高 6%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["你获得【猫之隐匿】时也会同时获得自身最大数量的狂怒球和暴击球"]={nil,"你获得【猫之隐匿】时也会同时获得自身最大数量的狂怒球和暴击球 "}c["魔像生命提高 15%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=15}}}},nil}
c["右戒指栏位：+100 最大魔力"]={{[1]={[1]={num=2,type="SlotNumber"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=100}},nil}
c["物理攻击伤害的 0.5% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.5}},nil}
c["拥有【猫之隐匿】时获得【迷踪】状态"]={{[1]={[1]={type="Condition",var="AffectedBy猫之隐匿"},flags=0,keywordFlags=0,name="Condition:Phasing",type="FLAG",value=true}},nil}
c["爪类攻击的伤害提高 10%"]={{[1]={flags=262144,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["被击中时，每个耐力球可使你获得 5 秒的【猛攻】状态"]={{},"被时， 秒的【猛攻】状态 "}c["锤类攻击的伤害提高 12%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["占用所有武器栏位 该装备的攻击暴击率提高 90%"]={{[1]={flags=134217729,keywordFlags=0,name="CritChance",type="INC",value=90}},"占用所有栏位 该装备的 "}c["被击中时，每个耐力球可使你获得 2 秒的【猛攻】状态"]={{},"被时， 秒的【猛攻】状态 "}c["被击中时，每个耐力球可使你获得 1 秒的【猛攻】状态"]={{},"被时， 秒的【猛攻】状态 "}c["更明显打击效果 {variant:1}击中时 10% 几率造成流血"]={{[1]={flags=0,keywordFlags=262144,name="BleedChance",type="BASE",value=10}},"更明显打击效果 {variant:1}时  "}c["周围至少有 1 个友军时，攻击总伤害额外提高 10%"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="NearbyAlly"},flags=0,keywordFlags=0,name="Damage",type="MORE",value=10}},nil}
c["有 15% 几率使用药剂时不消耗充能"]={{},"不消耗充能 "}c["混沌伤害提高 65%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=65}},nil}
c["被感电后，你有 1 秒免疫感电"]={nil,"被感电后，你有 1 秒免疫感电 "}c["每个暴击球为法术附加 10 - 20 基础冰霜伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=131072,name="ColdMin",type="BASE",value=10},[2]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=131072,name="ColdMax",type="BASE",value=20}},nil}
c["每秒生命偷取提高 30%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=30}},nil}
c["此物品上的技能石受到 5 级的 元素扩散 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=5,skillId="SupportElementalProliferation"}}},nil}
c["护甲提高 125%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=125}},nil}
c["+45% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=45}},nil}
c["击中没有暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NoCritMultiplier",type="FLAG",value=true}},nil}
c["无法格挡攻击"]={{[1]={flags=0,keywordFlags=0,name="CannotBlockAttacks",type="FLAG",value=true}},nil}
c["格挡时有 50% 几率制造奉献地面"]={{},"格挡时制造奉献地面 "}c["使用尊严时，你的击中恐吓敌人 4 秒"]={nil,"使用尊严时，你的击中恐吓敌人 4 秒 "}c["+50% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=50}},nil}
c["附加 1 - 25 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=25}},nil}
c["击败敌人时，召唤生物获得【不洁之力】，持续 10 秒 {variant:3}召唤生物获得额外混沌伤害，其数值等同于元素伤害的 20%"]={{},"击败敌人时，【不洁之力】，持续 10 秒 {variant:3}召唤生物获得"}c["击败敌人时，召唤生物获得【不洁之力】，持续 10 秒"]={nil,"击败敌人时，【不洁之力】，持续 10 秒 "}c["召唤生物的最大生命降低 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=-20}}}},nil}
c["+8% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=8}},nil}
c["+15 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=15}},nil}
c["近期内，每个击中你的元素可使你所承受的该元素伤害降低 8%"]={{[1]={[1]={type="Condition",var="HitByFireDamageRecently"},flags=0,keywordFlags=0,name="FireDamageTaken",type="INC",value=-8},[2]={[1]={type="Condition",var="HitByColdDamageRecently"},flags=0,keywordFlags=0,name="ColdDamageTaken",type="INC",value=-8},[3]={[1]={type="Condition",var="HitByLightningDamageRecently"},flags=0,keywordFlags=0,name="LightningDamageTaken",type="INC",value=-8}},nil}
c["药剂效果套用于你的魔卫和灵体身上"]={{[1]={[1]={skillNameList={[1]="魔卫复苏",[2]="召唤灵体"},type="SkillName"},flags=0,keywordFlags=0,name="FlasksApplyToMinion",type="FLAG",value=true}},nil}
c["使用此武器攻击时，每 10 点智慧附加 1 - 10 基础闪电伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=10}},nil}
c["被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾"]={nil,"被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 "}c["【烙印召回】冷却回复速度提高 30%"]={{[1]={[1]={skillName="烙印召回",type="SkillName"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=30}},nil}
c["药剂每 3 秒获得 3 次使用机会 伤害穿透敌人 6% 的火焰、冰霜、闪电抗性 有 15% 几率使用药剂时不消耗充能"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=6}},"药剂每 3 秒获得 3 次使用机会  有 15% 几率不消耗充能 "}c["+25% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=25}},nil}
c["伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["技能魔力消耗降低 5%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-5}},nil}
c["击败敌人时回复 2% 最大生命 击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力"]={nil,"击败敌人时回复 2% 最大生命 击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力 "}c["+6 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=6}},nil}
c["+90% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=90}},nil}
c["+20 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=20}},nil}
c["持续冰霜伤害效果提高 35%"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="INC",value=35}},nil}
c["所有物品上装备的【混沌法术技能石】等级 +2"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keywordList={[1]="active_skill",[2]="chaos_spell",[3]=0},value=2}}},nil}
c["若近期内你获得暴走状态，击败敌人时额外获得 1 个瓦尔灵魂 暴走"]={{},"若近期内你获得暴走状态，击败敌人时"}c["攻击附加 1 - 4 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=4}},nil}
c["攻击和法术附加 2 - 3 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=2},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=3}},nil}
c["不会承受反射的元素伤害 你身上的捷效果提高 40% 你击中造成的感电，必定会使对方所承受伤害提高至少 10% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=262144,name="ElementalDamage",type="INC",value=40}}}},"不会承受反射的 你身上的捷效果 你造成的感电，必定会使对方所承受伤害提高至少 10% +1 数量上限 "}c["攻击附加 2-3 基础火焰伤害"]={{[1]={flags=1,keywordFlags=0,name="FireMin",type="BASE",value=2},[2]={flags=1,keywordFlags=0,name="FireMax",type="BASE",value=3}},nil}
c["命中值提高 30%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=30}},nil}
c["该装备的护甲与闪避提高 200%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=200}},nil}
c["对没有受到元素异常状态的敌人的暴击率提高 100%"]={{[1]={[1]={actor="enemy",neg=true,type="ActorCondition",varList={[1]="Frozen",[2]="Chilled",[3]="Shocked",[4]="Ignited"}},[2]={type="Condition",var="Effective"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=100}},nil}
c["【旗帜技能】不保留魔力"]={{[1]={[1]={skillNameList={[1]="恐怖之旗",[2]="战旗"},type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["近期每失去一个耐力球，总伤害额外提高 3%，最大 15%"]={{},"，最大 15% "}c["图腾的生命提高 25%"]={{[1]={flags=0,keywordFlags=0,name="TotemLife",type="INC",value=25}},nil}
c["无法造成暴击"]={{[1]={flags=0,keywordFlags=0,name="NeverCrit",type="FLAG",value=true}},nil}
c["此物品上的技能石受到 20 级的 法术图腾 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="SupportSpellTotem"}}},nil}
c["此物品上的技能石受到 14 级的 法术图腾 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=14,skillId="SupportSpellTotem"}}},nil}
c["法术伤害提高 14%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["近期内你若有使用战吼，你和周围友军的伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=30}}}},nil}
c["击败敌人时，有 10% 几率获得 4 秒【迷踪】状态"]={{},"击败敌人时，获得 4 秒【迷踪】状态 "}c["最大生命提高 3%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=3}},nil}
c["瓦尔冥约"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="瓦尔冥约"}},nil}
c["烈士意志"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="烈士意志"}},nil}
c["完美苦痛"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="完美苦痛"}},nil}
c["受到【闪电净化】影响时，不受感电地面影响 {variant:60}受到【闪电净化】影响时，承受的反射闪电伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy闪电净化"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=-50}},"不受感电地面影响 {variant:60}受到【闪电净化】影响时，承受的反射 "}c["苦痛灵曲"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="苦痛灵曲"}},nil}
c["若你没有【肾上腺素】，则低血时获得【肾上腺素】，持续 20 秒"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainAdrenaline",type="FLAG",value=true}},nil}
c["你身上的捷效果提高 40%"]={{[1]={[1]={skillType=63,type="SkillType"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=40}},nil}
c["命中值提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["复仇之灵"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="复仇之灵"}},nil}
c["召唤生物的移动速度提高 25%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=25}}}},nil}
c["召唤生物的施法速度提高 3%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=3}}}},nil}
c["元素之相"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="元素之相"}},nil}
c["若近期有引爆过地雷，则地雷所使用的技能范围伤害提高 30%"]={{[1]={[1]={type="Condition",var="DetonatedMinesRecently"},flags=512,keywordFlags=8192,name="Damage",type="INC",value=30}},nil}
c["附加 10 - 14 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=14}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["火焰、冰霜、闪电伤害提高 26%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=26}},nil}
c["【猛攻】效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="OnslaughtEffect",type="INC",value=10}},nil}
c["处于魔力药剂持续时间内时，攻击和施法速度提高 8%"]={{[1]={flags=1,keywordFlags=0,name="Mana",type="INC",value=8}},"处于药剂持续时间内时，和施法速度 "}c["此物品上的技能石受到 10 级的 击退 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportKnockback"}}},nil}
c["插槽无法被调整"]={nil,"插槽无法被调整 "}c["该装备的能量护盾提高 125%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=125}},nil}
c["元素伤害提高 26%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=26}},nil}
c["反射 1 - 250 闪电伤害给近战攻击者"]={nil,"反射 1 - 250 闪电伤害给近战攻击者 "}c["该装备的能量护盾提高 210%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=210}},nil}
c["生命回满时不会取消生命偷取效果 偷取时攻击伤害提高 50% 偷取时承受的伤害降低 6%"]={{[1]={[1]={type="Condition",var="Leeching"},[2]={type="Condition",var="Leeching"},flags=1,keywordFlags=0,name="Life",type="INC",value=50}},"回满时不会取消生命偷取效果 伤害 承受的伤害降低 6% "}c["法术伤害提高 7%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=7}},nil}
c["15% 的火焰伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageConvertToChaos",type="BASE",value=15}},nil}
c["攻击和法术暴击率提高 100%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=100}},nil}
c["持长杖时法术伤害格挡几率提高 2%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=2}},nil}
c["智慧提高 18%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=18}},nil}
c["你的魔像变得很有攻击性"]={nil,"你的变得很有攻击性 "}c["被你至少覆盖 1 层蜘蛛网的敌人伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-10}},"被你至少覆盖 1 层蜘蛛网的敌人 "}c["法术伤害提高 50%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["【闪现射击】和【魅影射击】冷却回复速度提高 100%"]={{[1]={[1]={skillName="闪现射击",type="SkillName"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=100},[2]={[1]={skillName="魅影射击",type="SkillName"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=100}},nil}
c["若范围内含有 40 点力量，\n则【劈砍】击中时获得护体效果"]={nil,"若范围内含有 40 点力量，\n则【劈砍】击中时获得护体效果 "}c["诅咒持续时间延长 25%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=25}},nil}
c["装备时触发 20 级的主动技能【失明光环】 附加 22 - 44 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=22},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=44}},"装备时触发 20 级的主动技能【失明光环】  "}c["插槽内的诅咒技能无视诅咒限制 +40 智慧"]={{[1]={flags=0,keywordFlags=2,name="Int",type="BASE",value=40}},"插槽内的无视诅咒限制   "}c["近期内你若引爆过地雷，则地雷放置速度提高 20%"]={{[1]={[1]={type="Condition",var="DetonatedMinesRecently"},flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=20}},nil}
c["你技能的非诅咒类光环效果提高 14%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=14}},nil}
c["召唤【德瑞的塑像】时可以触发插槽内的诅咒技能"]={nil,"召唤【德瑞的塑像】时可以触发插槽内的诅咒技能 "}c["流血伤害提高 50%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=50}},nil}
c["获得 20 级的的主动技能【召唤德瑞的塑像】技能"]={nil,nil}
c["药剂持续期间，获得的充能数降低 30%"]={{},"的充能数 "}c["弓类攻击 +15% 暴击伤害加成"]={{[1]={flags=131072,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["你击败的敌人身上每有一层中毒，回复 0.5% 生命"]={nil,"你击败的敌人身上每有一层中毒，回复 0.5% 生命 "}c["该装备的能量护盾提高 220%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=220}},nil}
c["被感电后，你有 1 秒免疫感电 {variant:2}被感电后，你有 3 秒免疫感电"]={nil,"被感电后，你有 1 秒免疫感电 {variant:2}被感电后，你有 3 秒免疫感电 "}c["该装备的能量护盾提高 90%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=90}},nil}
c["当移动时，魔力回复速度提高 35%"]={{[1]={[1]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=35}},nil}
c["药剂持续期间，能量护盾延后 30% 开始回复"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=30}},nil}
c["物理伤害提高 175%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=175}},nil}
c["+45 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=45}},nil}
c["附加 98 - 121 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=98},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=121}},nil}
c["受到你嘲讽的敌人所承受的伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="Taunted"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=20}}}},nil}
c["每有一个影响你的捷光环，则避免晕眩的几率提高 35%"]={{},"每有一个影响你的捷光环，则避免晕眩的几率 "}c["你的诅咒对有【无咒】词缀的敌人依然有效"]={{[1]={flags=0,keywordFlags=0,name="CursesIgnoreHexproof",type="FLAG",value=true}},nil}
c["副手攻击和法术附加 65 - 120 基础混沌伤害"]={{[1]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ChaosMin",type="BASE",value=65},[2]={[1]={num=2,type="InSlot"},flags=0,keywordFlags=196608,name="ChaosMax",type="BASE",value=120}},nil}
c["近战暴击有 25% 几率造成流血"]={{[1]={flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=25}},"暴击 "}c["药剂持续期间，获得额外混沌伤害，其数值等同于 20% 物理伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=20}},nil}
c["召唤生物击中时有 15% 几率使敌人致盲 此物品上的【召唤生物技能石】由 16 级的 生命偷取 辅助"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=262144,name="Life",type="BASE",value=15}}}},"时使敌人致盲 此物品上的【召唤生物技能石】由 16 级的 偷取 辅助 "}c["锤类和短杖攻击的命中值提高 8%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["召唤生物免疫致盲 召唤生物击中时有 15% 几率使敌人致盲"]={{},"免疫致盲 召唤生物时使敌人致盲 "}c["耐力球达到上限时，受到的火焰、冰霜、闪电伤害降低 8%"]={{[1]={[1]={stat="EnduranceCharges",thresholdStat="EnduranceChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=-8}},nil}
c["每个狂怒球可使移动速度提高 2%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=2}},nil}
c["召唤生物持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Duration",type="INC",value=30}}}},nil}
c["敌人被点燃的持续时间延长 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=40}},nil}
c["每秒 2 基础魔力回复"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=2}},nil}
c["当你没有获得【霸体】时，获得【远射】"]={{[1]={[1]={neg=true,type="Condition",var="Have霸体Keystone"},flags=0,keywordFlags=0,name="FarShot",type="FLAG",value=true}},nil}
c["+61 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=61}},nil}
c["魔力回复速度提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=100}},nil}
c["地雷引爆速度提高 10%"]={{},"引爆速度 "}c["反射 15 火焰伤害给近战攻击者"]={nil,"反射 15 火焰伤害给近战攻击者 "}c["锤类攻击的物理伤害提高 12%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["当能量护盾归零时，伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=30}},"当归零时，伤害 "}c["每 10 点奉献使召唤生物攻击和施法速度提高 1%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="Speed",type="INC",value=1}}}},nil}
c["+20% 几率被感电 被击中时 30% 的闪电伤害优先从魔力优先扣除"]={{[1]={flags=0,keywordFlags=262144,name="LightningDamage",type="BASE",value=20}},"被感电 被时 30% 的优先从魔力优先扣除 "}c["从生命偷取中获得的每秒最大总恢复量降低 50%"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="INC",value=-50}},nil}
c["对被冰冻敌人造成伤害的 1% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Frozen"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["物理伤害提高 250%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=250}},nil}
c["+95 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=95}},nil}
c["当你拥有兽化的召唤生物时，攻击附加 16 - 25 基础物理伤害"]={{[1]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=16},[2]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=25}},nil}
c["当你拥有兽化的召唤生物时，攻击时附加 19 - 29 基础混沌伤害"]={{[1]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=65536,name="ChaosMin",type="BASE",value=19},[2]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=65536,name="ChaosMax",type="BASE",value=29}},nil}
c["当你拥有兽化的召唤生物时，攻击和移动速度提高 15%"]={{[1]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=0,name="Speed",type="INC",value=15},[2]={[1]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["匕首攻击的暴击率提高 25%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["每个幽灵护罩可使攻击和施法速度提高 12%"]={{[1]={[1]={type="Multiplier",var="GhostShroud"},flags=0,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["中毒伤害提高 16%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=16}},nil}
c["当你拥有兽化的召唤生物时，投射物攻击击中时有 20% 几率造成中毒"]={{[1]={[1]={skillType=1,type="SkillType"},[2]={skillType=3,type="SkillType"},[3]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=20}},nil}
c["此物品上的技能石受到 10 级的 寒冰转烈焰 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportColdToFire"}}},nil}
c["当你拥有兽化的召唤生物时，投射物攻击击中时有 20% 几率造成瘫痪 {variant:2}当你拥有兽化的召唤生物时，投射物攻击击中时有 20% 几率造成中毒"]={{[1]={[1]={type="Condition",var="HaveBestialMinion"},[2]={type="Condition",var="HaveBestialMinion"},flags=1,keywordFlags=0,name="ProjectileCount",type="BASE",value=20}},"击中时造成瘫痪 {variant:2}投射物攻击击中时有 20% 几率造成中毒 "}c["投射物攻击技能的暴击率提高 60%"]={{[1]={[1]={skillType=1,type="SkillType"},[2]={skillType=3,type="SkillType"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["获得 20 级的【召唤兽化之爪】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillName="召唤兽化之爪",type="SkillName"}}},nil}
c["无视诅咒数量上限，当格挡投射物攻击时施放 15 级【时空锁链】"]={nil,"无视诅咒数量上限，当格挡投射物攻击时施放 15 级【时空锁链】 "}c["获得 20 级的【召唤兽化恐喙鸟】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillName="召唤兽化恐喙鸟",type="SkillName"}}},nil}
c["可以从野蛮人的起点配置天赋"]={{},nil}
c["右戒指栏位：法术的投射物会额外弹射 1 次"]={{[1]={[1]={num=2,type="SlotNumber"},flags=1026,keywordFlags=0,name="ChainCountMax",type="BASE",value=1}},nil}
c["击中敌人时有 5% 几率使敌人被衰弱 {variant:2}击中敌人时有 10% 几率使敌人被衰弱"]={{},"敌人时使敌人被衰弱 {variant:2}击中敌人时有 10% 几率使敌人被衰弱 "}c["-30% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=-30}},nil}
c["+20% 图腾技能暴击伤害加成"]={{[1]={flags=0,keywordFlags=16384,name="CritMultiplier",type="BASE",value=20}},nil}
c["受到击中火焰伤害的 10% 转化为物理伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTakenAsPhysical",type="BASE",value=10}},nil}
c["【召唤魔侍】可以召唤 4 个额外魔侍勇士"]={nil,"可以召唤 4 个额外魔侍勇士 "}c["受到的火焰伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTaken",type="INC",value=20}},nil}
c["药剂持续期间，闪电伤害的 30% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LightningDamageLifeLeech",type="BASE",value=30}},nil}
c["持盾牌时攻击造成的物理伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["−5% 火焰抗性上限 {variant:2}-50% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=-50}},"−5%  {variant:2} 火焰抗性 "}c["【召唤灵体】技能石等级 +1"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",skillName="召唤灵体",type="SkillName",value="1"}}},nil}
c["60 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=60}},nil}
c["该装备的攻击暴击率提高 80%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=80}},nil}
c["+33% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=33}},nil}
c["被动物击中时承受 (-50--40) 物理伤害"]={{[1]={flags=0,keywordFlags=262144,name="PhysicalDamage",type="BASE",value=-50}},"被动物时承受 (--40)  "}c["在效果持续期间，对位于奉献地面之上的敌人的暴击几率 +2%"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={actor="enemy",type="ActorCondition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=2}},nil}
c["闪避值提高 240%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=240}},nil}
c["锤类和短杖攻击的伤害提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["物理伤害提高 185%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=185}},nil}
c["闪避值提高 380%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=380}},nil}
c["物品稀有度提高 60%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=60}},nil}
c["可以施放 1 个额外烙印"]={nil,"可以施放 1 个额外烙印 "}c["近期内你若被击中，则闪避值提高 50%"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=50}},nil}
c["周围敌人的生命回复降低 100%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=-100}},"周围敌人的回复 "}c["双持时，攻击技能造成的异常状态伤害提高 18%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=18}},nil}
c["+15% 法术暴击伤害加成"]={{[1]={flags=2,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["被击中时有 10% 几率获得耐力球"]={{},"被时获得耐力球 "}c["法杖攻击附加 3 - 57 基础闪电伤害"]={{[1]={flags=8388608,keywordFlags=0,name="LightningMin",type="BASE",value=3},[2]={flags=8388608,keywordFlags=0,name="LightningMax",type="BASE",value=57}},nil}
c["你的冰霜伤害可以点燃但无法冰冻或冰缓"]={{[1]={flags=0,keywordFlags=0,name="ColdCanIgnite",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="ColdCannotFreeze",type="FLAG",value=true},[3]={flags=0,keywordFlags=0,name="ColdCannotChill",type="FLAG",value=true}},nil}
c["冰霜伤害的 0.2% 会转化为能量护盾偷取"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageEnergyShieldLeech",type="BASE",value=0.2}},nil}
c["闪避值提高 120%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=120}},nil}
c["攻击附加 60 - 80 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=60},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=80}},nil}
c["使用时回复生命上限 50% 的生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=50}},"使用时回复上限 生命 "}c["攻击附加 13 - 24 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=65536,name="ColdMin",type="BASE",value=13},[2]={flags=0,keywordFlags=65536,name="ColdMax",type="BASE",value=24}},nil}
c["+30% 法术暴击伤害加成"]={{[1]={flags=2,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["击中敌人时，用 10 级的【暗影印记】诅咒敌人"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,noSupports=true,skillId="AssassinsMark"}}},nil}
c["闪避值提高 150%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=150}},nil}
c["敌人晕眩门槛降低 23%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-23}},nil}
c["源:由传奇【狐毛铠】 使用 预言【黑暗本能】 升级 等级需求: 54"]={nil,"源:由传奇【狐毛铠】 使用 预言【黑暗本能】 升级 等级需求: 54 "}c["当你的任何陷阱被敌人触发时，有 10% 的几率获得 1 个耐力球、狂怒球或暴击球"]={{},"当你的任何被敌人触发时，有 几率获得 1 个耐力球、狂怒球或暴击球 "}c["满血时闪避值提高 +500"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=500}},nil}
c["满血时闪避值提高 +150"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=150}},nil}
c["攻击附加 5 - 12 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=12}},nil}
c["复苏的魔卫最大生命提高 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=100}}}},nil}
c["攻击速度提高 6%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["耐力球，狂怒球，以及暴击球的持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=20},[2]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=20},[3]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=20}},nil}
c["闪避值提高 140%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=140}},nil}
c["能量护盾全满时，移动速度提高 20%"]={{[1]={[1]={type="Condition",var="FullEnergyShield"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["无法回复生命"]={{[1]={flags=0,keywordFlags=0,name="NoLifeRegen",type="FLAG",value=true}},nil}
c["击中被诅咒的敌人时造成中毒"]={nil,"击中被诅咒的敌人时造成中毒 "}c["移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=8}},nil}
c["你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 你拥有耐力球时，承受的元素伤害降低 5% 你拥有暴击球时，伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},[2]={stat="PowerCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=16384,name="ElementalDamageTaken",type="BASE",value=15}},"你或你的击败敌人时获得 1 个暴击球 降低 5% 伤害穿透 5% 火焰、冰霜、闪电抗性 "}c["击败敌人时有 20% 几率触发 20 级的【召唤异动奇点】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="20",skillId="召唤异动奇点"}}},nil}
c["身上未装备已腐化的物品时，最大生命提高 12%"]={{[1]={[1]={threshold=0,type="MultiplierThreshold",upper=true,var="CorruptedItem"},flags=0,keywordFlags=0,name="Life",type="INC",value=12}},nil}
c["攻击速度提高 7%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=7}},nil}
c["当你的图腾死亡时，玩家受到 1 个 20 级的随机诅咒"]={nil,"当你的图腾死亡时，玩家受到 1 个 20 级的随机诅咒 "}c["每个你召唤出的魔像可使魔像伤害提高 20% 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个你召唤出的可使魔像 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 "}c["近战单手武器攻击的攻击速度提高 8%"]={{[1]={flags=301989889,keywordFlags=0,name="Speed",type="INC",value=8}},nil}
c["60% 的闪电伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningDamageConvertToChaos",type="BASE",value=60}},nil}
c["近战技能的范围效果提高 5%"]={{[1]={flags=256,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["敏捷提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=15}},nil}
c["近战单手武器攻击的物理伤害提高 16%"]={{[1]={flags=301989888,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["击中时有 10% 几率偷取暴击，狂怒和耐力球 {variant:1}耐力球，狂怒球，以及暴击球的持续时间缩短 30%"]={{[1]={flags=0,keywordFlags=262144,name="PowerChargesDuration",type="BASE",value=10},[2]={flags=0,keywordFlags=262144,name="FrenzyChargesDuration",type="BASE",value=10},[3]={flags=0,keywordFlags=262144,name="EnduranceChargesDuration",type="BASE",value=10}},"时偷取暴击，狂怒和耐力球 {variant:1}缩短 30% "}c["你施放的非光环类诅咒不会因垂死的敌人而移除"]={nil,"你施放的非光环类诅咒不会因垂死的敌人而移除 "}c["力量提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=15}},nil}
c["远程武器攻击的物理伤害提高 13%"]={{[1]={flags=67108864,keywordFlags=0,name="PhysicalDamage",type="INC",value=13}},nil}
c["远程武器攻击的物理伤害提高 15%"]={{[1]={flags=67108864,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["敌人晕眩门槛降低 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-15}},nil}
c["闪电法术的 15% 物理伤害转换为闪电伤害"]={{[1]={flags=2,keywordFlags=64,name="PhysicalDamageConvertToLightning",type="BASE",value=15}},nil}
c["受到的持续性混沌伤害降低 25%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageTakenOverTime",type="INC",value=-25}},nil}
c["物品掉落数量提高 20%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=20}},nil}
c["若你至少拥有 800 点敏捷，可以投掷地雷的技能就会最多额外投掷 1 个地雷 {variant:1}地雷放置速度降低 15%"]={{[1]={flags=0,keywordFlags=8192,name="Dex",type="BASE"}},"若你至少拥有 800 点，可以就会最多"}c["−10 承受的混沌伤害"]={nil,"−10 承受的混沌伤害 "}c["+50 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=50}},nil}
c["召唤生物有 +10% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=10}}}},nil}
c["护甲提高 80%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=80}},nil}
c["60% 几率避免致盲 承受的来自致盲敌人的伤害降低 5%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE",value=60}},"避免致盲 承受的来自致盲敌人的降低 5% "}c["近战暴击时有 10% 几率获得 1 个耐力球 持长杖时，攻击类技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="UsingStaff"},flags=256,keywordFlags=0,name="Damage",type="BASE",value=10}},"获得 1 个耐力球 攻击类技能造成的异常状态提高 30% "}c["10% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},nil}
c["匕首攻击的伤害提高 24%"]={{[1]={flags=524288,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["----------------------------"]={nil,"---------------------------- "}c["每个召唤的魔像可使魔像的伤害提高 20% 每个召唤的魔像可使你有 35% 几率避免元素异常状态 每个召唤的魔像可使它们为你提供的增益效果提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=2048,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使魔像的 每个召唤的魔像可使你有 35% 几率避免元素 每个召唤的魔像可使它们为你提供的增益效果提高 25% "}c["对流血敌人的攻击和法术基础暴击伤害加成提高 +40%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="CritMultiplier",type="BASE",value=40},[2]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="4",type="BASE",value=40}},nil}
c["敌人的投射物会穿透你"]={nil,"敌人的投射物会穿透你 "}c["法术暴击率提高 45%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=45}},nil}
c["此物品上的技能石受到 15 级的穿透辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=15,skillId="SupportPierce"}}},nil}
c["护甲提高 250%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=250}},nil}
c["+500 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=500}},nil}
c["受到的非混沌伤害有 50% 穿透能量护盾 获得等同 20% 最大生命的额外最大能量护盾"]={nil,"受到的非混沌伤害有 50% 穿透能量护盾 获得等同 20% 最大生命的额外最大能量护盾 "}c["+1000 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=1000}},nil}
c["击中时有 10% 获得 1 个暴击球、狂怒球或耐力球"]={nil,"击中时有 10% 获得 1 个暴击球、狂怒球或耐力球 "}c["没有插槽"]={{[1]={flags=0,keywordFlags=0,name="NoSockets",type="FLAG",value=true}},nil}
c["物品稀有度提高 40%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=40}},nil}
c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% 你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命 你和周围队友的移动速度提高 12%"]={{},"当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% 你和周围友军从你放置的旗帜中每个位阶能12% "}c["力量需求降低 30%"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="INC",value=-30}},nil}
c["每个【召唤纯净哨兵】的范围效果扩大 10% 召唤的哨兵会使用【圣战猛击】 召唤生物命中值提高 100% 召唤生物在击中时威吓敌人 4 秒 近期内你若击中敌人，你和周围友军每秒回复 3.0% 生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=262144,name="AreaOfEffect",type="INC",value=10}}}},"每个【召唤纯净哨兵】的 召唤的哨兵会使用【圣战猛击】 命中值提高 100% 召唤生物在时威吓敌人 4 秒 近期内你若击中敌人，你和周围友军每秒回复 3.0% 生命 "}c["获得暴击球时有 25% 几率获得 1 个耐力球"]={{},"获得暴击球时获得 1 个耐力球 "}c["近战击中时有 10% 几率获得护体效果 受到你嘲讽的敌人所承受的伤害提高 10%"]={{[1]={flags=256,keywordFlags=0,name="DamageTaken",type="BASE",value=10}},"击中时获得护体效果 受到你嘲讽的敌人所提高 10% "}c["生命回满时不会取消生命偷取效果 忆境物品"]={nil,"生命回满时不会取消生命偷取效果 忆境物品 "}c["+45 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=45},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=45},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=45}},nil}
c["双持时攻击伤害格挡几率 +1%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=1}},nil}
c["受到防卫技能增益效果影响时，获得 4% 额外物理伤害减伤"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=4}},"受到防卫技能增益效果影响时，获得  "}c["+1 暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesMax",type="BASE",value=1}},nil}
c["击败敌人后 3 秒内持续承受 450 混沌伤害 瘀血爪印"]={nil,"击败敌人后 3 秒内持续承受 450 混沌伤害 瘀血爪印 "}c["你身上的每层中毒状态使你获得 +1% 混沌抗性"]={{[1]={[1]={type="Multiplier",var="PoisonStack"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=1}},nil}
c["击败敌人后 10 秒内持续承受 450 混沌伤害 {variant:2,3}击败敌人后 3 秒内持续承受 450 混沌伤害"]={nil,"击败敌人后 10 秒内持续承受 450 混沌伤害 {variant:2,3}击败敌人后 3 秒内持续承受 450 混沌伤害 "}c["+24% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=24}},nil}
c["对敌人的感电效果持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=100}},nil}
c["回复量提高 50%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecovery",type="INC",value=50}},nil}
c["冰缓地面的效果提高 40%"]={{},"冰缓地面的效果 "}c["你施放的非光环类诅咒不会因垂死的敌人而移除 {variant:3}灵枢附近的敌人受到【诅咒】影响时致盲"]={nil,"你施放的非光环类诅咒不会因垂死的敌人而移除 {variant:3}灵枢附近的敌人受到【诅咒】影响时致盲 "}c["若你有至少 150 点智慧，则中毒持续时间延长 20%"]={{[1]={[1]={stat="Int",threshold=150,type="StatThreshold"},flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=20}},nil}
c["双持攻击的命中值提高 15%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["护甲提高 350%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=350}},nil}
c["击败感电敌人后物品稀有度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},"击败感电敌人后 "}c["【迷踪】状态时有 10% 几率躲避法术伤害击中"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=10}},nil}
c["被冰缓时不会被感电"]={nil,"被冰缓时不会被感电 "}c["在药剂生效期间，你造成的中毒效果有 40% 几率伤害提高 100%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=1048576,name="Damage",type="INC",value=100}},nil}
c["+10 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=10},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=10}},nil}
c["15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50%"]={{[1]={flags=0,keywordFlags=0,name="NonChaosDamageGainAsChaos",type="BASE",value=7.5}},nil}
c["范围效果扩大 30%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=30}},nil}
c["你被感电的持续时间延长 50% 不会受到暴击所造成的额外暴击伤害"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=50}},"你被感电的 不会受到暴击所造成的额外暴击伤害 "}c["近期内你若有施放法术，则攻击伤害提高 50%"]={{[1]={[1]={type="Condition",var="CastSpellRecently"},flags=1,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["你技能的非诅咒类光环效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=5}},nil}
c["+2000 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=2000}},nil}
c["武器造成的伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalPenetration",type="BASE",value=5}},nil}
c["受到近战物理伤害的 40% 会反射给攻击者"]={nil,"受到近战物理伤害的 40% 会反射给攻击者 "}c["持长杖时，攻击类技能造成的异常状态伤害提高 28%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=28}},nil}
c["攻击附加 2 - 4 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=2},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=4}},nil}
c["该装备的护甲与闪避提高 125%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=125}},nil}
c["血姿态下击中稀有或传奇敌人有 25% 的几率得到一个挑战球 当处于沙姿态时，击败敌人获得一个挑战球 +10 最大挑战球数量上限"]={{[1]={flags=0,keywordFlags=262144,name="ChallengerChargesMax",type="BASE",value=25}},"血姿态下稀有或传奇敌人有 几率得到一个挑战球 当处于沙姿态时，击败敌人获得一个挑战球 +10  "}c["-30% 周围敌人的暴击伤害"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE",value=-30}}," 周围敌人的暴击 "}c["+32% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=32}},nil}
c["每装备一个塑界者物品，获得额外混沌伤害，其数值等同于元素伤害的 4%"]={{[1]={[1]={type="Multiplier",varList={[1]="ShaperItem"}},flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=4}},nil}
c["+2 锤类和短杖的近战攻击范围"]={{[1]={flags=1048576,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=2}},nil}
c["击中时有 20% 几率用灰烬覆盖稀有或传奇敌人，持续 10 秒。"]={{},"时用灰烬覆盖稀有或传奇敌人，持续 10 秒。 "}c["敌人被冰冻的持续时间延长 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=25}},nil}
c["每装备一个塑界者物品，获得额外混沌伤害，其数值等同于元素伤害的 5%"]={{[1]={[1]={type="Multiplier",varList={[1]="ShaperItem"}},flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=5}},nil}
c["此物品上装备的【近战技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="melee",value=1}}},nil}
c["+100 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=100}},nil}
c["被击中时触发 20 级的【永恒窥视】"]={nil,"被击中时触发 20 级的【永恒窥视】 "}c["周围的敌人无法造成暴击 忆境物品"]={nil,"周围的敌人无法造成暴击 忆境物品 "}c["获得 15 级的【复仇】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="15",skillName="复仇",type="SkillName"}}},nil}
c["当你或你的图腾击败了燃烧中的敌人，"]={nil,"当你或你的图腾击败了燃烧中的敌人， "}c["+10 最大神圣球 满神圣球时，你获得【神性】，持续 10 秒"]={{}," 最大神圣球 满神圣球时，你获得【神性】，持续 10 秒 "}c["你击败被冻结的敌人时触发 20 级的【爆环冰刺】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="TriggeredIcicleNova"}}},nil}
c["无法造成物理伤害"]={{[1]={flags=0,keywordFlags=0,name="WeaponData",type="LIST",value={key="PhysicalMin"}},[2]={flags=0,keywordFlags=0,name="WeaponData",type="LIST",value={key="PhysicalMax"}},[3]={flags=0,keywordFlags=0,name="WeaponData",type="LIST",value={key="PhysicalDPS"}}},nil}
c["召唤生物的最大生命提高 12%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=12}}}},nil}
c["攻击附加 1 - 25 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=25}},nil}
c["非暴击时获得 1 个暴击球"]={nil,"非暴击时获得 1 个暴击球 "}c["药剂持续期间，魔力回复提高 50%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=50}},nil}
c["最大魔力降低 50%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-50}},nil}
c["持盾牌时攻击造成的伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["你受到点燃时，也会点燃周围 12 范围内的敌人"]={nil,"你受到点燃时，也会点燃周围 12 范围内的敌人 "}c["反射的火焰、冰霜、闪电伤害降低 10% 武器造成的伤害穿透 5% 火焰、冰霜、闪电抗性 药剂持续期间，火焰、冰霜、闪电伤害提高 20% 攻击技能的火焰、冰霜、闪电伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=-10}},"反射的 伤害穿透 5% 火焰、冰霜、闪电抗性 火焰、冰霜、闪电伤害提高 20% 攻击技能的火焰、冰霜、闪电伤害提高 20% "}c["你可以对 1 个敌人造成最多 8 次流血 当敌人移动时，你的流血无法造成额外伤害 总流血伤害额外降低 50%"]={{},"你可以对 1 个敌人造成最多 8 "}c["火焰伤害击中时有 10% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=10}},nil}
c["+25% 冰霜与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=25}},nil}
c["该武器对被点燃敌人的击中伤害提高 60%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Ignited"},flags=4,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["烙印的附着范围扩大 10%"]={{},"附着范围 "}c["附加 54 - 81 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=54},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=81}},nil}
c["反射的物理伤害降低 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-20}},"反射的 "}c["击败感电敌人后物品稀有度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=30}},"击败感电敌人后 "}c["近期每有 1 个你的地雷被引爆，则每秒回复 1% 生命，最多 20%"]={{[1]={[1]={limit=20,limitTotal=true,type="Multiplier",var="MineDetonatedRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}},nil}
c["未连结至天赋树的技能，仍然可以在范围内配置"]={{[1]={flags=0,keywordFlags=0,name="JewelData",type="LIST",value={key="intuitiveLeap",value=true}}},nil}
c["有 20% 几率使用药剂时不消耗充能"]={{},"不消耗充能 "}c["近战伤害提高 20%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["击败冰冻敌人后物品掉落数量提高 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=15}},"击败敌人后物品掉落数量 "}c["击败冰冻敌人后物品掉落数量提高 25% {variant:2,3,4,5}击败冰冻敌人后物品掉落数量提高 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=25}},"击败敌人后物品掉落数量 {variant:2,3,4,5}击败冰冻敌人后物品掉落数量提高 15% "}c["击败冰冻敌人后物品掉落数量提高 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=25}},"击败敌人后物品掉落数量 "}c["受到防卫技能增益效果影响时，每秒生命回复 0.5% 最大生命"]={nil,"受到防卫技能增益效果影响时，每秒生命回复 0.5% 最大生命 "}c["附加 1 - 150 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=150}},nil}
c["附加 1 - 100 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=100}},nil}
c["附加 40 - 60 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=60}},nil}
c["附加 1 - 300 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=300}},nil}
c["混沌伤害可以造成感电"]={{[1]={flags=0,keywordFlags=0,name="ChaosCanShock",type="FLAG",value=true}},nil}
c["+700 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=700}},nil}
c["附加 1 - 325 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=325}},nil}
c["闪电伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=100}},nil}
c["攻击速度提高 43%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=43}},nil}
c["附加 1 - 85 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=85}},nil}
c["附加 1 - 75 基础闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=75}},nil}
c["最多可同时拥有额外 1 个魔像"]={{[1]={flags=0,keywordFlags=0,name="ActiveGolemLimit",type="BASE",value=1}},nil}
c["箭矢在分裂后穿透所有目标"]={nil,"箭矢在分裂后穿透所有目标 "}c["箭矢在连锁弹射后穿透所有目标 {variant:3}箭矢在分裂后穿透所有目标"]={nil,"箭矢在连锁弹射后穿透所有目标 {variant:3}箭矢在分裂后穿透所有目标 "}c["技能优先消耗能量护盾，而非魔力"]={{},nil}
c["对敌人施加的非伤害性异常状态效果的伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="INC",value=10},[2]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=10},[3]={flags=0,keywordFlags=0,name="EnemyFreezeEffech",type="INC",value=10}},nil}
c["箭矢在连锁弹射后穿透所有目标"]={nil,"箭矢在连锁弹射后穿透所有目标 "}c["分裂后的箭矢攻击暴击率提高 200% {variant:1}穿透后的箭矢造成流血"]={{[1]={flags=1,keywordFlags=2097152,name="CritChance",type="INC",value=200}},"分裂后的箭矢 {variant:1}穿透后的箭矢造成 "}c["分裂后的箭矢攻击暴击率提高 100%"]={{[1]={flags=1,keywordFlags=0,name="CritChance",type="INC",value=100}},"分裂后的箭矢 "}c["附加 125 - 265 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=125},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=265}},nil}
c["混沌伤害提高 33%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=33}},nil}
c["附加 20 - 55 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=55}},nil}
c["附加 25 - 60 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=25},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=60}},nil}
c["此物品上装备的【弓技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="bow",value=1}}},nil}
c["击中时有 15% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=15}},nil}
c["过去 10 秒内格挡的每个攻击可使你的物理伤害提高 8%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},"过去 10 秒内格挡的每个可使你的 "}c["+12% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=12}},nil}
c["闪避值提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=8}},nil}
c["持长杖时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 40%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},"攻击的 "}c["-10% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-10}},nil}
c["经验值获取提高 3% {variant:2}经验值获取提高 2%"]={{},"经验值获取 {variant:2}经验值获取提高 2% "}c["敌人被晕眩时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=50}},nil}
c["近期内你若有使用战吼，你和周围友军的攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=20}}}},nil}
c["此物品上的技能石受到 20 级的 高阶齐射 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=20,skillId="UniqueSupportGreaterVolley"}}},nil}
c["近期内你若有使用战吼，你和周围友军的攻击速度提高 10%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=10}}}},nil}
c["使用尊严时，你造成的穿刺效果会额外持续 2 次击中"]={{[1]={[1]={type="Condition",var="UsedBy尊严"},flags=0,keywordFlags=0,name="ImpaleStacksMax",type="BASE",value=2}},nil}
c["用弓攻击时额外发射 4 根箭矢"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCount",type="BASE",value=4}},nil}
c["+460 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=460}},nil}
c["+31% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=31}},nil}
c["附加 85 - 160 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=85},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=160}},nil}
c["弓类攻击的暴击率提高 16%"]={{[1]={flags=131072,keywordFlags=0,name="CritChance",type="INC",value=16}},nil}
c["击中时触发 1 级的【深渊战吼】"]={nil,"击中时触发 1 级的【深渊战吼】 "}c["该装备的闪避与能量护盾提高 115%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=115}},nil}
c["法杖攻击的火焰、冰霜、闪电伤害提高 14%"]={{[1]={flags=8388608,keywordFlags=0,name="ElementalDamage",type="INC",value=14}},nil}
c["物理伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=50}},nil}
c["灵枢附近被击败的敌人被【诅咒】引爆，则造成等同它们 3% 生命的物理伤害"]={nil,"灵枢附近被击败的敌人被【诅咒】引爆，则造成等同它们 3% 生命的物理伤害 "}c["持续时间延长 38%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=38}},nil}
c["+8% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=8}},nil}
c["你的闪电伤害会使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="LightningCanPoison",type="FLAG",value=true}},nil}
c["投射物速度提高 75%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=75}},nil}
c["攻击击中每个敌人会回复 +2 魔力"]={{[1]={flags=1,keywordFlags=0,name="ManaOnHit",type="BASE",value=2}},nil}
c["+10 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=10}},nil}
c["近战物理伤害提高 10%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["附加 65 - 155 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=65},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=155}},nil}
c["附加 75 - 358 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=75},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=358}},nil}
c["总伤害额外降低 40%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE",value=-40}},nil}
c["武器总伤害额外降低 40%"]={{[1]={flags=134217728,keywordFlags=0,name="Damage",type="MORE",value=-40}},nil}
c["召唤生物的范围效果扩大 7%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=7}}}},nil}
c["攻击速度提高 100%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=100}},nil}
c["+70 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=70}},nil}
c["附加 130 - 195 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=130},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=195}},nil}
c["当你击碎冰冻的敌人时，制造奉献地面 {variant:2}冰缓地面的效果提高 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyFreezeChance",type="INC",value=40}},"当你击碎的敌人时，制造奉献地面 {variant:2}冰缓地面的效果 "}c["每一级在击败敌人时获得 +1 魔力 {variant:1,2}每一级在击败敌人时获得 +1 能量护盾"]={{[1]={[1]={type="Multiplier",var="Level"},[2]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=1}},"击败敌人时  {variant:1,2}击败敌人时获得 +1 能量护盾 "}c["击中低血的敌人时，伤害提高 50%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=50}},nil}
c["附加 140 - 210 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=140},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=210}},nil}
c["法术伤害的 0.6% 会转化为能量护盾偷取"]={{[1]={flags=2,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=0.6}},nil}
c["周围敌人无法获得暴击，狂怒，或耐力球 你与周围队友共享能量球"]={nil,"周围敌人无法获得暴击，狂怒，或耐力球 你与周围队友共享能量球 "}c["近战攻击速度提高 5%"]={{[1]={flags=257,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["施放光环图腾技能时需要的魔力降低 60% 已腐化"]={{[1]={flags=0,keywordFlags=16384,name="Mana",type="INC",value=-60}},"施放光环时需要的 已腐化 "}c["+6% 持续冰霜伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="BASE",value=6}},nil}
c["物理伤害提高 75%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=75}},nil}
c["使用药剂时产生 2 只敌队的蠕虫"]={nil,"使用药剂时产生 2 只敌队的蠕虫 "}c["斧类攻击的物理伤害提高 12%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["附加 80 - 180 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=80},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=180}},nil}
c["附加 9 - 26 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=9},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=26}},nil}
c["该装备的护甲与闪避提高 60%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=60}},nil}
c["物理伤害提高 163%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=163}},nil}
c["+100 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=100}},nil}
c["药剂回复的生命提高 15%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=15}},nil}
c["暴击伤害特别幸运"]={nil,"暴击伤害特别幸运 "}c["附加 12 - 32 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=12},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=32}},nil}
c["流血伤害提高 15%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=15}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 24% {variant:4}攻击技能的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=24}},"攻击的 {variant:4}攻击技能的火焰、冰霜、闪电伤害提高 24% "}c["你造成的流血伤害生效速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="BleedFaster",type="INC",value=5}},nil}
c["持斧时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["有 4% 几率造成双倍伤害"]={{[1]={flags=0,keywordFlags=0,name="DoubleDamageChance",type="BASE",value=4}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["每 25 点敏捷可以为攻击附加 1 - 3 基础物理伤害"]={{[1]={[1]={div=25,stat="Dex",type="PerStat"},flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=1},[2]={[1]={div=25,stat="Dex",type="PerStat"},flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=3}},nil}
c["武器造成的伤害穿透 8% 闪电抗性"]={{[1]={flags=134217728,keywordFlags=0,name="LightningPenetration",type="BASE",value=8}},nil}
c["附近最少有 2 个稀有或传奇敌人时，承受的伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-10}},"附近最少有 2 个稀有或传奇敌人时， "}c["双持攻击的攻击速度提高 4%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=1,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["该装备的护甲提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=70}},nil}
c["狂怒球持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=10}},nil}
c["持锤时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["右戒指栏位：法术的投射物无法分裂"]={nil,"法术的投射物无法分裂 "}c["+1 近战与空手攻击范围"]={{[1]={flags=0,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1},[2]={flags=0,keywordFlags=0,name="UnarmedRange",type="BASE",value=1}},nil}
c["击败时，回复 2% 生命"]={nil,"击败时，回复 2% 生命 "}c["物理伤害提高 118%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=118}},nil}
c["此物品上的技能石额外获得【元素之相】"]={nil,"额外获得【元素之相】 "}c["箭矢穿透所有目标"]={{[1]={flags=1,keywordFlags=0,name="PierceAllTargets",type="FLAG",value=true}},nil}
c["对致盲敌人的火焰伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="FireDamage",type="INC",value=30}},nil}
c["附加 35 - 45 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=35},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=45}},nil}
c["弓类攻击有 15% 几率造成流血"]={{[1]={flags=131072,keywordFlags=0,name="BleedChance",type="BASE",value=15}},nil}
c["移动时每有 1 个狂怒球，则每秒受到 200 冰霜伤害"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},[2]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="ColdDegen",type="BASE",value=200}},nil}
c["近期你有承受敌人的火焰击中伤害，生命回复速度提高 50% 不受点燃影响"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=50}},"近期你有承受敌人的火焰，生命回复速度 不受点燃影响 "}c["你身上的药剂效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FlaskEffect",type="INC",value=10}},nil}
c["燃烧总伤害额外降低 80% {variant:2}被点燃敌人的燃烧减缓 65%"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE"}}," {variant:2}被的燃烧减缓 65% "}c["命中值提高 35%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=35}},nil}
c["每个暴击球提高 10% 魔力回复速度"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=10}},nil}
c["地雷伤害提高 10%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=10}},nil}
c["附加 150 - 300 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=150},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=300}},nil}
c["获得等同武器物理伤害 100% 的全部三种额外火焰，冰霜和闪电伤害"]={{[1]={flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=100},[2]={flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=100},[3]={flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=100}},nil}
c["爪类攻击的物理伤害提高 20%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["获得等同武器物理伤害 110% 的全部三种额外火焰，冰霜和闪电伤害"]={{[1]={flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=110},[2]={flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=110},[3]={flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=110}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 24% {variant:3,4}攻击技能的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=24}},"攻击的 {variant:3,4}攻击技能的火焰、冰霜、闪电伤害提高 24% "}c["药剂效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="FlaskEffect",type="INC",value=5}},nil}
c["持续伤害效果提高 15%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["从药剂获得的生命回复额外降低 30%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="MORE",value=-30}},nil}
c["获得额外冰霜伤害， 其数值等同于物理伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=20}},nil}
c["击败流血的敌人时产生爆炸，造成等同其 10% 最大生命的物理伤害 流血总伤害额外提高 25%"]={{},"击败的敌人时产生爆炸，造成等同其 10 "}c["每一级在击败敌人时获得 +1 魔力"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=1}},"击败敌人时  "}c["附加 14 - 22 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=22}},nil}
c["召唤生物有 +29% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=29}}}},nil}
c["此物品上装备的【冰霜技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="cold",value=2}}},nil}
c["混沌伤害提高 80%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=80}},nil}
c["近期你有承受敌人的火焰击中伤害，生命回复速度提高 50%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=50}},"近期你有承受敌人的火焰，生命回复速度 "}c["持长杖时 +30% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},[2]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["附加 16 - 24 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=16},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=24}},nil}
c["附加 12 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=12},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=20}},nil}
c["若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 35% 几率获得耐力球"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE",value=35}},"若内含有 40 点，【裂地之击】在晕眩敌人时获得耐力球 "}c["附加 15 - 33 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=33}},nil}
c["受【怨毒光环】影响时，+22% 持续伤害加成"]={{[1]={flags=0,keywordFlags=0,name="DotMultiplier",type="BASE",value=22}},"受【怨毒光环】影响时，  "}c["+24 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=24}},nil}
c["【绝望】的魔力保留降低 100%"]={{[1]={[1]={skillName="绝望",type="SkillName"},flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-100}},nil}
c["可以施放 1 个额外烙印 你每使敌人附着一种烙印，它们受到的伤害便提高 10% 【烙印召回】冷却回复速度提高 30%"]={{},"可以施放 1 个"}c["每个生效中的狂怒球给予 2 秒【猛攻】状态"]={nil,"每个生效中的狂怒球给予 2 秒【猛攻】状态 "}c["用弓攻击时额外发射 1 根箭矢"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCount",type="BASE",value=1}},nil}
c["能量护盾偷取总回复上限额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="MaxEnergyShieldLeechRate",type="MORE",value=-50}},nil}
c["+100% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=100}},nil}
c["命中值提高 23%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=23}},nil}
c["攻击伤害提高 20%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["最大生命提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=8}},nil}
c["受到击中物理伤害的 25% 转化为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageTakenAsChaos",type="BASE",value=25}},nil}
c["25% 的物理伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToChaos",type="BASE",value=25}},nil}
c["附加 20 - 30 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=30}},nil}
c["附加 15 - 20 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=20}},nil}
c["玫红之舞"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="玫红之舞"}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 12% {variant:1,2,3}物理伤害提高 125%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},"攻击的 {variant:1,2,3}物理伤害提高 125% "}c["狂怒球持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=50}},nil}
c["召唤生物的攻击速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=10}}}},nil}
c["物理伤害提高 230%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=230}},nil}
c["投射物速度提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=30}},nil}
c["近距离时，弓类攻击会击退敌人"]={{[1]={[1]={type="Condition",var="AtCloseRange"},flags=131072,keywordFlags=0,name="EnemyKnockbackChance",type="BASE",value=100}},nil}
c["近距离用弓击中后的总伤害额外提高 50%"]={{[1]={[1]={type="Condition",var="AtCloseRange"},flags=131076,keywordFlags=0,name="Damage",type="MORE",value=50}},nil}
c["每个暴击球可使施法速度提高 2%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=16,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["被击中时有 30% 几率获得耐力球 获得耐力球时有 25% 几率转而以提升你的耐力球上限 近期内你若被击中，则每秒获得 1 个耐力球"]={{},"被时获得耐力球 获得耐力球时有 25% 几率转而以提升你的耐力球上限 每秒获得 1 个耐力球 "}c["附加 105 - 253 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=105},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=253}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 12%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},"攻击的 "}c["+8% 非异常状态的持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NonAilmentChaosDotMultiplier",type="BASE",value=8}},nil}
c["每个绿色插槽 +10% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},[2]={type="Multiplier",var="GreenSocketIn{SlotName}"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=10}},nil}
c["投射物速度提高 23%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=23}},nil}
c["用弓攻击时额外发射 2 根箭矢"]={{[1]={flags=1,keywordFlags=0,name="ProjectileCount",type="BASE",value=2}},nil}
c["附加 115 - 265 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=115},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=265}},nil}
c["冰缓效果提高 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=20}},nil}
c["爪类攻击的伤害提高 20%"]={{[1]={flags=262144,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["附加 70 - 210 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=70},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=210}},nil}
c["斧类攻击的伤害提高 12%"]={{[1]={flags=65536,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["对流血敌人附加 110 - 158 基础物理伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="PhysicalMin",type="BASE",value=110},[2]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="PhysicalMax",type="BASE",value=158}},nil}
c["攻击打出暴击时，有 50% 几率造成瘫痪 【未鉴定词缀】"]={{},"打出造成瘫痪 【未鉴定词缀】 "}c["攻击打出暴击时，有 50% 几率造成瘫痪"]={{},"打出造成瘫痪 "}c["对流血敌人附加 120 - 165 基础物理伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="PhysicalMin",type="BASE",value=120},[2]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="PhysicalMax",type="BASE",value=165}},nil}
c["受到【迅捷】影响时，你身上的减益效果消失速度加快 20%"]={nil,"受到【迅捷】影响时，你身上的减益效果消失速度加快 20% "}c["召唤生物获得等同 10% 最大生命的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeGainAsEnergyShield",type="BASE",value=10}}}},nil}
c["因你而流血的敌人给予的药剂充能提高 100% 对流血敌人附加 120 - 165 基础物理伤害"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=2359296,name="PhysicalDamage",type="INC",value=100}},"因你而的敌人给予的药剂充能 附加 120 - 165 基础 "}c["召唤生物有 +15% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=15}}}},nil}
c["每个耐力球增加 +500 点护甲"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=500}},nil}
c["护甲提高 60%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=60}},nil}
c["攻击打出暴击时，有 50% 几率造成流血 因你而流血的敌人给予的药剂充能提高 100%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=50}},"打出 因你而流血的敌人给予的药剂充能提高 100% "}c["每 10 点奉献使非诅咒类光环效果提高 1%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=1}},nil}
c["+120 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=120}},nil}
c["该装备的护甲与能量护盾提高 180%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=180}},nil}
c["该装备的攻击暴击率提高 26%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=26}},nil}
c["-60% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=-60}},nil}
c["法术暴击率提高 150%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=150}},nil}
c["+24 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=24},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=24}},nil}
c["受到【愤怒】影响时，获得物理伤害 25% 的额外火焰伤害"]={{[1]={[1]={type="Condition",var="AffectedBy愤怒"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=25}},nil}
c["获得额外混沌伤害，其数值等同于元素伤害的 15%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=15}},nil}
c["+400 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=400}},nil}
c["近战攻击击中后有 40% 几率造成中毒"]={{[1]={flags=256,keywordFlags=0,name="PoisonChance",type="BASE",value=40}},nil}
c["召唤生物附加 48 - 72 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=48}}},[2]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=72}}}},nil}
c["【灼热光线】的光束长度延长 10%"]={{},"光束长度 "}c["击中流血敌人时有 10% 几率使其致盲 流血总伤害额外提高 15%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="Damage",type="BASE",value=10}},"使其致盲 流血总额外提高 15% "}c["4% 额外攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["50% 的物理、冰霜和闪电伤害转换为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="LightningDamageConvertToFire",type="BASE",value=50},[3]={flags=0,keywordFlags=0,name="ColdDamageConvertToFire",type="BASE",value=50}},nil}
c["召唤生物的移动速度降低 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-10}}}},nil}
c["此武器的攻击对冰缓的敌人造成双倍伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Chilled"},flags=4,keywordFlags=0,name="DoubleDamageChance",type="BASE",value=100}},nil}
c["每 5 秒攻击伤害格挡几率 +50%，持续 2 秒"]={{[1]={[1]={type="Condition",var="BastionOfHopeActive"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value="50"}},nil}
c["附加 145 - 230 基础火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=145},[2]={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=230}},nil}
c["当你没有获得【火之化身】时，+2000 护甲"]={{[1]={[1]={neg=true,type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=2000}},nil}
c["+15% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["偷取时攻击伤害提高 20%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=1,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["伤害穿透 10% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=10}},nil}
c["持续吟唱时，有 40% 几率避免晕眩"]={{},"持续吟唱时，避免晕眩 "}c["副手武器攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="OffHandAttack"},flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["烙印的激活频率提高 12%"]={{[1]={flags=0,keywordFlags=0,name="BrandActivationFrequency",type="INC",value=12}},nil}
c["该装备的闪避与能量护盾提高 130%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=130}},nil}
c["击中时有 50% 几率造成流血"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=50}},nil}
c["对点燃敌人的击中物理伤害和异常状态伤害提高 100%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},flags=0,keywordFlags=786432,name="PhysicalDamage",type="INC",value=100}},nil}
c["近期内你若格挡过攻击伤害，则有 20% 几率格挡法术伤害"]={{[1]={[1]={type="Condition",var="BlockedAttackRecently"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=20}},nil}
c["附加 100 - 150 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=100},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=150}},nil}
c["击败敌人时有 5% 几率获得不洁之力 3 秒 {variant:1}击败敌人时有 5% 几率获得 3 秒【猛攻】状态"]={{},"击败敌人时获得不洁之力 3 秒 {variant:1}击败敌人时有 5% 几率获得 3 秒【猛攻】状态 "}c["中毒持续时间延长 18%"]={{[1]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=18}},nil}
c["若范围内含有 40 点敏捷，【灵体投掷】每次击中时，伤害提高 4% {variant:2}若范围内含有 40 点敏捷，【灵体投掷】每次击中时，伤害提高 5%"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="INC",value=4}},"若内含有 40 点，【灵体投掷】每次击中时，伤害 {variant:2}若范围内含有 40 点敏捷，【灵体投掷】每次击中时，伤害提高 5% "}c["击中时有 20% 几率使敌人中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=20}},nil}
c["20% 几率击中时造成瘫痪"]={{},"时造成瘫痪 "}c["法术伤害提高 55%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=55}},nil}
c["+72% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=72}},nil}
c["对中毒敌人造成攻击伤害的 0.5% 转化为魔力偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Poison"},flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.5}},nil}
c["附加 12 - 24 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=12},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=24}},nil}
c["弓类攻击的暴击率提高 80%"]={{[1]={flags=131072,keywordFlags=0,name="CritChance",type="INC",value=80}},nil}
c["暴击时有 50% 几率造成中毒"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=50}},nil}
c["每个红色插槽使召唤生物 25% 的物理伤害转化为火焰伤害"]={{[1]={[1]={type="Multiplier",var="RedSocketIn{SlotName}"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=25}}}},nil}
c["单手武器的攻击伤害提高 15%"]={{[1]={flags=268435457,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["近战暴击有 25% 几率造成流血 {variant:3}暴击时有 50% 几率造成流血"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=25}},"暴击 {variant:3}有 50% 几率造成流血 "}c["掉落的魔法物品会被鉴定"]={nil,"掉落的魔法物品会被鉴定 "}c["物理伤害提高 270%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=270}},nil}
c["混沌伤害不能穿透能量护盾"]={nil,"混沌伤害不能穿透能量护盾 "}c["闪避值与护甲提高 15%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=15}},nil}
c["偷取时承受的伤害降低 6%"]={{[1]={[1]={type="Condition",var="Leeching"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-6}},nil}
c["受到【迅捷】影响时，不受【时空锁链】影响 {variant:33}受到【迅捷】影响时，你身上的减益效果消失速度加快 20%"]={nil,"受到【迅捷】影响时，不受【时空锁链】影响 {variant:33}受到【迅捷】影响时，你身上的减益效果消失速度加快 20% "}c["暴击时获得 1 充能"]={nil,"暴击时获得 1 充能 "}c["+2 灵体数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveSpectreLimit",type="BASE",value=2}},nil}
c["匕首攻击的暴击率提高 20%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["受到【清晰】影响时，获得等同最大魔力 18% 的额外最大能量护盾"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=0,name="ManaGainAsEnergyShield",type="BASE",value=18}},nil}
c["附加 78 - 114 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=78},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=114}},nil}
c["附加 85 - 118 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=85},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=118}},nil}
c["每个暴击球可使攻击技能的火焰、冰霜、闪电伤害提高 23%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=23}},nil}
c["物理伤害提高 60%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=60}},nil}
c["该装备的攻击暴击率提高 30%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["法术伤害提高 15%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["该武器对被感电敌人的击中伤害提高 60%"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Shocked"},flags=4,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["近期内你若有击败敌人，则 +50% 法术暴击伤害加成"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=2,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},nil}
c["击败敌人回复 +30 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=30}},nil}
c["总计消耗 200 点魔力后可以获得 1 个暴击球 +1 暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=1}},"总计消耗 200 点后可以获得 1 个暴击球  暴击球数量上限 "}c["物品稀有度提高 11%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=11}},nil}
c["火焰伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=50}},nil}
c["每个再生腐尸可使伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=8}},"每个再生腐尸可使 "}c["45% 的火焰伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageConvertToChaos",type="BASE",value=45}},nil}
c["光环技能不能影响友军"]={{[1]={flags=0,keywordFlags=0,name="SelfAurasCannotAffectAllies",type="FLAG",value=true}},nil}
c["所有物品上装备的【火焰技能石】等级 +1"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keywordList={[1]="active_skill",[2]="fire",[3]=0},value=1}}},nil}
c["你施法时，献祭生命的 5% 来获得等量的能量护盾"]={nil,"你施法时，献祭生命的 5% 来获得等量的能量护盾 "}c["此物品上装备的【火焰技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="fire",value=1}}},nil}
c["附加 5 - 11 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=11}},nil}
c["击败敌人时，你获得 1 颗耐力球 {variant:1}被击中时，每个耐力球可使你获得 1 秒的【猛攻】状态"]={{},"击败敌人时， 颗耐力球 {variant:1}被时，你获得 1 秒的【猛攻】状态 "}c["诅咒技能施法速度提高 15%"]={{[1]={flags=16,keywordFlags=2,name="Speed",type="INC",value=15}},nil}
c["附加 55 - 130 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=55},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=130}},nil}
c["暴击后获得 2 秒的【猛攻】状态 {variant:3}暴击后获得 4 秒的【猛攻】状态"]={nil,"暴击后获得 2 秒的【猛攻】状态 {variant:3}暴击后获得 4 秒的【猛攻】状态 "}c["技能魔力消耗降低 6%"]={{[1]={flags=0,keywordFlags=0,name="ManaCost",type="INC",value=-6}},nil}
c["每 5 秒就会移除身上诅咒和元素异常状态"]={nil,"每 5 秒就会移除身上诅咒和元素异常状态 "}c["击败中毒的敌人时，可使周围敌人中毒"]={nil,"击败中毒的敌人时，可使周围敌人中毒 "}c["拥有护体时免疫晕眩"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["有 5% 几率使晕眩时间延长 1 倍"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="BASE",value=5}},"使延长 1 倍 "}c["低血时移动速度提高 30%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=30}},nil}
c["附加 11 - 25 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=11},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=25}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 40%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=40}},nil}
c["近期内你若击中敌人，你和周围友军每秒回复 3.0% 生命"]={{[1]={[1]={type="Condition",var="HitRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=3}}}},nil}
c["受到【纪律】影响时，能量护盾回复速度提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy纪律"},flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=30}},nil}
c["击败敌人时有 20% 几率触发 1 级的【召唤毒蛛】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,skillId="TriggeredSummonSpider"}}},nil}
c["+100 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=100}},nil}
c["被点燃时伤害提高 70%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="Damage",type="INC",value=70}},nil}
c["承受的来自致盲敌人的伤害降低 5%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},nil}
c["此武器攻击击中流血敌人时附加 100 - 200 基础火焰伤害"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="FireMin",type="BASE",value=100},[2]={[1]={type="Condition",var="{Hand}Attack"},[2]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="FireMax",type="BASE",value=200}},nil}
c["范围内智慧和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择火焰元素 {variant:2}范围内智慧和敏捷总计 40 点时，【元素打击】和【狂野打击】的总火焰伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择火焰元素 {variant:2}范围内智慧和敏捷总计 40 "}c["范围内智慧和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择火焰元素"]={nil,"范围内智慧和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择火焰元素 "}c["可以从女巫的起点配置天赋"]={{},nil}
c["范围内配置的智慧和敏捷总计 40 点时，【元素打击】无法选择火焰元素 {variant:1}范围内含的智慧和敏捷总计 40 点时，【元素打击】的火焰冷伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内配置的和敏捷总计 40 点时，【元素打击】无法选择火焰元素 {variant:1}范围内含的智慧和敏捷总计 40 点时，【元素打击】的火焰冷伤害"}c["锤类攻击的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="ElementalDamage",type="INC",value=10}},nil}
c["锤类和短杖攻击的命中值提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["+370 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=370}},nil}
c["范围内力量和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择闪电元素 {variant:2}范围内敏捷和力量总计 40 点时，【元素打击】和【狂野打击】的总闪电伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE"},[2]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"内总计 40 点时，【元素打击】和【狂野打击】无法选择闪电元素 {variant:2}范围内敏捷和力量总计 40 "}c["范围内力量和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择闪电元素"]={nil,"范围内力量和敏捷总计 40 点时，【元素打击】和【狂野打击】无法选择闪电元素 "}c["该装备的攻击暴击率提高 50%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["+25 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=25}},nil}
c["法杖攻击的攻击速度提高 4%"]={{[1]={flags=8388609,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["每个耐力球可使每秒生命回复提高 30"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=30}},nil}
c["获得护体时，近战物理伤害提高 14%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["此物品上的技能石受到 10 级的 附加火焰伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportAddedFireDamage"}}},nil}
c["受到魔侍的伤害提高 10% 受到鬼魂的伤害提高 10%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=10}}}},"受到 受到鬼魂的伤害提高 10% "}c["击败敌人有 20% 几率获得狂怒球"]={{},"击败敌人获得狂怒球 "}c["范围内配置的力量和敏捷总计 40 点时，【元素打击】无法选择闪电元素 {variant:1}范围内含的敏捷和力量总计 40 点时，【元素打击】的总闪电伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE"},[2]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"内配置的总计 40 点时，【元素打击】无法选择闪电元素 {variant:1}范围内含的敏捷和力量总计 40 "}c["总闪电抗性额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="MORE",value=-50}},nil}
c["+23 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=23}},nil}
c["药剂持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskDuration",type="INC",value=20}},nil}
c["附加 96 - 118 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=96},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=118}},nil}
c["施法速度降低 15%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=-15}},nil}
c["攻击技能的元素伤害提高 15%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=15}},nil}
c["范围内含的力量和智慧总计 40 点时，【元素打击】的总冰霜伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE"},[2]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内含的总计 40 "}c["你制造的感电会扩散到半径 15 内的其他敌人上"]={nil,"你制造的感电会扩散到半径 15 内的其他敌人上 "}c["物品掉落数量提高 15%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=15}},nil}
c["击败敌人时触发 10 级的【玷污】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,skillId="CreateFungalGroundOnKill"}}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=24}},nil}
c["双手近战武器的攻击命中值提高 8%"]={{[1]={flags=570425344,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["+9% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=9}},nil}
c["附加 36 - 360 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=36},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=360}},nil}
c["附加 46 - 128 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=46},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=128}},nil}
c["附加 56 - 400 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=56},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=400}},nil}
c["晕眩时有 30% 几率获得暴击球 {variant:1,2}暴击时获得【不洁之力】 2 秒"]={{},"晕眩时获得暴击球 {variant:1,2}获得【不洁之力】 2 秒 "}c["双持时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=24}},nil}
c["闪电抗性高于 75% 时，每高 1%，闪电伤害便提高 20%"]={{[1]={[1]={div=1,stat="LightningResistOver75",type="PerStat"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=20}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["弓类攻击的物理伤害提高 14%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["你无法被减速至基础速度以下"]={{[1]={flags=0,keywordFlags=0,name="ActionSpeedCannotBeBelowBase",type="FLAG",value=true}},nil}
c["双持攻击时武器的伤害提高 16%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["目盲时总近战暴击率额外提高 25%"]={{[1]={[1]={type="Condition",var="Blinded"},flags=256,keywordFlags=0,name="CritChance",type="MORE",value=25}},nil}
c["近战攻击晕眩敌人时，有 10% 几率获得一个耐力球 有 10% 几率使晕眩时间延长 1 倍"]={{[1]={flags=256,keywordFlags=0,name="EnemyStunDuration",type="BASE",value=10}},"晕眩敌人时，获得一个耐力球 有 10% 几率使延长 1 倍 "}c["反射的火焰、冰霜、闪电伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=-10}},"反射的 "}c["你与周围队友共享能量球 击中时有 10% 获得 1 个暴击球、狂怒球或耐力球"]={nil,"你与周围队友共享能量球 击中时有 10% 获得 1 个暴击球、狂怒球或耐力球 "}c["护甲提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=15}},nil}
c["近期内你若或你的召唤生物击败过敌人，则召唤生物攻击和施法速度提高 12%"]={{[1]={[1]={type="Condition",varList={[1]="KilledRecently",[2]="MinionsKilledRecently"}},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=12}}}},nil}
c["药剂持续期间，混沌伤害不会穿透能量护盾"]={nil,"药剂持续期间，混沌伤害不会穿透能量护盾 "}c["物理伤害提高 215%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=215}},nil}
c["瓦尔技能持续时间延长 20%"]={{[1]={flags=0,keywordFlags=256,name="Duration",type="INC",value=20}},nil}
c["每个鬼影缠身可使承受的伤害降低 3% 每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="DamageTaken",type="INC",value=-3}},"每个鬼影缠身可使 每 2 秒获得一个鬼影缠身，最大 3 个 被时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 移动速度提高 10% "}c["智慧提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=6}},nil}
c["角色体型增大 3% 智慧提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=6}},"角色体型增大 3%  "}c["近期内你若受到【残暴打击】，则其伤害的 100% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="BeenSavageHitRecently"},flags=0,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=100}},nil}
c["角色体型增大 3% 力量提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=6}},"角色体型增大 3%  "}c["每秒回复 2 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=2}},nil}
c["使用时获得 1 个狂怒球"]={nil,"使用时获得 1 个狂怒球 "}c["持爪时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["锤类攻击的暴击率提高 60%"]={{[1]={flags=1048576,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["攻击和法术暴击率提高 25%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["+200 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=200}},nil}
c["拥有鬼影缠身时免疫眩晕"]={{[1]={[1]={threshold=1,type="MultiplierThreshold",var="GhostShroud"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["3% chance to Avoid Elemental Status Ailments"]={nil,"3% chance to Avoid Elemental Status Ailments "}c["角色体型增大 3% 全局防御提高 5%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=5}},"角色体型增大 3%  "}c["角色体型增大 3% 敏捷提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="INC",value=6}},"角色体型增大 3%  "}c["+68 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=68}},nil}
c["角色体型增大 3%"]={nil,"角色体型增大 3% "}c["70 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=70}},nil}
c["+200 力量需求"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="BASE",value=200}},nil}
c["此物品上装备的【瓦尔技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="vaal",value=2}}},nil}
c["攻击伤害提高 8%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["+50 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=50}},nil}
c["+2 长杖的近战攻击范围"]={{[1]={flags=2097152,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=2}},nil}
c["每个红色插槽可为你和周围友军附加 64 - 96 基础火焰伤害"]={{[1]={[1]={type="Multiplier",var="RedSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="FireMin",type="BASE",value=64}}},[2]={[1]={type="Multiplier",var="RedSocketIn{SlotName}"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="FireMax",type="BASE",value=96}}}},nil}
c["该装备的护甲与能量护盾提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=100}},nil}
c["攻击被嘲讽的敌人时，攻击伤害的 2% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Taunted"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=2}},nil}
c["你制造的感电会扩散到半径 15 内的其他敌人上 忆境物品"]={nil,"你制造的感电会扩散到半径 15 内的其他敌人上 忆境物品 "}c["每个激活的图腾提供 +300 护甲 血魔法"]={{[1]={flags=0,keywordFlags=16384,name="Armour",type="BASE",value=300}},"每个激活的提供   血魔法 "}c["全局防御提高 5%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=5}},nil}
c["技能效果持续时间延长 4%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=4}},nil}
c["-1 暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesMax",type="BASE",value=-1}},nil}
c["武器造成的伤害穿透 4% 元素抗性"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalPenetration",type="BASE",value=4}},nil}
c["格挡时喷洒焦油"]={nil,"格挡时喷洒焦油 "}c["击败稀有或者传奇敌人时，移动速度提高 10%，持续 20秒"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=10}},"击败稀有或者传奇敌人时，，持续 20秒 "}c["瓦尔技能暴击率提高 120%"]={{[1]={flags=0,keywordFlags=256,name="CritChance",type="INC",value=120}},nil}
c["附加 41 - 123 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=41},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=123}},nil}
c["插槽内的魔像技能每秒回复 5% 生命"]={{[1]={[1]={skillType=62,type="SkillType"},[2]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=5}}}},nil}
c["+80 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=80}},nil}
c["最大魔力提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=10}},nil}
c["-1 狂怒球数量上限"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesMax",type="BASE",value=-1}},nil}
c["你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球"]={{},"你或你的击败敌人时获得 1 个暴击球 "}c["被腐化技能石获取的经验值提高 10%"]={{},"被腐化技能石获取的经验值 "}c["范围伤害提高 45%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=45}},nil}
c["近期内你若有使用战吼，你和周围友军的攻击，施法和移动速度提高 6%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=6}}},[2]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=6}}}},nil}
c["被点燃时伤害提高 30%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["每个狂怒球可使攻击速度降低 3%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=1,keywordFlags=0,name="Speed",type="INC",value=-3}},nil}
c["装备时触发 20 级的【元素神盾】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="ElementalAegis"}}},nil}
c["闪避值提高 225%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=225}},nil}
c["放置地雷时有 20% 几率额外再放置 1 个"]={{},"放置时额外再放置 1 个 "}c["近期内你若有打出过暴击，则施法速度提高 12%"]={{[1]={[1]={type="Condition",var="CritRecently"},flags=16,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["召唤生物的伤害提高 13%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=13}}}},nil}
c["暴击时，有 50% 几率获得【灵巧】状态"]={{[1]={flags=0,keywordFlags=0,name="Elusive",type="FLAG",value=true},[2]={[1]={type="Condition",var="Elusive"},flags=0,keywordFlags=0,name="Dummy",type="DUMMY",value=1}},nil}
c["感电时伤害提高 60%"]={{[1]={[1]={type="Condition",var="Shocked"},flags=0,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["能量护盾启动回复比平常快 20%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=20}},nil}
c["若你的其他戒指中有【裂界之器】，则免疫攻击造成的晕眩 击败敌人时有 20% 几率触发 20 级的【藤蔓抽击】"]={{},"免疫晕眩 击败敌人时触发 20 级的【藤蔓抽击】 "}c["若范围内含有 40 点智慧，造成的枯萎效果持续 2 秒"]={nil,"若范围内含有 40 点智慧，造成的枯萎效果持续 2 秒 "}c["击中时有 10% 几率偷取暴击，狂怒和耐力球"]={{},"时偷取暴击，狂怒和耐力球 "}c["范围内的核心天赋技能转化替代为：召唤生物的移动速度降低 25%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=512,keywordFlags=0,name="MovementSpeed",type="INC",value=-25}}}},"内的核心天赋技能转化替代为： "}c["药剂每 3 秒获得 3 次使用机会"]={nil,"药剂每 3 秒获得 3 次使用机会 "}c["智慧提高 5%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=5}},nil}
c["你每有 100 点智慧，周围队友的施法速度便提高 4%"]={{[1]={[1]={div=100,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=4},onlyAllies=true}}},nil}
c["每个白色插槽会使物品掉落数量提高 15%"]={{[1]={[1]={type="Multiplier",var="WhiteSocketIn{SlotName}"},flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=15}},nil}
c["命中值提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=20}},nil}
c["每有 50 未保留的魔力，范围效果扩大 1%，最多 100%"]={{[1]={[1]={div=50,limit=100,limitTotal=true,stat="ManaUnreserved",type="PerStat"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=1}},nil}
c["-10% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=-10}},nil}
c["With at least 40 Intelligence in Radius, Cold Snap has a 50% chance to grant a Power Charge on Kill"]={nil,"With at least 40 Intelligence in Radius, Cold Snap has a 50% chance to grant a Power Charge on Kill "}c["持长杖时，暴击率提高 20%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["护体时移动速度提高 5%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=5}},nil}
c["双持或持盾牌时攻击伤害格挡几率 +2%"]={{[1]={[1]={type="Condition",varList={[1]="DualWielding",[2]="UsingShield"}},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=2}},nil}
c["此物品上的技能石提高 10% 魔力保留"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=10}}}},nil}
c["在你图腾周围，敌人造成的总伤害额外降低 8%"]={{}," "}c["当你的召唤生物死亡时，承受 350 点物理伤害"]={nil,"当你的死亡时，承受 350 点物理伤害 "}c["物理伤害提高 180%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=180}},nil}
c["投射物速度提高 100%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=100}},nil}
c["周围被冰缓敌人打出的击中伤害降低 10%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=-10}},"周围被冰缓敌人打出的 "}c["每 2 点智慧 +4 命中值"]={{[1]={[1]={div=2,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=4}},nil}
c["每个绿色插槽会使全局攻击速度提高 12%"]={{[1]={[1]={type="Global"},[2]={type="Multiplier",var="GreenSocketIn{SlotName}"},flags=1,keywordFlags=0,name="Speed",type="INC",value=12}},nil}
c["物理伤害提高 150%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=150}},nil}
c["若范围内含有 40 点敏捷，【灵体投掷】每次击中时，伤害提高 4%"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="INC",value=4}},"若内含有 40 点，【灵体投掷】每次击中时，伤害 "}c["混沌伤害提高 13%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=13}},nil}
c["若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 8 把远程武器"]={nil,"若范围内含有 40 点敏捷，【幻化武器】可以幻化最多 8 把远程武器 "}c["烙印技能的持续时间延长 20%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Duration",type="INC",value=20}},nil}
c["若范围内含有 40 点智慧，火球投射物的爆炸范围将随飞行距离扩大，最多扩大至 +4"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE",value=4}},"若内含有 40 点，火球投射物的爆炸范围将随飞行距离扩大，最多扩大至  "}c["+25 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=25}},nil}
c["若范围内含有 40 点敏捷，\n则【虚空匕首】将向四周环绕发射 {variant:1}若范围内含有 40 点敏捷，\n则【虚空匕首】会额外发射 10 个投射物"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"若内含有 40 点，\n则【虚空匕首】将向四周环绕发射 {variant:1}若范围内含有 40 点敏捷，\n则【虚空匕首】会"}c["武器攻击的火焰、冰霜、闪电伤害提高 12% {variant:3}武器攻击的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},"攻击的 {variant:3}武器攻击的火焰、冰霜、闪电伤害提高 24% "}c["物品掉落数量提高 30%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=30}},nil}
c["若范围内含有 40 点力量，【裂地之击】的角度扩大 50% {variant:2}若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 25% 几率获得耐力球"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=50}},"若内含有 40 点，【裂地之击】的角度 {variant:2}若范围内含有 40 点力量，【裂地之击】在晕眩敌人时有 25% 几率获得耐力球 "}c["回复量提高 40%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecovery",type="INC",value=40}},nil}
c["若范围内含有 40 点力量，【裂地之击】的角度扩大 35%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=35}},"若内含有 40 点，【裂地之击】的角度 "}c["此物品上装备的【火焰技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="fire",value=2}}},nil}
c["若范围内含有 40 点敏捷，则【燃烧箭矢】有 10% 几率在没有点燃敌人时产生焦油地面 若范围内含有 40 点敏捷，则【燃烧箭矢】有 10% 几率在点燃敌人时产生燃烧地面"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE",value=10}},"若内含有 40 点，则【燃烧箭矢】在没有点燃敌人时产生焦油地面 若范围内含有 40 点敏捷，则【燃烧箭矢】有 10% 几率在点燃敌人时产生燃烧地面 "}c["50% 几率免疫流血"]={{[1]={flags=0,keywordFlags=0,name="AvoidBleed",type="BASE",value=50}},nil}
c["该装备的护甲与闪避提高 160%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=160}},nil}
c["20% 的最大生命转化为能量护盾"]={{[1]={flags=0,keywordFlags=0,name="LifeConvertToEnergyShield",type="BASE",value=20}},nil}
c["近战击中时有 10% 几率获得护体效果 受到你嘲讽的敌人所承受的伤害提高 10% 击中时有 25% 几率嘲讽敌人"]={{[1]={flags=256,keywordFlags=0,name="DamageTaken",type="BASE",value=10}},"击中时获得护体效果 受到你嘲讽的敌人所提高 10% 击中时有 25% 几率嘲讽敌人 "}c["受到的暴击伤害降低 20% 护甲提高 30%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=-20}},"受到的暴击 护甲提高 30% "}c["+30% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=30}},nil}
c["冰霜伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=40}},nil}
c["锤类和短杖攻击的攻击速度提高 3%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["非暴击时有 20% 几率获得 1 个暴击球 +1 暴击球数量上限"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="PowerChargesMax",type="BASE",value=20}},"非获得 1 个暴击球 +1  "}c["受到【迅捷】影响时，有 8% 几率躲避法术击中"]={{[1]={[1]={type="Condition",var="AffectedBy迅捷"},flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=8}},nil}
c["最大魔力的 80% 转化为双倍的护甲"]={{[1]={flags=0,keywordFlags=0,name="ManaConvertToDoubleArmour",type="BASE",value=80}},nil}
c["血量低于 20% 的敌人被你的技能击中时，会直接被终结 击败稀有或者传奇敌人时，攻击速度提高 20%，持续 20秒"]={{[1]={flags=1,keywordFlags=262144,name="Speed",type="BASE",value=20}},"血量低于 敌人被你的技能时，会直接被终结 击败稀有或者传奇敌人时，提高 20%，持续 20秒 "}c["吞噬 1 个被点燃的灵柩时，补充 1 药剂持续期间，被你点燃的敌人受到的伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="INC",value=10}},"吞噬 1 个被的灵柩时，补充 1 被你点燃的敌人受到的伤害 "}c["若范围内含有 40 点敏捷，双持打击时副手武器对周围敌人造成扩散伤害"]={nil,"若范围内含有 40 点敏捷，双持打击时副手武器对周围敌人造成扩散伤害 "}c["若范围内含有 40 点智慧，【冰川之刺】将额外爆炸 1 次"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"若内含有 40 点，【冰川之刺】将"}c["火焰伤害提高 13%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=13}},nil}
c["魔卫体型增大 25%"]={nil,"魔卫体型增大 25% "}c["该装备的能量护盾提高 600%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=600}},nil}
c["火焰、冰霜、闪电伤害提高 32%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=32}},nil}
c["近期内你若未被击中，则受到的总伤害额外降低 20%"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="DamageTaken",type="MORE",value=-20}},nil}
c["+25% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=25}},nil}
c["使用时消耗所有狂怒球"]={nil,"使用时消耗所有狂怒球 "}c["若范围内含有 40 点智慧，【寒冰弹】会每秒提高 40% 投射物速度"]={{[1]={flags=512,keywordFlags=0,name="Int",type="INC",value=40}},"若内含有 40 点，【寒冰弹】会每秒 投射物速度 "}c["投射物伤害提高 9%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=9}},nil}
c["+40 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=40}},nil}
c["你造成的穿刺效果会额外持续 2 次击中"]={{[1]={flags=0,keywordFlags=0,name="ImpaleStacksMax",type="BASE",value=2}},nil}
c["魔像在召唤后的 8 秒内伤害提高 45%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=45}}}},"在召唤后的 8 秒内 "}c["投射物攻击伤害提高 14%"]={{[1]={flags=1025,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["受到【闪电净化】影响时，不受【导电】影响 {variant:59}受到【闪电净化】影响时，不受感电地面影响"]={nil,"受到【闪电净化】影响时，不受【导电】影响 {variant:59}受到【闪电净化】影响时，不受感电地面影响 "}c["每个【召唤纯净哨兵】的范围效果扩大 10% 召唤的哨兵会使用【圣战猛击】 召唤生物命中值提高 100%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}}}},"每个【召唤纯净哨兵】的 召唤的哨兵会使用【圣战猛击】 命中值提高 100% "}c["双手近战武器攻击的攻击速度提高 4%"]={{[1]={flags=570425345,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["此物品上装备的【辅助技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="support",value=2}}},nil}
c["爪类攻击 +30% 暴击伤害加成"]={{[1]={flags=262144,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["受到【火焰净化】影响时，不受燃烧地面影响 {variant:49}受到【火焰净化】影响时，不受【易燃】影响"]={nil,"受到【火焰净化】影响时，不受燃烧地面影响 {variant:49}受到【火焰净化】影响时，不受【易燃】影响 "}c["受到【火焰净化】影响时，受到击中物理伤害的 10% 转换为火焰伤害"]={{[1]={[1]={type="Condition",var="AffectedBy火焰净化"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsFire",type="BASE",value=10}},nil}
c["+33% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=33}},nil}
c["近战伤害提高 14%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["持盾牌时攻击速度提高 4%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["有 10% 几率使晕眩时间延长 1 倍 持双手武器时，攻击技能造成的异常状态伤害提高 24% 有 4% 几率造成双倍伤害"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="EnemyStunDuration",type="BASE",value=10}},"使延长 1 倍 伤害提高 24% 有 4% 几率造成双倍伤害 "}c["持续吟唱技能的攻击伤害提高 8%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["敌人被冰缓的持续时间延长 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=25}},nil}
c["受到【愤怒】影响时，40% 的物理伤害转化为火焰伤害"]={{[1]={[1]={type="Condition",var="AffectedBy愤怒"},flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=40}},nil}
c["+40% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=40}},nil}
c["你反射给怪物的 30% 伤害会变为回复生命"]={nil,"你反射给怪物的 30% 伤害会变为回复生命 "}c["锤类攻击的暴击率提高 20%"]={{[1]={flags=1048576,keywordFlags=0,name="CritChance",type="INC",value=20}},nil}
c["法术技能无法造成伤害"]={nil,"法术技能无法造成伤害 "}c["攻击速度提高 28%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=28}},nil}
c["魔力药剂的药剂充能使用降低 10%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-10}},"药剂的药剂充能使用 "}c["击败感电敌人时会爆炸，造成等同敌人最大生命 5% 的闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=5}},"击败感电敌人时会爆炸，造成等同敌人 闪电伤害 "}c["暴击时立即获得生命和魔力偷取"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="InstantLifeLeech",type="FLAG",value=true},[2]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="InstantManaLeech",type="FLAG",value=true}},nil}
c["格挡时回复 +48 生命 {variant:1}格挡时回复 +20 魔力"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=48}},"格挡时回复   {variant:1}格挡时回复 +20 魔力 "}c["法杖攻击的暴击率提高 60%"]={{[1]={flags=8388608,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["药剂回复的生命提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=10}},nil}
c["锤类攻击 +15% 暴击伤害加成"]={{[1]={flags=1048576,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["每个耐力球可使物理伤害提高 10%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["【召唤魔像】的冷却速度提高 15%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=15}}}},nil}
c["攻击和法术附加 1 - 4 基础闪电伤害"]={{[1]={flags=0,keywordFlags=196608,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=196608,name="LightningMax",type="BASE",value=4}},nil}
c["自身的每个增益会为攻击附加 5 - 12 基础火焰伤害"]={{[1]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=5},[2]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=12}},nil}
c["投射物伤害提高 18%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=18}},nil}
c["冰霜伤害提高 22%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=22}},nil}
c["击中敌人时，用【时空锁链】诅咒敌人"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=1,noSupports=true,skillId="TemporalChains"}}},nil}
c["攻击伤害的 0.4% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.4}},nil}
c["你的暴击伤害无法被反射 附近最多只有 1 个稀有或传奇敌人时，总伤害额外提高 20% 附近最少有 2 个稀有或传奇敌人时，承受的伤害降低 10%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE"}},"你的暴击无法被反射 附近最多只有 1 附近最少有 2 个稀有或传奇敌人时，承受的伤害降低 10% "}c["攻击伤害的 0.5% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.5}},nil}
c["所有属性提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=15},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=15},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=15}},nil}
c["能量护盾偷取总回复上限提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MaxEnergyShieldLeechRate",type="INC",value=20}},nil}
c["火焰法术的 10% 物理伤害转换为火焰伤害"]={{[1]={flags=2,keywordFlags=16,name="PhysicalDamageConvertToFire",type="BASE",value=10}},nil}
c["有 20% 几率使晕眩时间延长 1 倍"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="BASE",value=20}},"使延长 1 倍 "}c["双持攻击的命中值提高 18%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=18}},nil}
c["获得 10 级的主动技能【元素之愈】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=10,skillId="VaalAuraElementalDamageHealing"}}},nil}
c["异常状态没有暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NoCritDegenMultiplier",type="FLAG",value=true}},nil}
c["持盾牌时攻击造成的伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["法杖攻击的攻击速度提高 6%"]={{[1]={flags=8388609,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["每个暴击球 +8% 暴击伤害加成"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=8}},nil}
c["命中值提高 100%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=100}},nil}
c["闪避值与护甲提高 6%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=6}},nil}
c["攻击技能可使混沌伤害提高 20%"]={{[1]={flags=0,keywordFlags=65536,name="ChaosDamage",type="INC",value=20}},nil}
c["+1 暴击球数量下限"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesMin",type="BASE",value=1}},nil}
c["攻击击中有 10% 几率使敌人致盲 流血总伤害额外提高 25%"]={{[1]={flags=1,keywordFlags=2097152,name="Damage",type="BASE",value=10}}," 使敌人致盲 总额外提高 25% "}c["受到【元素净化】影响时，承受的反射元素伤害减低 50%"]={nil,"受到【元素净化】影响时，承受的反射元素伤害减低 50% "}c["主手附加 285 - 330 基础火焰伤害"]={{[1]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=285},[2]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=330}},nil}
c["近期内你若使用过移动技能，则每秒回复 15 魔力"]={{[1]={[1]={type="Condition",var="UsedMovementSkillRecently"},flags=0,keywordFlags=0,name="ManaRegen",type="BASE",value=15}},nil}
c["攻击与法术暴击率提高 16%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=16}},nil}
c["持长杖时，暴击率提高 40%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["最大魔力提高 22%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=22}},nil}
c["20% 几率避免被晕眩"]={{[1]={flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=20}},nil}
c["使用终结时获得【猛攻】状态 3 秒 当你获得【猛攻】状态时状态时无法被冰缓"]={nil,"使用终结时获得【猛攻】状态 3 秒 当你获得【猛攻】状态时状态时无法被冰缓 "}c["该装备的攻击暴击率提高 100%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=100}},nil}
c["投射物攻击近距离目标时造成的总伤害最多额外提高 50%，但攻击远距离目标时总伤害则会额外降低"]={{[1]={flags=0,keywordFlags=0,name="PointBlank",type="FLAG",value=true}},nil}
c["无法造成点燃"]={{[1]={flags=0,keywordFlags=0,name="CannotIgnite",type="FLAG",value=true}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["击败敌人时有 10% 几率获得 4 秒【猛攻】状态 持斧时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="BASE",value=10}},"击败敌人时获得 4 秒【猛攻】状态 提高 25% "}c["地雷放置速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=4}},nil}
c["火焰伤害击中时有 15% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=15}},nil}
c["持续伤害效果提高 27%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=27}},nil}
c["被击中时承受额外 -20 火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTakenWhenHit",type="BASE",value=-20}},nil}
c["回复速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecoveryRate",type="INC",value=20}},nil}
c["每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒 周围被冰缓敌人打出的击中伤害降低 10%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="INC",value=-10}},"每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒 周围被冰缓敌人打出的 "}c["照亮范围将基于能量护盾的属性"]={nil,"照亮范围将基于能量护盾的属性 "}c["长杖攻击 +20% 暴击伤害加成"]={{[1]={flags=2097152,keywordFlags=0,name="CritMultiplier",type="BASE",value=20}},nil}
c["+11% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=11}},nil}
c["每 10 点智慧会使法术伤害提高 1%"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=2,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["范围效果扩大 50%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=50}},nil}
c["击败敌人回复 +10 魔力"]={{[1]={flags=0,keywordFlags=0,name="ManaOnKill",type="BASE",value=10}},nil}
c["此物品上装备的【召唤生物技能石】等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="minion",value=1}}},nil}
c["+30 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=30}},nil}
c["斧类攻击的攻击速度提高 6%"]={{[1]={flags=65537,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["格挡时回复 +8 魔力 持盾牌时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Mana",type="BASE",value=8}},"格挡时回复   伤害格挡几率 +4% "}c["周围敌人获得 -20% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=-20}}}},nil}
c["+450 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=450}},nil}
c["周围敌人被致盲 对致盲敌人的击中和异常状态伤害提高 30% 击中敌人后有 25% 几率使其致盲"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=30}},"周围敌人被致盲  击中敌人后有 25% 几率使其致盲 "}c["火焰技能施法速度提高 4%"]={{[1]={flags=16,keywordFlags=16,name="Speed",type="INC",value=4}},nil}
c["击中时有 100% 几率嘲讽敌人 近期内你若有成功嘲讽敌人，则受到的伤害降低 6% 近期内你若有成功嘲讽敌人，则每秒回复 2% 生命"]={{[1]={[1]={type="Condition",var="TauntedEnemyRecently"},[2]={type="Condition",var="TauntedEnemyRecently"},flags=0,keywordFlags=262144,name="DamageTaken",type="BASE",value=100}},"时嘲讽敌人 降低 6% 每秒回复 2% 生命 "}c["+30% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=30}},nil}
c["每个耐力球可使伤害提高 8%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["近期内你若有击败敌人，则范围效果扩大 20%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=20}},nil}
c["击中中毒的敌人有 50% 几率使其瘫痪"]={{},"中毒的敌人使其瘫痪 "}c["照亮范围扩大 25%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=25}},nil}
c["此物品上的技能石受到 10 级的 火焰穿透 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportFirePenetration"}}},nil}
c["+475 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=475}},nil}
c["【迷踪】状态时有 5% 几率躲避攻击击中"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=5}},nil}
c["可以施放 1 个额外烙印 被附着烙印的敌人受到烙印技能的伤害提高 30%"]={{},"可以施放 1 个"}c["有 10% 几率使晕眩时间延长 1 倍"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="BASE",value=10}},"使延长 1 倍 "}c["药剂持续期间，攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["每有 1 个六分仪影响该地区，火焰、冰霜、闪电伤害便提高 10%"]={{[1]={[1]={type="Multiplier",var="Sextant"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=10}},nil}
c["附加 43 - 113 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=43},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=113}},nil}
c["附加 53 - 110 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=53},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=110}},nil}
c["若近期消耗总计至少消耗 200 魔力，则诅咒效果提高 10%"]={{[1]={flags=0,keywordFlags=2,name="Mana",type="INC",value=10}},"若近期消耗总计至少消耗 200 ，则效果 "}c["+10% 非异常状态的持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NonAilmentChaosDotMultiplier",type="BASE",value=10}},nil}
c["暴击时获得【不洁之力】 4 秒"]={nil,"暴击时获得【不洁之力】 4 秒 "}c["你的攻击击中每个敌人会回复 +2 魔力"]={{[1]={flags=1,keywordFlags=0,name="ManaOnHit",type="BASE",value=2}},nil}
c["攻击和法术暴击率提高 60%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["击败敌人有 5% 几率获得狂怒球"]={{},"击败敌人获得狂怒球 "}c["从药剂获得的生命回复同样作用于能量护盾"]={nil,"从药剂获得的生命回复同样作用于能量护盾 "}c["药剂持续期间，法术附加 25 - 90 基础闪电伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=25},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=90}},nil}
c["被击中时，丢失一个幽灵护罩，回复 5% 等同于你闪避值的能量护盾"]={nil,"被击中时，丢失一个幽灵护罩，回复 5% 等同于你闪避值的能量护盾 "}c["每 10 点奉献 +2% 点所有元素抗性"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=2}},nil}
c["附加 13 - 31 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=13},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=31}},nil}
c["锤类和短杖攻击降低 4% 敌人晕眩门槛"]={{[1]={flags=1048576,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-4}},nil}
c["Leech applies instantly on Critical Strike"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="InstantLifeLeech",type="FLAG",value=true},[2]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="InstantManaLeech",type="FLAG",value=true}},nil}
c["使用时获得 1 个耐力球"]={nil,"使用时获得 1 个耐力球 "}c["插槽内的的技能石被 10 级的低阶毒化辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportLesserPoison"}}},nil}
c["非暴击时有 20% 几率获得 1 个暴击球"]={{},"非获得 1 个暴击球 "}c["烙印的附着范围扩大 14%"]={{},"附着范围 "}c["给予你和周围友军等同你 160% 生命保留的额外护甲"]={{[1]={flags=0,keywordFlags=0,name="GrantReservedLifeAsAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Armour",type="BASE",value=1.6}}}},nil}
c["此物品上的技能石受到 1 级的 魔力减免 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportReducedMana"}}},nil}
c["此物品上的技能石受到 1 级的 急冻 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportDamageAgainstChilled"}}},nil}
c["攻击速度提高 19%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=19}},nil}
c["法术附加 1 - 12 基础闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=12}},nil}
c["每消耗 1 具灵柩后的短时间内，攻击和施法速度提高 2%"]={{[1]={[1]={type="Multiplier",var="CorpseConsumedRecently"},flags=0,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["暴走状态结束时失去所有耐力球"]={nil,"暴走状态结束时失去所有耐力球 "}c["法杖攻击的伤害提高 10%"]={{[1]={flags=8388608,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["暴击时，+20% 持续伤害加成"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="DotMultiplier",type="BASE",value=20}},nil}
c["法杖攻击的伤害提高 14%"]={{[1]={flags=8388608,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["移动速度降低 10%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-10}},nil}
c["混沌伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=20}},nil}
c["每有 200 点敏捷，你的攻城炮台图腾数量上限便提高 1 个"]={{[1]={[1]={skillName="攻城炮台",type="SkillName"},[2]={div=200,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="ActiveTotemLimit",type="BASE",value=1}},nil}
c["药剂持续期间，范围效果扩大 30%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=30}},nil}
c["周围敌人被致盲 对致盲敌人的击中和异常状态伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=30}},"周围敌人被致盲  "}c["能量护盾偷取总回复上限提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MaxEnergyShieldLeechRate",type="INC",value=30}},nil}
c["攻击和法术暴击率提高 50%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["在药剂持续期间，击败敌人会补充 3% 的魔力 在药剂持续期间，击败敌人会补充 3% 的能量护盾"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=3}},"在击败敌人会补充  在击败敌人会补充 3% 的能量护盾 "}c["拥有【鸟之斗魄】时每秒回复 100 生命"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之斗魄"},flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=100}},nil}
c["召唤生物格挡时，回复它 2% 最大生命"]={nil,"格挡时，回复它 2% 最大生命 "}c["+100 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=100}},nil}
c["提高 0% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=0}},nil}
c["该装备的闪避与能量护盾提高 220%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=220}},nil}
c["给予你和周围友军等同你 15% 魔力保留的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="GrantReservedManaAsAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=0.15}}}},nil}
c["剑类攻击的伤害提高 10%"]={{[1]={flags=4194304,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["近战单手武器的攻击命中值提高 10%"]={{[1]={flags=301989888,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["击中满血敌人时，将使他们永久受到威吓 你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=262144,name="MovementSpeed",type="INC",value=8}}}},"满血敌人时，将使他们永久受到威吓  "}c["晕眩回复和格挡回复提高 25%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=25}},nil}
c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% 你和周围队友的移动速度提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=12}}}},"当你创建旗帜时，它会获得你当前放置旗帜等阶的 40%  "}c["护甲提高 170%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=170}},nil}
c["暴击时，+20% 持续点燃伤害加成"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=4194304,name="DotMultiplier",type="BASE",value=20}},nil}
c["对流血敌人造成的攻击伤害的 3% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=3}},nil}
c["能量护盾启动回复比平常快 15%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRechargeFaster",type="INC",value=15}},nil}
c["获得 20 级的的主动技能【召唤德瑞的塑像】技能 召唤【德瑞的塑像】时可以触发插槽内的诅咒技能"]={nil,nil}
c["附加 30 - 40 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=40}},nil}
c["10% 几率避免元素异常状态"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=10},[3]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=10},[4]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=10}},nil}
c["物理攻击伤害的 0.7% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.7}},nil}
c["每 10 点敏捷提高 1% 召唤生物造成的伤害"]={{[1]={[1]={div=10,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=1}}}},nil}
c["近战单手武器的攻击暴击率提高 10%"]={{[1]={flags=301989889,keywordFlags=0,name="CritChance",type="INC",value=10}},nil}
c["此物品上的技能石无魔力保留"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ManaReserved",type="MORE",value=-100}},nil}
c["锤类攻击的物理伤害提高 16%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["近战单手武器攻击的攻击速度提高 3%"]={{[1]={flags=301989889,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["图腾无法被击晕"]={nil,"图腾无法被击晕 "}c["物理伤害提高 160%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=160}},nil}
c["【冰霜净化】不保留魔力"]={{[1]={[1]={skillName="冰霜净化",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["每秒回复 0.6% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.6}},nil}
c["锤类和短杖攻击的物理伤害提高 12%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["获得额外火焰伤害， 其数值等同于法杖物理伤害的 10%"]={{[1]={flags=8388608,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=10}},nil}
c["+14% 火焰与闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=14},[2]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=14}},nil}
c["每个【召唤灵体】会使法术暴击率提高 50%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=50}},"每个【召唤灵体】会使 "}c["陷阱触发范围扩大 20%"]={{[1]={flags=0,keywordFlags=0,name="TrapTriggerAreaOfEffect",type="INC",value=20}},nil}
c["获得【灵巧】有 25% 几率失去一个暴击球 你的狂怒球数量上限等于暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesMax",type="BASE",value=25}},"获得【灵巧】失去一个暴击球 你的等于暴击球数量上限 "}c["投射物速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=10}},nil}
c["当受到【奋锐光环】影响时，你创造奉献地面会获得【秘术增强】，持续 4 秒 {variant:84}受到【奋锐光环】影响时，从能量护盾偷取中获得的每秒最大总恢复量提高 30%"]={{[1]={[1]={type="Condition",var="AffectedBy奋锐光环"},flags=0,keywordFlags=0,name="MaxEnergyShieldLeechRate",type="INC",value=30}},"当你创造奉献地面会获得【秘术增强】，持续 4 秒 {variant:84}受到【奋锐光环】影响时， "}c["每个狂怒球附加 12 - 14 基础冰霜伤害"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=12},[2]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=14}},nil}
c["当你使用旅行技能时，有 25% 几率失去一个狂怒球"]={{},"当你使用旅行技能时，失去一个狂怒球 "}c["每个白色插槽使召唤生物 25% 的物理伤害转化为混沌伤害"]={{[1]={[1]={type="Multiplier",var="WhiteSocketIn{SlotName}"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageConvertToChaos",type="BASE",value=25}}}},nil}
c["每个蓝色插槽使召唤生物 25% 的物理伤害转化为闪电伤害"]={{[1]={[1]={type="Multiplier",var="BlueSocketIn{SlotName}"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=25}}}},nil}
c["攻击附加 1 - 120 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=120}},nil}
c["格挡时回复 +8 魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=8}},"格挡时回复   "}c["每装备一个魔法物品，伤害提高 25%"]={{[1]={[1]={type="Multiplier",var="MagicItem"},flags=0,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["攻击和法术附加 22 - 35 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=22},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=35}},nil}
c["剑类攻击的暴击率提高 25%"]={{[1]={flags=4194304,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["敌人被晕眩时间延长 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=40}},nil}
c["火焰伤害提高 60%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=60}},nil}
c["你从激活的先祖图腾获得的增益效果提高 50% 先祖图腾的激活范围扩大 100% 当你有图腾存在时，范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="HaveTotem"},flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=50}},"你从激活的先祖获得的增益效果 先祖图腾的激活范围扩大 100% 扩大 25% "}c["流血时护甲提高 35%"]={{[1]={[1]={type="Condition",var="Bleeding"},flags=0,keywordFlags=0,name="Armour",type="INC",value=35}},nil}
c["副手武器击败敌人时，有 25% 几率获得 1 个耐力球 狂怒球达到上限时，物理总伤害额外提高 10%"]={{[1]={[1]={type="Condition",var="OffHandAttack"},[2]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=25}},"击败敌人时，获得 1 个耐力球 物理总额外提高 10% "}c["双持攻击时武器的伤害提高 10%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["范围内的天赋附加词缀：陷阱和地雷造成 3 - 6 额外物理伤害 陷阱和地雷击中时，有 25% 几率使敌人中毒"]={{},"内的天赋附加词缀：陷阱和地雷 陷阱和地雷击中时，有 25% 几率 "}c["近期内你若有使用技能，你和周围友军获得【提速尾流】"]={{[1]={[1]={type="Condition",var="UsedSkillRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Condition:Tailwind",type="FLAG",value=true}}}},nil}
c["生命偷取总回复上限提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="INC",value=15}},nil}
c["获得【神性】时失去所有神圣球 周围队友的行动速度无法被减速至基础以下"]={nil,"获得【神性】时失去所有神圣球 周围队友的行动速度无法被减速至基础以下 "}c["攻击击中时有 10% 几率使目标中毒"]={{[1]={flags=1,keywordFlags=0,name="PoisonChance",type="BASE",value=10}},nil}
c["照亮范围扩大 10%"]={{[1]={flags=0,keywordFlags=0,name="LightRadius",type="INC",value=10}},nil}
c["灵体的伤害提高 100%"]={{[1]={[1]={skillName="召唤灵体",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=100}}}},nil}
c["25% 几率造成精疲力尽"]={{},"造成精疲力尽 "}c["双持时，施法速度提高 3%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=16,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["所承受伤害的前 30% 会扣除魔力，而非生命"]={{[1]={flags=0,keywordFlags=0,name="DamageTakenFromManaBeforeLife",type="BASE",value=30}},nil}
c["被你感电的敌人移动速度降低 20%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-20}},"被你感电的敌人 "}c["锤类攻击的火焰、冰霜、闪电伤害提高 25%"]={{[1]={flags=1048576,keywordFlags=0,name="ElementalDamage",type="INC",value=25}},nil}
c["图腾免疫火焰伤害 图腾获得你 50% 的护甲值 图腾所使用的技能击中时，有 20% 几率嘲讽敌人"]={{[1]={flags=0,keywordFlags=16384,name="FireDamage",type="BASE",value=50}},"免疫 图腾获得你 护甲值 图腾所使用的技能击中时，有 20% 几率嘲讽敌人 "}c["附加 11 - 29 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=11},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=29}},nil}
c["获得护体时护甲提高 20%"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="Armour",type="INC",value=20}},nil}
c["最多同时可额外放置 1 个陷阱"]={{[1]={flags=0,keywordFlags=0,name="ActiveTrapLimit",type="BASE",value=1}},nil}
c["该装备的闪避与能量护盾提高 150%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=150}},nil}
c["击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=70}},"击败敌人会回复自身 2%  击败敌人时回复 4% 最大魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复 "}c["锤类攻击的物理伤害提高 18%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=18}},nil}
c["+50 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=50}},nil}
c["双手武器的攻击伤害提高 20%"]={{[1]={flags=536870913,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["从偷取获取的每秒能量护盾回复提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldLeechRate",type="INC",value=10}},nil}
c["每嘲讽 1 个敌人回复 +10 生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"每嘲讽 1 个敌人回复   "}c["击中时有 15% 几率使目标中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=15}},nil}
c["生效期间，使用瓦尔技能有 40% 几率降低阻灵术的持续时间"]={{[1]={flags=0,keywordFlags=256,name="FlaskDuration",type="BASE",value=40}},"使用降低阻灵术的持续时间 "}c["24% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=24}},nil}
c["范围内的天赋附加词缀：陷阱和地雷造成 3 - 6 额外物理伤害"]={{},"内的天赋附加词缀：陷阱和地雷 "}c["+1 魔侍数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveSkeletonLimit",type="BASE",value=1}},nil}
c["+1% 冰霜抗性上限"]={{[1]={flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=1}},nil}
c["持单手武器时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["瓦尔技能暴击率提高 100%"]={{[1]={flags=0,keywordFlags=256,name="CritChance",type="INC",value=100}},nil}
c["双持攻击时武器的物理伤害提高 20%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["混沌抗性翻倍"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="MORE",value=100}},nil}
c["暴击时触发 10 级的【奉献】 攻击和法术暴击率提高 35%"]={{[1]={[1]={type="Global"},[2]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=35}},"触发 10 级的【奉献】  "}c["伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["物理伤害提高 14%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["最大生命提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=20}},nil}
c["施法速度提高 10%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["攻击投射物击中最后目标后返还 返还的投射物穿透所有目标"]={nil,"攻击投射物击中最后目标后返还 返还的投射物穿透所有目标 "}c["图腾的持续时间延长 100%"]={{[1]={flags=0,keywordFlags=0,name="TotemDuration",type="INC",value=100}},nil}
c["【召唤魔侍】可以召唤 2 个额外魔侍勇士 魔侍的移动速度提高 100%"]={{},"可以召唤 2 个"}c["击败敌人回复 +10 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=10}},nil}
c["击中冰缓敌人的伤害提高 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="Damage",type="INC",value=20}},nil}
c["法术伤害提高 6%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["格挡时，用 5 级的【脆弱】诅咒敌人"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=5,noSupports=true,skillId="Vulnerability"}}},nil}
c["当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5% 生命 你和周围队友的移动速度提高 12%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=12}}}},"当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5%  移动速度 "}c["低血时移动速度提高 20%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["法术伤害的 0.8% 会转化为能量护盾偷取"]={{[1]={flags=2,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=0.8}},nil}
c["药剂效果提高 8%"]={{[1]={flags=0,keywordFlags=0,name="FlaskEffect",type="INC",value=8}},nil}
c["提高 50% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=50}},nil}
c["攻击与法术暴击率提高 45%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=45}},nil}
c["你创建的奉献地面可以为你和友军获得元素异常免疫 在奉献地面上时，每秒回复 200 能量护盾 你创建的奉献地面效果遗留消退时间为 4 秒"]={nil,"你创建的奉献地面可以为你和友军获得元素异常免疫 在奉献地面上时，每秒回复 200 能量护盾 你创建的奉献地面效果遗留消退时间为 4 秒 "}c["满血时攻击速度提高 30%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=1,keywordFlags=0,name="Speed",type="INC",value=30}},nil}
c["当你召唤出烈焰魔像时，你无法被点燃"]={nil,"当你召唤出烈焰时，你无法被点燃 "}c["陷阱冷却回复速度提高 13%"]={{[1]={flags=0,keywordFlags=4096,name="CooldownRecovery",type="INC",value=13}},nil}
c["护甲提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=70}},nil}
c["击败敌人时回复 4% 最大魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=70}},"击败敌人时回复 4%  近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复 "}c["最大生命提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=15}},nil}
c["弓类技能的持续伤害效果提高 24%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=24}},nil}
c["法术暴击率提高 30%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["你获得【猫之隐匿】时移动速度提高 20%"]={{[1]={[1]={type="Condition",var="AffectedBy猫之隐匿"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=20}},nil}
c["近期内每消耗 200 魔力，你身上的秘术增强效果提高 10% 击败敌人时有 10% 几率获得秘术增强"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=10}},"近期内每消耗 200 ，你身上的秘术增强效果 击败敌人时有 10% 几率获得秘术增强 "}c["With at least 40 Intelligence in Radius, Cold Snap has a 50% chance to grant a Power Charge on Kill {variant:3}若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球"]={nil,"With at least 40 Intelligence in Radius, Cold Snap has a 50% chance to grant a Power Charge on Kill {variant:3}若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球 "}c["无法自动回复能量护盾 每秒失去 5% 能量护盾"]={nil,"无法自动回复能量护盾 每秒失去 5% 能量护盾 "}c["你受到的诅咒效果降低 20%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=-20}},nil}
c["持长杖时法术伤害格挡几率提高 6%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=6}},nil}
c["伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=5}},nil}
c["生效期间，瓦尔技能的灵魂消耗降低 25% 生效期间，使用瓦尔技能有 40% 几率降低阻灵术的持续时间"]={{[1]={flags=0,keywordFlags=256,name="FlaskDuration",type="INC",value=-25}},"的灵魂消耗 生效期间，使用瓦尔技能有 40% 几率降低阻灵术的持续时间 "}c["敌人解冻后受到冰缓效果 有 10% 几率冰冻被冰缓的敌人 +10% 持续冰霜伤害加成"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="EnemyChillEffect",type="BASE",value=10}},"敌人解冻后受到 冰冻 +10% 持续冰霜伤害加成 "}c["+240% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=240}},nil}
c["+60 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=60}},nil}
c["+5 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=5}},nil}
c["爪类攻击的伤害提高 16%"]={{[1]={flags=262144,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["召唤生物有 4% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}}}},nil}
c["闪避值提高 165%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=165}},nil}
c["【召唤纯净哨兵】的范围效果扩大 50%"]={{[1]={[1]={skillId="HeraldOfPurity",type="SkillId"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=50}}}},nil}
c["护甲提高 16%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=16}},nil}
c["每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒"]={nil,"每 4 秒，冻结周围被冰缓的非传奇敌人，持续 0.6 秒 "}c["免疫冰冻"]={{[1]={flags=0,keywordFlags=0,name="AvoidFreeze",type="BASE",value=100}},nil}
c["+125% 近战攻击暴击伤害加成"]={{[1]={flags=256,keywordFlags=0,name="CritMultiplier",type="BASE",value=125}},nil}
c["持盾牌时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["周围敌人被干扰，移动速度降低 25%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-25}},"周围敌人被干扰， "}c["终结 生命回满时不会取消生命偷取效果 近期内你若有击败敌人，则范围效果扩大 30% 不会承受反射的物理伤害"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=512,keywordFlags=0,name="Life",type="INC",value=30}},"终结 回满时不会取消生命偷取效果 效果 不会承受反射的物理伤害 "}c["每秒回复 0.3% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.3}},nil}
c["双手近战武器攻击的暴击率提高 40%"]={{[1]={flags=570425344,keywordFlags=0,name="CritChance",type="INC",value=40}},nil}
c["周围友军 +50% 暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={[1]={type="Global"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50},onlyAllies=true}}},nil}
c["被感电后，你有 3 秒免疫感电"]={nil,"被感电后，你有 3 秒免疫感电 "}c["+50% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},nil}
c["在【迷踪】状态时免疫元素异常状态 【迷踪】状态时有 10% 几率躲避法术伤害击中"]={{[1]={[1]={type="Condition",var="Phasing"},[2]={type="Condition",var="Phasing"},flags=2048,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=10}},"在免疫元素  "}c["+1 剑类的近战攻击范围"]={{[1]={flags=4194304,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1}},nil}
c["攻击附加 1 - 80 基础混沌伤害"]={{[1]={flags=0,keywordFlags=65536,name="ChaosMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="ChaosMax",type="BASE",value=80}},nil}
c["从偷取获取的每秒生命回复提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="INC",value=50}},nil}
c["击败敌人会回复自身 2% 最大能量护盾"]={nil,"击败敌人会回复自身 2% 最大能量护盾 "}c["+30% 地雷暴击伤害加成"]={{[1]={flags=0,keywordFlags=8192,name="CritMultiplier",type="BASE",value=30}},nil}
c["当处于沙姿态时，击败敌人获得一个挑战球"]={nil,"当处于沙姿态时，击败敌人获得一个挑战球 "}c["+25% 几率被点燃 被点燃时，获得 125 每秒生命回复"]={{[1]={[1]={type="Condition",var="Ignited"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=25}},"被 获得 125 每秒生命回复 "}c["反射的火焰、冰霜、闪电伤害降低 20%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=-20}},"反射的 "}c["能量护盾回复速度提高 40%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=40}},nil}
c["+600 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=600}},nil}
c["当你拥有兽化的召唤生物时，投射物攻击击中时有 20% 几率造成流血"]={{[1]={[1]={skillType=1,type="SkillType"},[2]={skillType=3,type="SkillType"},[3]={type="Condition",var="HaveBestialMinion"},flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=20}},nil}
c["+2 暴击球数量上限"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesMax",type="BASE",value=2}},nil}
c["地雷引爆范围扩大 20%"]={{[1]={flags=0,keywordFlags=0,name="MineDetonationAreaOfEffect",type="INC",value=20}},nil}
c["+32 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=32}},nil}
c["斧类攻击的伤害提高 8%"]={{[1]={flags=65536,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["你可以对敌人造成额外 1 个点燃效果 {variant:1}你的暴击不造成额外暴击伤害"]={{},"你可以对敌人造成"}c["锤类和短杖攻击 +25% 暴击伤害加成"]={{[1]={flags=1048576,keywordFlags=0,name="CritMultiplier",type="BASE",value=25}},nil}
c["【迷踪】状态时移动速度提高 15%"]={{[1]={[1]={type="Condition",var="Phasing"},flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["拥有 2 个深渊插槽"]={{[1]={flags=0,keywordFlags=0,name="AbyssalSocketCount",type="BASE",value=2}},nil}
c["当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电"]={nil,"当你召唤出烈焰时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 "}c["对致盲的敌人时，攻击和法术暴击率提高 40%"]={{[1]={[1]={type="Global"},[2]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=262144,name="CritChance",type="INC",value=40}},nil}
c["护甲提高 30%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=30}},nil}
c["魔力回复速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=10}},nil}
c["暴走状态时为瓦尔技能补充 5 个灵魂 {variant:2}若近期内你获得暴走状态，击败敌人时额外获得 1 个瓦尔灵魂"]={{},"暴走状态时为补充 5 个灵魂 {variant:2}若近期内你获得暴走状态，击败敌人时"}c["最大魔力提高 4%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=4}},nil}
c["该装备的攻击暴击率提高 35%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="INC",value=35}},nil}
c["受到【憎恨】影响时，+1.8% 攻击和法术基础暴击率"]={{[1]={[1]={type="Condition",var="AffectedBy憎恨"},flags=0,keywordFlags=0,name="CritChance",type="BASE",value=1.8}},nil}
c["投掷地雷的技能魔力保留降低 5%"]={{[1]={flags=0,keywordFlags=8192,name="ManaReserved",type="INC",value=-5}},nil}
c["根据和目标的距离来提升总近战伤害，最高额外提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanMeleeDistanceRamp",type="FLAG",value=true},[2]={[1]={ramp={[1]={[1]=15,[2]=1},[2]={[1]=40,[2]=0}},type="DistanceRamp"},[2]={type="Condition",var="CanMeleeDistanceRamp"},flags=256,keywordFlags=0,name="Damage",type="MORE",value=15}},nil}
c["护甲提高 140%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=140}},nil}
c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100% 战吼冷却回复速度提高 100% 近期内你若有使用战吼，你和周围友军的攻击速度提高 10%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=4,name="Life",type="INC",value=100},onlyAllies=true}}},"施放时回复 25% 和魔力 战吼持续时间 战吼冷却回复速度提高 100% 你和攻击速度提高 10% "}c["使用技能时有 20% 几率回复 10% 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"使用技能时回复 10%  "}c["施法时有 15% 几率免疫晕眩打断"]={{},"施法时免疫晕眩打断 "}c["剑类攻击的物理伤害提高 10%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["对冰缓敌人的伤害穿透 10% 火焰、冰霜、闪电抗性"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="ElementalPenetration",type="BASE",value=10}},nil}
c["持盾牌时有 3% 几率格挡法术伤害"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=3}},nil}
c["范围内配置的力量和智慧总计 40 点时，【元素打击】无法选择冰霜元素"]={nil,"范围内配置的力量和智慧总计 40 点时，【元素打击】无法选择冰霜元素 "}c["+5000 魔卫最大生命"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="BASE",value=5000}}}},nil}
c["+30 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=30}},nil}
c["主手武器击败敌人时，有 25% 几率获得狂怒球 副手武器击败敌人时，有 25% 几率获得 1 个耐力球 狂怒球达到上限时，物理总伤害额外提高 10%"]={{[1]={[1]={type="Condition",var="MainHandAttack"},[2]={type="Condition",var="OffHandAttack"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=25}},"击败敌人时，获得狂怒球 击败敌人时，有 25% 几率获得 1 个耐力球 狂怒球达到上限时，物理总额外提高 10% "}c["+1 锤类的近战攻击范围"]={{[1]={flags=1048576,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=1}},nil}
c["受到【愤怒】影响时，伤害穿透 15% 火焰抗性"]={{[1]={[1]={type="Condition",var="AffectedBy愤怒"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=15}},nil}
c["近期你或你的图腾若有击败过敌人，则每击败 1 个，伤害提高 6%"]={{[1]={[1]={type="Multiplier",varList={[1]="EnemyKilledRecently",[2]="EnemyKilledByTotemsRecently"}},flags=0,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["弓类攻击的伤害提高 10%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["弓类技能的持续伤害效果提高 20%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=20}},nil}
c["你每使敌人附着一种烙印，它们受到的伤害便提高 10%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你每使敌人附着一种烙印，它们 "}c["暴击率将随绝对闪电抗性而提高"]={{[1]={[1]={div=1,stat="LightningResistTotal",type="PerStat"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=1}},nil}
c["你的暴击伤害无法被反射 周围只有 1 个敌人时，伤害提高 100% 周围只有 1 个敌人时，不会受到暴击所造成的额外暴击伤害"]={{[1]={[1]={type="Condition",var="OnlyOneNearbyEnemy"},[2]={type="Condition",var="OnlyOneNearbyEnemy"},flags=0,keywordFlags=0,name="Damage",type="INC",value=100}},"你的暴击无法被反射 伤害 不会受到暴击所造成的额外暴击伤害 "}c["药剂持续期间，获得噬魂者 使用药剂时，失去从噬魂者获得的效果"]={nil,"药剂持续期间，获得噬魂者 使用药剂时，失去从噬魂者获得的效果 "}c["你的元素魔像免疫火焰、冰霜、闪电伤害 每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}}}},"你的元素免疫 每个召唤的魔像可使你的伤害 每个召唤的魔像可使它们为你提供的增益效果提高 25% "}c["可以施放 1 个额外烙印 你每使敌人附着一种烙印，它们受到的伤害便提高 10%"]={{},"可以施放 1 个"}c["每装备 1 个被腐化的物品，最大能量护盾提高 8%"]={{[1]={[1]={type="Multiplier",var="CorruptedItem"},flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=8}},nil}
c["陷阱投掷后 5 秒内不会损坏"]={nil,"陷阱投掷后 5 秒内不会损坏 "}c["周围被干扰的敌人的持续伤害降低 15%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=-15}},"周围被干扰的敌人的 "}c["持锤或短杖时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["+375 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=375}},nil}
c["持长杖时攻击伤害格挡几率 +6%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=6}},nil}
c["攻击和法术总暴击率额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="CritChance",type="MORE",value=-50}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["承受攻击造成的物理伤害 -2"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageTaken",type="BASE",value=-2}},nil}
c["你暴击造成的中毒总伤害额外提高 50%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=1048576,name="Damage",type="MORE",value=50}},nil}
c["获得暴击球来替代狂怒球"]={nil,"获得暴击球来替代狂怒球 "}c["攻击技能的冰霜伤害提高 30%"]={{[1]={flags=0,keywordFlags=65536,name="ColdDamage",type="INC",value=30}},nil}
c["过去 10 秒内格挡的每个攻击可使你的物理伤害提高 8% 过去 10 秒内你若成功格挡传奇怪物，则物理伤害提高 80%"]={{[1]={[1]={type="Condition",var="BlockedHitFromUniqueEnemyInPast10Sec"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},"过去 10 秒内格挡的每个可使你的 物理伤害提高 80% "}c["近期内你若有成功嘲讽敌人，则受到的伤害降低 6%"]={{[1]={[1]={type="Condition",var="TauntedEnemyRecently"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-6}},nil}
c["+20% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=20}},nil}
c["近战单手武器攻击的物理伤害提高 10%"]={{[1]={flags=301989888,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["+85 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=85}},nil}
c["攻击击中每个敌人会回复 +8 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=8}},nil}
c["每 15 点敏捷可使伤害提高 1%"]={{[1]={[1]={div=15,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="Damage",type="INC",value=1}},nil}
c["你和友军受你的光环技能影响时，伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="AffectedByAuraMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},nil}
c["每个【召唤纯净哨兵】的范围效果扩大 10%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},"每个【召唤纯净哨兵】的 "}c["获得暴击球时有 25% 几率获得 1 个耐力球 当你放置图腾时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 你拥有耐力球时，承受的元素伤害降低 5% 你拥有暴击球时，伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={[1]={stat="EnduranceCharges",threshold=1,type="StatThreshold"},[2]={stat="PowerCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=16384,name="ElementalDamageTaken",type="BASE",value=25}},"获得暴击球时获得 1 个耐力球 当你放置时，有 50% 几率获得 1 个暴击球 你或你的图腾击败敌人时有 15% 几率获得 1 个暴击球 降低 5% 伤害穿透 5% 火焰、冰霜、闪电抗性 "}c["在总计消耗 200 点魔力后的 4 秒内，伤害降低 6%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-6}},"在总计消耗 200 点后的 4 秒内，伤害 "}c["照亮范围的扩大和缩小也同样作用于伤害"]={{[1]={flags=0,keywordFlags=0,name="LightRadiusAppliesToDamage",type="FLAG",value=true}},nil}
c["法杖攻击的火焰、冰霜、闪电伤害提高 24%"]={{[1]={flags=8388608,keywordFlags=0,name="ElementalDamage",type="INC",value=24}},nil}
c["附加 75 - 130 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=75},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=130}},nil}
c["中毒伤害提高 10%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=10}},nil}
c["燃烧伤害提高 18%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=18}},nil}
c["免疫感电"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=100}},nil}
c["生命回满时不会取消生命偷取效果"]={nil,"生命回满时不会取消生命偷取效果 "}c["爪类攻击 +15% 暴击伤害加成"]={{[1]={flags=262144,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["近期内你若有进行攻击，则施法速度提高 30%"]={{[1]={[1]={type="Condition",var="AttackedRecently"},flags=16,keywordFlags=0,name="Speed",type="INC",value=30}},nil}
c["范围中的天赋被马拉克斯抑制"]={{[1]={flags=0,keywordFlags=0,name="残酷的约束",type="FLAG",value=true}},nil}
c["每隔 5 秒，在之后 1 秒内回复 20% 最大生命 你与周围队友共享能量球"]={nil,"每隔 5 秒，在之后 1 秒内回复 20% 最大生命 你与周围队友共享能量球 "}c["命中值提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=50}},nil}
c["击败敌人时有 5% 几率给予周围敌人不洁之力"]={{},"击败敌人时给予周围敌人不洁之力 "}c["每 5% 的攻击伤害格挡几率会使法术伤害提高 5%"]={{[1]={[1]={div=5,stat="BlockChance",type="PerStat"},flags=2,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["+20 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=20}},nil}
c["偷取能量护盾时，攻击和施法速度提高 6%"]={{[1]={[1]={type="Condition",var="LeechingEnergyShield"},flags=0,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["魔力回复速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=5}},nil}
c["攻击速度降低 15%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-15}},nil}
c["装备的护盾格挡几率若不低于 30%，则法术伤害的 0.5% 转化为生命偷取"]={{[1]={[1]={stat="ShieldBlockChance",threshold=30,type="StatThreshold"},flags=2,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.5}},nil}
c["每隔 5 秒，在之后 1 秒内回复 30% 最大生命"]={nil,"每隔 5 秒，在之后 1 秒内回复 30% 最大生命 "}c["回复量降低 70%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecovery",type="INC",value=-70}},nil}
c["攻击被点燃敌人会使燃烧加快 20%"]={{[1]={flags=1,keywordFlags=0,name="IgniteBurnFaster",type="INC",value=20}},nil}
c["匕首攻击 +15% 暴击伤害加成"]={{[1]={flags=524288,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["-10% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=-10}},nil}
c["持长杖时，攻击类技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=30}},nil}
c["护甲提高 90%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=90}},nil}
c["非暴击造成 25% 伤害 {variant:3,4}非暴击造成 40% 伤害"]={nil,"非暴击造成 25% 伤害 {variant:3,4}非暴击造成 40% 伤害 "}c["你身上的光环效果提高 20%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffectOnSelf",type="INC",value=20}},nil}
c["燃烧伤害提高 40%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=40}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["你只能从技能中得到一种非旗帜光环。"]={nil,"你只能从技能中得到一种非旗帜光环。 "}c["生效期间，瓦尔技能的总伤害额外提高 40%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=256,name="Damage",type="MORE",value=40}},nil}
c["物品稀有度降低 40%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=-40}},nil}
c["当物品有本词缀时可以有最多 5 个固定基底词缀"]={nil,"当物品有本词缀时可以有最多 5 个固定基底词缀 "}c["攻击伤害的 1% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=1}},nil}
c["击中时有 25% 几率使目标流血"]={{[1]={flags=0,keywordFlags=0,name="BleedChance",type="BASE",value=25}},nil}
c["受到【清晰】影响时，非持续吟唱技能的总魔力消耗 -5 {variant:11}受到【清晰】影响时，被击中时， 4 秒内回复等同于 20% 伤害的魔力"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=262144,name="ManaCost",type="BASE",value=-5}},"非持续吟唱  {variant:11}受到【清晰】影响时，被时， 4 秒内回复等同于 20% 伤害的魔力 "}c["持爪时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["弓类攻击的命中值提高 10%"]={{[1]={flags=131072,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["药剂持续期间，被你点燃的敌人受到的伤害提高 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Ignited"},[2]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}}}},nil}
c["在【迷踪】状态时免疫元素异常状态"]={nil,"在【迷踪】状态时免疫元素异常状态 "}c["击中稀有或传奇敌人时，有 10% 几率获得 1 个狂怒球"]={{},"稀有或传奇敌人时，获得 1 个狂怒球 "}c["位于奉献地面之上时，免疫元素异常状态"]={nil,"位于奉献地面之上时，免疫元素异常状态 "}c["移动速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=5}},nil}
c["技能效果持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=20}},nil}
c["近期若有能量护盾开始回复，则能量护盾的回复不会被打断 总能量护盾每秒回复额外降低 50% 能量护盾偷取总回复上限额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE"}}," 偷取总回复上限额外降低 50% "}c["插入苍白之凝珠宝时，召唤生物的命中值 +1000"]={{[1]={[1]={type="Condition",var="Have苍白之凝珠宝In{SlotName}"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=1000}}}},nil}
c["总魔力保留额外降低 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="MORE",value=-50}},nil}
c["+14 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=14}},nil}
c["此物品上的诅咒会被反弹回自己 被冰缓后，你有 3 秒免疫冰缓"]={nil,"此物品上的诅咒会被反弹回自己 被冰缓后，你有 3 秒免疫冰缓 "}c["有 10% 几率使晕眩时间延长 1 倍 持双手武器时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="EnemyStunDuration",type="BASE",value=10}},"使延长 1 倍 伤害提高 24% "}c["持续吟唱时，被击中有 20% 几率获得耐力球 持续吟唱时，被击中有 20% 几率获得狂怒球"]={{},"持续吟唱时，被获得耐力球 持续吟唱时，被击中有 20% 几率获得狂怒球 "}c["你的元素魔像免疫火焰、冰霜、闪电伤害 每个召唤的魔像可使你的伤害提高 20%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}}}},"你的元素免疫 每个召唤的魔像可使你的伤害 "}c["该武器击中后造成的 100% 物理伤害转换为一种随机元素伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=100},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=100},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=100}},nil}
c["你每拥有 1 个魔卫，你和你的召唤生物获得 1% 物理伤害减免 你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 【复苏的魔卫】的重击攻击效果范围扩大 100% 【复苏的魔卫】打出重击攻击时，冷却回复速度提高 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="INC",value=100}}}},"你每拥有 1 个，你和你的 1%  你的【复苏的魔卫】死亡时产生腐蚀地面，每秒造成等同它们 50% 最大生命的混沌伤害 【复苏的魔卫】的重击攻击效果范围 【复苏的魔卫】打出重击攻击时，冷却回复速度提高 100% "}c["物品掉落数量提高 8%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=8}},nil}
c["+25% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=25}},nil}
c["范围内配置的力量和智慧总计 40 点时，【元素打击】无法选择冰霜元素 {variant:1}范围内含的力量和智慧总计 40 点时，【元素打击】的总冰霜伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="BASE"},[2]={flags=512,keywordFlags=0,name="Int",type="BASE"}},"内配置的总计 40 点时，【元素打击】无法选择冰霜元素 {variant:1}范围内含的力量和智慧总计 40 "}c["对元素异常状态的敌人的暴击伤害加成  +45%"]={{[1]={[1]={actor="enemy",type="ActorCondition",varList={[1]="Frozen",[2]="Chilled",[3]="Shocked",[4]="Ignited"}},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=45}},nil}
c["你击败的敌人将会感电 你制造的感电会扩散到半径 15 内的其他敌人上"]={nil,"你击败的敌人将会感电 你制造的感电会扩散到半径 15 内的其他敌人上 "}c["弓类攻击的攻击速度提高 3%"]={{[1]={flags=131073,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["双手近战武器攻击的攻击速度提高 10%"]={{[1]={flags=570425345,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["闪电伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=50}},nil}
c["闪避值与护甲提高 24%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=24}},nil}
c["单体近战攻击会对周围目标造成溅射伤害"]={nil,"单体近战攻击会对周围目标造成溅射伤害 "}c["范围内的天赋被永恒帝国抑制"]={{[1]={flags=0,keywordFlags=0,name="优雅的狂妄",type="FLAG",value=true}},nil}
c["你受到的诅咒效果降低 25%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffectOnSelf",type="INC",value=-25}},nil}
c["每秒回复 1% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=1}},nil}
c["受到【元素净化】影响时，+50% 混沌抗性"]={{[1]={[1]={type="Condition",var="AffectedBy元素净化"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=50}},nil}
c["药剂持续期间，20% 承受的击中物理伤害转化为冰霜伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsCold",type="BASE",value=20}},nil}
c["每层鬼影缠身可使攻击和施法速度提高 6%"]={{[1]={[1]={type="Multiplier",var="GhostShroud"},flags=0,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["造成暴击时无视目标的火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=0,name="IgnoreElementalResistances",type="FLAG",value=true}},nil}
c["药剂持续期间，每秒受到 30 混沌伤害"]={nil,"药剂持续期间，每秒受到 30 混沌伤害 "}c["每个陷阱可使你的伤害提高 8% 陷阱有 20% 几率额外触发一次"]={{[1]={flags=0,keywordFlags=4096,name="Damage",type="INC",value=8}},"每个可使你的 陷阱有 20% 几率额外触发一次 "}c["投掷陷阱类技能的魔力消耗降低 20%"]={{[1]={flags=0,keywordFlags=4096,name="ManaCost",type="INC",value=-20}},"投掷类 "}c["若范围内含有 40 点力量，被【冰霜之锤】击碎的敌人的物品稀有度提高 20%"]={{[1]={flags=512,keywordFlags=0,name="Str",type="INC",value=20}},"若内含有 40 点，被【冰霜之锤】击碎的敌人的物品稀有度 "}c["可以从暗影刺客的起点配置天赋"]={{},nil}
c["耐力球，狂怒球，以及暴击球的持续时间缩短 30%"]={{[1]={flags=0,keywordFlags=0,name="PowerChargesDuration",type="INC",value=-30},[2]={flags=0,keywordFlags=0,name="FrenzyChargesDuration",type="INC",value=-30},[3]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=-30}},nil}
c["每个召唤的魔像可使它们为你提供的增益效果提高 25% 最多可同时拥有额外 1 个魔像"]={{},"每个召唤的可使它们为你提供的增益效果 最多可同时拥有额外 1 个魔像 "}c["40% 的冰霜伤害转换为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageConvertToFire",type="BASE",value=40}},nil}
c["攻击与法术暴击率提高 8%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=8}},nil}
c["图腾所使用攻击的攻击速度提高 8%"]={{[1]={flags=1,keywordFlags=16384,name="Speed",type="INC",value=8}},nil}
c["消耗总计 200 魔力后触发 20 级的【秘术苏醒】"]={nil,nil}
c["当你拥有护体时获得【猛攻】状态"]={{[1]={[1]={type="Condition",var="Fortify"},flags=0,keywordFlags=0,name="Condition:Onslaught",type="FLAG",value=true}},nil}
c["右戒指栏位：法术的投射物无法分裂 {variant:2}法术的投射物无法穿透"]={nil,"法术的投射物无法分裂 {variant:2}法术的投射物无法穿透 "}c["近战单手武器攻击的攻击速度提高 5%"]={{[1]={flags=301989889,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["击中时有 25% 几率嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人"]={{[1]={flags=0,keywordFlags=262144,name="ImpaleChance",type="BASE",value=25}},"时嘲讽敌人 击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20%  "}c["持盾牌时攻击伤害格挡几率 +4%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=4}},nil}
c["每个耐力球附加 +4% 混沌抗性"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=4}},nil}
c["格挡回复提高 40%"]={{[1]={flags=0,keywordFlags=0,name="BlockRecovery",type="INC",value=40}},nil}
c["每有 1 个地图物品属性影响该地区，则攻击伤害提高 6%"]={{[1]={flags=1,keywordFlags=0,name="Str",type="INC",value=6},[2]={flags=1,keywordFlags=0,name="Dex",type="INC",value=6},[3]={flags=1,keywordFlags=0,name="Int",type="INC",value=6}},"每有 1 个地图物品影响该地区，则伤害 "}c["每一级在击败敌人时获得 +1 能量护盾"]={{[1]={[1]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=1}},"击败敌人时  "}c["匕首攻击的伤害提高 15%"]={{[1]={flags=524288,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["施法速度提高 6%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["攻击造成的物理伤害提高 16%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["陷阱所使用的技能范围扩大 15%"]={{[1]={flags=0,keywordFlags=4096,name="AreaOfEffect",type="INC",value=15}},nil}
c["攻击伤害的 0.2% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.2}},nil}
c["击败稀有或者传奇敌人时，攻击速度提高 20%，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 20%，持续 20秒"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},"击败稀有或者传奇敌人时，，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 20%，持续 20秒 "}c["智慧提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Int",type="INC",value=8}},nil}
c["伤害穿透 6% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdPenetration",type="BASE",value=6}},nil}
c["药剂持续期间， +4% 火焰、冰霜、闪电抗性上限"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=4},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ColdResistMax",type="BASE",value=4},[3]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=4}},nil}
c["免疫晕眩"]={{[1]={flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["怪物造成元素异常会作用在附近友方改为在你"]={nil,"怪物造成元素异常会作用在附近友方改为在你 "}c["你的【毒力】消退减缓 50%"]={nil,"你的【毒力】消退减缓 50% "}c["+2% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=2}},nil}
c["你复苏的魔卫视为灵枢"]={nil,"你复苏的魔卫视为灵枢 "}c["全局防御提高 25%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=25}},nil}
c["造成敌人晕眩的攻击和法术带有终结效果 持锤时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=1,keywordFlags=0,name="Damage",type="INC",value=30}},"造成敌人晕眩的和法术带有终结效果 攻击技能造成的异常状态 "}c["附加 173 - 213 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=173},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=213}},nil}
c["每秒对周围敌人造成 50 混沌伤害 投射物伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=20}},"每秒对周围敌人造成 50  投射物伤害 "}c["若所有装备均为【裂界之器】，使用药剂时移除 1 个异常状态 裂界之器"]={nil,"若所有装备均为【裂界之器】，使用药剂时移除 1 个异常状态 裂界之器 "}c["持双手武器时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["双手近战武器攻击的物理伤害提高 14%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["你造成的流血效果将作用到你身上 你身上的每层中毒状态使你获得 +1% 混沌抗性"]={{[1]={flags=0,keywordFlags=2097152,name="ChaosResist",type="BASE",value=1}},"你造成的效果将作用到你身上 你身上的每层中毒状态使你  "}c["召唤生物的伤害提高 6%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=6}}}},nil}
c["持盾牌时 +6% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=6}},nil}
c["近期内你若受到【残暴打击】，则攻击速度提高 25%"]={{[1]={[1]={type="Condition",var="BeenSavageHitRecently"},flags=1,keywordFlags=0,name="Speed",type="INC",value=25}},nil}
c["法术伤害的 0.2% 会转化为能量护盾偷取"]={{[1]={flags=2,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=0.2}},nil}
c["锤类攻击的攻击速度提高 2%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["10% 几率避免致盲"]={{},"避免致盲 "}c["移动技能不消耗魔力"]={{[1]={flags=0,keywordFlags=8,name="ManaCost",type="MORE",value=-100}},nil}
c["闪电伤害击中时有 15% 几率使敌人受到感电效果影响"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=15}},nil}
c["最大能量护盾提高 18%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=18}},nil}
c["受到【清晰】影响时，非持续吟唱技能的总魔力消耗 -5"]={{[1]={[1]={type="Condition",var="AffectedBy清晰"},flags=0,keywordFlags=0,name="ManaCost",type="BASE",value=-5}},"非持续吟唱  "}c["药剂持续期间免疫点燃"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=100}},nil}
c["敌人无法偷取你的魔力 此物品上的技能石魔力消耗降低 50%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=-50}},"敌人无法偷取你的 此物品上的技能石魔力消耗 "}c["爪类攻击的暴击率提高 15%"]={{[1]={flags=262144,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="Evasion",type="INC",value=10}},"被时，丢失一个鬼影缠身，回复 5% 等同于你的能量护盾 移动速度 "}c["匕首攻击的伤害提高 12%"]={{[1]={flags=524288,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["周围敌人无法获得暴击，狂怒，或耐力球 你与周围队友共享能量球 击中时有 10% 获得 1 个暴击球、狂怒球或耐力球"]={nil,"周围敌人无法获得暴击，狂怒，或耐力球 你与周围队友共享能量球 击中时有 10% 获得 1 个暴击球、狂怒球或耐力球 "}c["10% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=10}},nil}
c["药剂持续期间，混沌伤害不会穿透能量护盾 将生命扣至剩余 1 点，扣除的生命将在 2 秒内转换为能量护盾"]={nil,"药剂持续期间，混沌伤害不会穿透能量护盾 将生命扣至剩余 1 点，扣除的生命将在 2 秒内转换为能量护盾 "}c["持斧时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["闪电抗性高于 75% 时，每高 1%，闪电伤害便提高 18%"]={{[1]={[1]={div=1,stat="LightningResistOver75",type="PerStat"},flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=18}},nil}
c["主手武器击败敌人时，有 25% 几率获得狂怒球 副手武器击败敌人时，有 25% 几率获得 1 个耐力球"]={{},"击败敌人时，获得狂怒球 击败敌人时，有 25% 几率获得 1 个耐力球 "}c["装备时触发 20 级的【泯灭之舞】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="DeathWalk"}}},nil}
c["护甲提高 8%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=8}},nil}
c["你每有 100 点智慧，周围队友的施法速度便提高 3%"]={{[1]={[1]={div=100,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=3},onlyAllies=true}}},nil}
c["每秒回复 0.5% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.5}},nil}
c["击中时有 25% 几率用 10 级的【脆弱】诅咒敌人 {variant:1}攻击击中受诅咒的敌人时造成流血"]={{[1]={flags=0,keywordFlags=262144,name="BleedChance",type="BASE",value=25}},"时用 10 级的【脆弱】诅咒敌人 {variant:1}攻击击中受诅咒的敌人时 "}c["地雷造成 1% 的伤害转化为你的生命偷取"]={{[1]={flags=0,keywordFlags=8192,name="DamageLifeLeechToPlayer",type="BASE",value=1}},nil}
c["被你的击中所击败的中毒敌人会破碎"]={nil,"被你的击中所击败的中毒敌人会破碎 "}c["匕首攻击的命中值提高 6%"]={{[1]={flags=524288,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["烙印技能伤害提高 14%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["免疫点燃和感电 近期每有 1 个你的地雷被引爆，则每秒回复 1% 生命，最多 10%"]={{},"免疫和感电 近期每有 1 个你的被引爆，则10% "}c["对冰冻敌人造成伤害的 1% 转化为能量护盾偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Frozen"},flags=0,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=1}},nil}
c["击退方向颠倒"]={nil,"击退方向颠倒 "}c["陷阱投掷速度提高 16%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=16}},nil}
c["+10% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=10}},nil}
c["投射物穿透目标后，投射物对它们的暴击率提高 100%"]={{[1]={[1]={stat="PierceCount",threshold=1,type="StatThreshold"},flags=1024,keywordFlags=0,name="CritChance",type="INC",value=100}},nil}
c["+1% 火焰抗性上限"]={{[1]={flags=0,keywordFlags=0,name="FireResistMax",type="BASE",value=1}},nil}
c["流血伤害提高 60%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=60}},nil}
c["受到【怨毒光环】影响时，不受【流血】影响 {variant:77}受【怨毒光环】影响时，你造成的伤害类异常状态的伤害生效速度提高 15%"]={{[1]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=2097152,name="Damage",type="INC",value=15}},"不受【】影响 {variant:77}受【怨毒光环】影响时，你造成的类异常状态的伤害生效速度 "}c["灵枢附近的敌人受到【诅咒】影响时致盲 {variant:3}灵枢附近被击败的敌人被【诅咒】引爆，则造成等同它们 3% 生命的物理伤害"]={nil,"灵枢附近的敌人受到【诅咒】影响时致盲 {variant:3}灵枢附近被击败的敌人被【诅咒】引爆，则造成等同它们 3% 生命的物理伤害 "}c["+5 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=5}},nil}
c["狂怒球达到上限时，物理总伤害额外提高 10%"]={{[1]={[1]={stat="FrenzyCharges",thresholdStat="FrenzyChargesMax",type="StatThreshold"},flags=0,keywordFlags=0,name="PhysicalDamage",type="MORE",value=10}},nil}
c["赞美 6000 名被高阶圣堂武僧神主转化的新信徒"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC神主",type="FLAG",value=true}},nil}
c["被你感电的敌人移动速度降低 20% 伤害穿透 20% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-20}},"被你感电的敌人 伤害穿透 20% 闪电抗性 "}c["每个耐力球可使火焰伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=6}},nil}
c["召唤生物的伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=10}}}},nil}
c["可以施放 1 个额外烙印 烙印技能伤害提高 20%"]={{},"可以施放 1 个"}c["受到的火焰、冰霜、闪电伤害降低 6%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=-6}},nil}
c["格挡时回复 +20 魔力 从盾牌获取的防御提高 40%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"格挡时回复   防御提高 40% "}c["流血伤害提高 30%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=30}},nil}
c["满血时闪避值提高 40%"]={{[1]={[1]={type="Condition",var="FullLife"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=40}},nil}
c["穿刺的效果提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ImpaleEffect",type="INC",value=8}},nil}
c["在【猛攻】状态期间，得到【迷踪】状态 击败敌人时获得 4 秒【迷踪】状态"]={nil,"在【猛攻】状态期间，得到【迷踪】状态 击败敌人时获得 4 秒【迷踪】状态 "}c["受到的所有伤害穿透护盾 受到的元素伤害有 50% 视为混沌伤害"]={nil,"受到的所有伤害穿透护盾 受到的元素伤害有 50% 视为混沌伤害 "}c["诅咒施法速度提高 10%"]={{[1]={flags=16,keywordFlags=2,name="Speed",type="INC",value=10}},nil}
c["持续时间延长 40%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=40}},nil}
c["药剂持续期间，攻击格挡率提高 30%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=30}},nil}
c["近期内你若打出过暴击，则每有 1 个暴击球，就会每秒受到 400 闪电伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},[2]={type="Condition",var="CritRecently"},flags=0,keywordFlags=0,name="LightningDegen",type="BASE",value=400}},nil}
c["持续时间延长 50%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=50}},nil}
c["伤害提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["击中稀有或传奇敌人时，有 20% 几率获得 1 个狂怒球"]={{},"稀有或传奇敌人时，获得 1 个狂怒球 "}c["+60% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=60}},nil}
c["承受的范围伤害降低 5% +2 近战与空手攻击范围 近期内你若有晕眩敌人，则范围效果扩大 10% 近战技能的范围效果提高 10%"]={{[1]={[1]={type="Condition",var="StunnedEnemyRecently"},flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},"的 +2 近战与空手攻击范围 范围效果扩大 10% 近战技能的范围效果提高 10% "}c["攻击伤害的 0.4% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.4}},nil}
c["物理伤害的 50% 转换为闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToLightning",type="BASE",value=50}},nil}
c["放置地雷时有 20% 几率额外再放置 1 个 地雷冷却速度提高 100%"]={{[1]={flags=0,keywordFlags=8192,name="CooldownRecovery",type="BASE",value=20}},"放置时额外再放置 1 个 地雷提高 100% "}c["你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20% 敌人身上的非伤害异常状态效果提高 30% 你击中造成的感电，必定会使对方所承受伤害提高至少 15%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="MORE"}},"你造成的冰缓必定使目标减速 10 敌人身上的非异常状态效果提高 30% 你击中造成的感电，必定会使对方所承受伤害提高至少 15% "}c["+20% 地雷暴击伤害加成"]={{[1]={flags=0,keywordFlags=8192,name="CritMultiplier",type="BASE",value=20}},nil}
c["附加 29 - 39 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=29},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=39}},nil}
c["每个狂怒球使旅行技能的冷却回复速度提高 10%"]={{[1]={[1]={skillType=91,type="SkillType"},[2]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=10}},nil}
c["近战暴击时有 10% 几率获得 1 个耐力球"]={{},"获得 1 个耐力球 "}c["召唤生物每秒回复 2% 生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}}}},nil}
c["护体效果持续时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="FortifyDuration",type="INC",value=10}},nil}
c["双持时，施法速度提高 5%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=16,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["在【迷踪】状态期间，周围敌人的总命中值额外降低 15%"]={{}," "}c["空手时法术附加 90 - 240 基础闪电伤害"]={{[1]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=90},[2]={[1]={type="Condition",var="Unarmed"},flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=240}},nil}
c["持锤时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["每个狂怒球提高 4% 闪避值"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=4}},nil}
c["药剂持续期间，你无法生命回复"]={nil,"药剂持续期间，你无法生命回复 "}c["暴击伤害加成也会套用于异常状态的持续伤害加成，数值为 50%"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplierAppliesToDegen",type="BASE",value=50}},nil}
c["暴走状态时免疫物理伤害 1.5 秒"]={nil,"暴走状态时免疫物理伤害 1.5 秒 "}c["被击中时，4 秒内回复等同于 8% 伤害的魔力"]={nil,"被击中时，4 秒内回复等同于 8% 伤害的魔力 "}c["攻击和法术暴击率提高 33%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=33}},nil}
c["处于【灵巧】状态时，不会受到暴击所造成的额外暴击伤害"]={nil,"处于【灵巧】状态时，不会受到暴击所造成的额外暴击伤害 "}c["持斧时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["格挡攻击时反射 1 - 220 闪电伤害 全局防御提高 22%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="BlockChance",type="INC",value=22}},"时反射 1 - 220 闪电伤害 防御 "}c["+24 敏捷与智慧"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=24},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=24}},nil}
c["+20 敏捷和智慧"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="Int",type="BASE",value=20}},nil}
c["移动技能的攻击速度提高 15%"]={{[1]={flags=1,keywordFlags=8,name="Speed",type="INC",value=15}},nil}
c["当你吞噬灵柩时触发 20 级的【召唤幻灵】技能"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="TriggeredSummonGhostOnKill"}}},nil}
c["每秒失去 5% 能量护盾 生命全满时，生命偷取套用于能量护盾"]={nil,"每秒失去 5% 能量护盾 生命全满时，生命偷取套用于能量护盾 "}c["护甲提高 12%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=12}},nil}
c["击中冰缓的敌人时使其致盲 对冰缓敌人穿透其 20% 冰霜抗性"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="ColdPenetration",type="BASE",value=20}},"冰缓的敌人时使其致盲   "}c["击败被点燃的敌人回复 +30 生命"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=30}},"击败被的敌人回复  生命 "}c["总命中值额外提高 50%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="MORE",value=50}},nil}
c["击败受元素异常状态影响的敌人"]={nil,"击败受元素异常状态影响的敌人 "}c["该装备的闪避与能量护盾提高 175%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=175}},nil}
c["+200 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=200}},nil}
c["长杖攻击的攻击速度提高 2% "]={{[1]={flags=2097153,keywordFlags=0,name="Speed",type="INC",value=2}},nil}
c["+2000 魔卫最大生命"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="BASE",value=2000}}}},nil}
c["火焰、冰霜、闪电伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=18}},nil}
c["你的技能造成元素异常状态时，扩散至周围敌人  半径：18 你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20% 你击中造成的感电，必定会使对方所承受伤害提高至少 20%"]={{[1]={flags=2048,keywordFlags=0,name="AreaOfEffect",type="MORE"}},"你的技能造成元素时，扩散至周围敌人  ：18 你击中造成的冰缓必定使目标减速 10 你击中造成的感电，必定会使对方所承受伤害提高至少 20% "}c["魔力保留降低 8%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=-8}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["当你攻击时触发 20 级的【风暴突袭】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="StormCascadeTriggered"}}},nil}
c["5% 额外物理伤害减伤"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=5}},nil}
c["你的暴击伤害无法被反射 附近最多只有 1 个稀有或传奇敌人时，总伤害额外提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE"}},"你的暴击无法被反射 附近最多只有 1 "}c["+160 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=160}},nil}
c["+15 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=15}},nil}
c["召唤生物免疫致盲"]={nil,"免疫致盲 "}c["法杖攻击的攻击速度提高 3%"]={{[1]={flags=8388609,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["攻击击中有 10% 几率使敌人流血"]={{[1]={flags=1,keywordFlags=0,name="BleedChance",type="BASE",value=10}},nil}
c["近战物理伤害提高 12%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["范围伤害提高 10%"]={{[1]={flags=512,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["使用移动技能时，承受 200 额外物理伤害"]={{[1]={flags=0,keywordFlags=8,name="PhysicalDamage",type="BASE",value=200}},"使用时，承受  "}c["当你近战晕眩敌人时，有 8% 几率获得 1 个暴击球"]={{},"当你晕眩敌人时，获得 1 个暴击球 "}c["该装备的闪避与能量护盾提高 90%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=90}},nil}
c["低血时获得【猛攻】"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Condition:Onslaught",type="FLAG",value=true}},nil}
c["双手近战武器攻击的物理伤害提高 20%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=20}},nil}
c["最大能量护盾提高 6%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=6}},nil}
c["反射的物理伤害降低 20% 有 4% 几率造成双倍伤害 +20 力量"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-20}},"反射的 有 4% 几率造成双倍伤害 +20 力量 "}c["锤类攻击的伤害提高 8%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["你击败的敌人有 20% 几率爆炸，造成等同该敌人最大生命四分之一的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=20}},"你击败的敌人爆炸，造成等同该敌人四分之一的混沌伤害 "}c["+35% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=35}},nil}
c["你身上的中毒效果消失速度减慢 50%"]={nil,"你身上的中毒效果消失速度减慢 50% "}c["18% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=18}},nil}
c["最多同时可额外放置 1 个遥控地雷"]={{[1]={flags=0,keywordFlags=0,name="ActiveMineLimit",type="BASE",value=1}},nil}
c["效果期间，你创造的【奉献地面】可以使敌人承受的伤害提高 9%"]={{[1]={[1]={type="Condition",var="UsingFlask"},[2]={actor="enemy",type="ActorCondition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=9}}}},nil}
c["+4% 混沌抗性"]={{[1]={flags=0,keywordFlags=0,name="ChaosResist",type="BASE",value=4}},nil}
c["受到击中冰霜伤害的 100% 转为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdDamageTakenAsFire",type="BASE",value=100}},nil}
c["+400 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=400}},nil}
c["过去 8 秒你若有使用战吼，有 15% 几率造成双倍伤害"]={{[1]={flags=0,keywordFlags=4,name="Damage",type="BASE",value=15}},"过去 8 秒你若有使用，造成双倍 "}c["流血伤害提高 20%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=20}},nil}
c["回复量降低 65%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecovery",type="INC",value=-65}},nil}
c["附加 2 - 5 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=2},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=5}},nil}
c["每个地雷可以让周围敌人造成的伤害降低 2%，最多 10%"]={{[1]={flags=0,keywordFlags=8192,name="Damage",type="INC",value=-2}},"每个可以让周围敌人造成的，最多 10% "}c["你身上的药剂效果提高 8%"]={{[1]={flags=0,keywordFlags=0,name="FlaskEffect",type="INC",value=8}},nil}
c["击败稀有或者传奇敌人时，获得【猛攻】状态 20 秒"]={nil,"击败稀有或者传奇敌人时，获得【猛攻】状态 20 秒 "}c["持盾牌时有 4% 几率格挡法术伤害"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=4}},nil}
c["拥有【猫之隐匿】时获得【玫红之舞】"]={{[1]={[1]={type="Condition",var="AffectedBy猫之隐匿"},flags=0,keywordFlags=0,name="Keystone",type="LIST",value="玫红之舞"}},nil}
c["附加 41 - 107 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=41},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=107}},nil}
c["剑类攻击的攻击速度提高 10%"]={{[1]={flags=4194305,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["攻击和法术附加 21 - 33 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=21},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=33}},nil}
c["攻击技能的闪电伤害提高 40%"]={{[1]={flags=0,keywordFlags=65536,name="LightningDamage",type="INC",value=40}},nil}
c["火焰伤害的 1% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="FireDamageLifeLeech",type="BASE",value=1}},nil}
c["该装备的护甲与闪避提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=50}},nil}
c["药剂持续期间，你造成的中毒持续时间延长 63%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=63}},nil}
c["近战暴击时有 10% 几率获得 1 个耐力球 持长杖时，攻击类技能造成的异常状态伤害提高 30% +2 长杖的近战攻击范围"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="UsingStaff"},flags=256,keywordFlags=0,name="Damage",type="BASE",value=10}},"获得 1 个耐力球 攻击类技能造成的异常状态提高 30% +2 长杖的近战攻击范围 "}c["击中稀有或传奇敌人时，有 10% 几率创造【奉献地面】，持续 8 秒 位于奉献地面之上时，免疫元素异常状态 周围敌人受到的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=0,keywordFlags=262144,name="ElementalDamageTaken",type="BASE",value=10}},"稀有或传奇敌人时，创造【奉献地面】，持续 8 秒 位于奉献地面之上时，免疫元素异常状态 周围敌人提高 10% "}c["投射物速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="ProjectileSpeed",type="INC",value=5}},nil}
c["你使用技能时有 25% 几率获得 1 个轮回球 每个轮回球可使攻击和法术附加 14 - 16 基础物理伤害"]={{[1]={[1]={type="Multiplier",var="SiphoningCharge"},flags=1,keywordFlags=0,name="PhysicalDamage",type="BASE",value=25}},"你使用技能时获得 1 个轮回球 和法术附加 14 - 16 基础 "}c["弓类攻击 +30% 暴击伤害加成"]={{[1]={flags=131072,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["冰霜伤害提高 13%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=13}},nil}
c["当你的陷阱被敌人触发时，有 15% 的机会获得 1 个暴击球 当你的地雷对敌人爆炸时，有 15% 的机会获得 1 个暴击球"]={{},"当你的被敌人触发时，有 机会获得 1 个暴击球 当你的地雷对敌人爆炸时，有 15% 的机会获得 1 个暴击球 "}c["反射的物理伤害降低 20% 有 4% 几率造成双倍伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-20}},"反射的 有 4% 几率造成双倍伤害 "}c["攻击和法术附加 7 - 15 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=7},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=15}},nil}
c["受到【闪电之捷】影响时，+60% 闪电抗性"]={{[1]={[1]={type="Condition",var="AffectedBy闪电之捷"},flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=60}},nil}
c["持单手武器时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["击败每个感电的敌人回复 +30 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=30}},"击败每个感电的敌人回复   "}c["该装备的护甲与闪避提高 180%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=180}},nil}
c["每有一个影响你的捷光环，则避免晕眩的几率提高 35% 捷光环的魔力保留总是 45%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="INC",value=35}},"每有一个影响你的捷光环，则避免晕眩的几率 捷光环的总是 45% "}c["法杖攻击的火焰、冰霜、闪电伤害提高 12%"]={{[1]={flags=8388608,keywordFlags=0,name="ElementalDamage",type="INC",value=12}},nil}
c["处于【灵巧】状态时，攻击和施法速度提高 20%"]={{[1]={[1]={type="Condition",var="Elusive"},flags=0,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["移动速度提高 3%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=3}},nil}
c["+25 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=25}},nil}
c["当你格挡时有 10% 几率获得 1 个狂怒球"]={{},"当你格挡时获得 1 个狂怒球 "}c["你造成的中毒伤害生效速度提高 5%"]={{[1]={flags=0,keywordFlags=0,name="PoisonFaster",type="INC",value=5}},nil}
c["将所有闪避值转换为护甲，敏捷不再提供闪避值加成"]={{[1]={flags=0,keywordFlags=0,name="IronReflexes",type="FLAG",value=true}},nil}
c["敌人被晕眩时间延长 45%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=45}},nil}
c["弓类攻击的物理伤害提高 15%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["护甲提高 180%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=180}},nil}
c["陷阱暴击率提高 25%"]={{[1]={flags=0,keywordFlags=4096,name="CritChance",type="INC",value=25}},nil}
c["锤类和短杖攻击的攻击速度提高 6%"]={{[1]={flags=1048577,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["从偷取获取的每秒魔力回复提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ManaLeechRate",type="INC",value=20}},nil}
c["每 10 点奉献使盾牌获取的防御提高 3%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},[2]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="Defences",type="INC",value=3}},nil}
c["站立时，创建奉献地面"]={nil,"站立时，创建奉献地面 "}c["+110 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=110}},nil}
c["匕首攻击的物理伤害提高 24%"]={{[1]={flags=524288,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["总魔力保留额外提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="MORE",value=50}},nil}
c["持盾牌时 +12% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=12}},nil}
c["+18% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=18}},nil}
c["击中你的敌人有 10% 的几率获得一个耐力球，狂怒球或暴击球"]={{},"你的敌人有 几率获得一个耐力球，狂怒球或暴击球 "}c["每秒获得一个精神球"]={nil,"每秒获得一个精神球 "}c["生命回满时不会取消生命偷取效果 近期内你若有击败敌人，则范围效果扩大 30% 不会承受反射的物理伤害"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=512,keywordFlags=0,name="Life",type="INC",value=30}},"回满时不会取消生命偷取效果 效果 不会承受反射的物理伤害 "}c["近期内你若被击中，则每秒获得 1 个耐力球"]={nil,"近期内你若被击中，则每秒获得 1 个耐力球 "}c["此物品上的技能石受到 16 级的 陷阱及地雷伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=16,skillId="SupportTrapAndMineDamage"}}},nil}
c["此武器造成的中毒总伤害有 20% 几率额外提高 300%"]={{[1]={flags=134217728,keywordFlags=0,name="Damage",type="BASE",value=20}},"此中毒总额外提高 300% "}c["持续吟唱技能的攻击速度提高 10%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["敌人被晕眩时间延长 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=25}},nil}
c["陷阱有 20% 几率额外触发一次"]={{},"额外触发一次 "}c["每秒获得一个幽灵护罩，最大 3 个 被击中时，丢失一个幽灵护罩，回复 5% 等同于你闪避值的能量护盾"]={nil,"每秒获得一个幽灵护罩，最大 3 个 被击中时，丢失一个幽灵护罩，回复 5% 等同于你闪避值的能量护盾 "}c["击败时，回复 2% 生命 击败时，回复 2% 能量护盾 击败时，回复 4% 魔力"]={nil,"击败时，回复 2% 生命 击败时，回复 2% 能量护盾 击败时，回复 4% 魔力 "}c["移动技能的伤害提高 20%"]={{[1]={flags=0,keywordFlags=8,name="Damage",type="INC",value=20}},nil}
c["锤类攻击的物理伤害提高 14%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["护甲提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=20}},nil}
c["持续伤害效果提高 50%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["【召唤魔侍】可以召唤 4 个额外魔侍勇士 【召唤魔侍】有 +1 秒冷却时间"]={{},"可以召唤 4 个"}c["击败敌人回复 +20 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeOnKill",type="BASE",value=20}},nil}
c["敌人处于你近期内制造的灵柩附近时被冰缓和感电"]={nil,"敌人处于你近期内制造的灵柩附近时被冰缓和感电 "}c["攻击伤害的 0.8% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.8}},nil}
c["持双手武器时，攻击技能造成的异常状态伤害提高 25%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=25}},nil}
c["流血持续时间缩短 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyBleedDuration",type="INC",value=-25}},nil}
c["你被冰冻时不会被感电 {variant:2}有 50% 几率感电已被冰缓的敌人"]={{},"你被不会被感电 {variant:2}感电已 "}c["召唤生物的施法速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=10}}}},nil}
c["在安赛娜丝的阿卡拉中指派 8000 名德卡拉的服务"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC安赛娜丝",type="FLAG",value=true}},nil}
c["+10% 持续冰霜伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ColdDotMultiplier",type="BASE",value=10}},nil}
c["暴击时有 15% 几率获得 1 充能"]={{},"获得 1 充能 "}c["+15 点闪避值"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="BASE",value=15}},nil}
c["长杖攻击的伤害提高 12%"]={{[1]={flags=2097152,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["+35 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=35}},nil}
c["火焰伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=12}},nil}
c["+4% 攻击和法术伤害格挡几率上限"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceMax",type="BASE",value=4}},nil}
c["该装备的护甲与闪避提高 110%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=110}},nil}
c["获得 +5% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=5}},nil}
c["击败稀有怪物时产生一个枯疫菌孢子"]={nil,"击败稀有怪物时产生一个枯疫菌孢子 "}c["攻击附加 5 - 11 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=5},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=11}},nil}
c["+8% 持续中毒伤害加成"]={{[1]={flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=8}},nil}
c["双持攻击时武器的伤害提高 8%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["图腾 +16% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=16384,name="ElementalResist",type="BASE",value=16}},nil}
c["+1 狂怒球数量上限"]={{[1]={flags=0,keywordFlags=0,name="FrenzyChargesMax",type="BASE",value=1}},nil}
c["战吼的增益效果提高 20%"]={{[1]={flags=0,keywordFlags=4,name="BuffEffect",type="INC",value=20}},nil}
c["敌人身上每有 1 层蜘蛛网，则附加 9 - 14 混沌伤害"]={{[1]={[1]={actor="enemy",type="Multiplier",var="Spider's WebStack"},flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value="9"},[2]={[1]={actor="enemy",type="Multiplier",var="Spider's WebStack"},flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value="14"}},nil}
c["2% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=2}},nil}
c["剑类攻击的暴击率提高 60%"]={{[1]={flags=4194304,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["对燃烧的敌人，+20% 暴击加成"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Burning"},flags=0,keywordFlags=262144,name="CritMultiplier",type="BASE",value=20},[2]={[1]={actor="enemy",type="ActorCondition",var="Burning"},flags=0,keywordFlags=262144,name="4",type="BASE",value=20}},nil}
c["击中中毒的敌人有 50% 几率使其瘫痪 每对敌人造成一层中毒效果，便附加 +0.1% 攻击和法术基础暴击率，最多 +2.0% 近期你每造成一层中毒效果，中毒持续时间便延长 5%"]={{[1]={flags=0,keywordFlags=262144,name="CritChance",type="BASE",value=50}},"中毒的敌人使其瘫痪 每对敌人造成一层中毒效果，便附加 +0.1% ，最多 +2.0% 近期你每造成一层中毒效果，中毒持续时间便延长 5% "}c["药剂持续期间，有 20% 几率冰冻，感电和点燃敌人"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyFreezeChance",type="BASE",value=20},[2]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=20},[3]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=20}},nil}
c["在任何灵魂撕裂者药剂持续期间无法获得药剂充能"]={nil,"在任何灵魂撕裂者药剂持续期间无法获得药剂充能 "}c["+1% 闪电抗性上限"]={{[1]={flags=0,keywordFlags=0,name="LightningResistMax",type="BASE",value=1}},nil}
c["每 1 个聚光之石可使火焰、冰霜、闪电伤害提高 4%"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=4},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["中毒伤害提高 60%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=60}},nil}
c["持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=20}},nil}
c["近期内你若有击败敌人，则范围效果扩大 10%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},nil}
c["【猛攻】状态下闪避近战攻击的几率额外提高 25%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="MeleeEvadeChance",type="MORE",value=25}},nil}
c["地雷放置速度提高 6%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=6}},nil}
c["免疫点燃和感电 近期每有 1 个你的地雷被引爆，则每秒回复 1% 生命，最多 10% 近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10%"]={{},"免疫和感电 近期每有 1 个你的被引爆，则10% 近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10% "}c["魔力回复速度提高 60%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=60}},nil}
c["闪电伤害击中时有 10% 几率使敌人受到感电效果影响"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=10}},nil}
c["最多同时可以额外召唤 1 个图腾"]={{[1]={flags=0,keywordFlags=0,name="ActiveTotemLimit",type="BASE",value=1}},nil}
c["受到【优雅】影响时，不受【衰弱】影响"]={nil,"受到【优雅】影响时，不受【衰弱】影响 "}c["该装备的护甲与闪避提高 130%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEvasion",type="INC",value=130}},nil}
c["被击中时，有 10% 几率获得双倍护甲效果 受到防卫技能增益效果影响时，每秒回复 0.5% 最大生命"]={{[1]={flags=0,keywordFlags=262144,name="Armour",type="BASE",value=10}},"被时，获得双倍效果 受到防卫技能增益效果影响时，每秒回复 0.5% 最大生命 "}c["命中值提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=40}},nil}
c["陷阱触发范围扩大 40%"]={{[1]={flags=0,keywordFlags=0,name="TrapTriggerAreaOfEffect",type="INC",value=40}},nil}
c["法术附加 3 - 6 基础火焰伤害"]={{[1]={flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=3},[2]={flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=6}},nil}
c["暴击时有 10% 几率致盲敌人"]={{},"致盲敌人 "}c["近战物理伤害提高 4%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=4}},nil}
c["【纯净之捷】的增益效果提高 40%"]={{[1]={[1]={skillName="纯净之捷",type="SkillName"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=40}},nil}
c["主手武器攻击伤害提高 50%"]={{[1]={[1]={type="Condition",var="MainHandAttack"},flags=1,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["攻击与法术暴击率提高 25%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=25}},nil}
c["攻击伤害的 0.8% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=0.8}},nil}
c["剑类攻击的命中值提高 8%"]={{[1]={flags=4194304,keywordFlags=0,name="Accuracy",type="INC",value=8}},nil}
c["流血总伤害额外提高 25%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="MORE",value=25}},nil}
c["对感电敌人的暴击几率提高 80%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Shocked"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=80}},nil}
c["斧类攻击的命中值提高 10%"]={{[1]={flags=65536,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["持续伤害额外提高 20%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="MORE",value=20}},nil}
c["自身的每个诅咒会使伤害提高 15%"]={{[1]={[1]={type="Multiplier",var="CurseOnSelf"},flags=0,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["施法速度的提高和降低也同样作用于陷阱投掷速度"]={{[1]={flags=0,keywordFlags=0,name="CastSpeedAppliesToTrapThrowingSpeed",type="FLAG",value=true}},nil}
c["受到的非混沌伤害有 50% 穿透能量护盾"]={nil,"受到的非混沌伤害有 50% 穿透能量护盾 "}c["你每控制一个魔卫，召唤生物持续时间延长 2% {variant:1,2}你每拥有一个灵体，召唤生物伤害提高 12%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Duration",type="INC",value=2}}}},"你每控制一个， {variant:1,2}你每拥有一个灵体，召唤生物伤害提高 12% "}c["持续吟唱技能的攻击伤害提高 16%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["持续吟唱时，有 40% 几率避免晕眩 持续吟唱技能伤害提高 30%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=40}},"持续吟唱时，避免晕眩 提高 30% "}c["每装备 1 个【裂界之器】或【塑界之器】，便 +1 最大轮回球"]={{[1]={[1]={type="Multiplier",varList={[1]="ElderItem",[2]="ShaperItem"}},flags=0,keywordFlags=0,name="SiphoningChargesMax",type="BASE",value=1}},nil}
c["每保留有 1 根锁链，则投射物总伤害额外提高 10%"]={{[1]={[1]={stat="ChainRemaining",type="PerStat"},flags=1024,keywordFlags=0,name="Damage",type="MORE",value=10}},nil}
c["22% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=22}},nil}
c["物理伤害提高 95%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=95}},nil}
c["持盾牌时攻击造成的物理伤害提高 10% "]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["赞美 6000 名被高阶圣堂武僧阿瓦留斯转化的新信徒"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC阿瓦留斯",type="FLAG",value=true}},nil}
c["攻击附加 4 - 8 基础火焰伤害"]={{[1]={flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=4},[2]={flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=8}},nil}
c["造成的异常状态持续时间缩短 30%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=-30},[2]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=-30},[3]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=-30},[4]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=-30},[5]={flags=0,keywordFlags=0,name="EnemyBleedDuration",type="INC",value=-30},[6]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=-30}},nil}
c["+55 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=55}},nil}
c["攻击与施法速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["【元素打击】的伤害提高 15%"]={{[1]={[1]={skillName="元素打击",type="SkillName"},flags=0,keywordFlags=0,name="Damage",type="INC",value="15"}},nil}
c["击败时回复 2% 魔力"]={nil,"击败时回复 2% 魔力 "}c["击败敌人时，有 10% 几率获得 4 秒【迷踪】状态 持匕时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="BASE",value=10}},"击败敌人时，获得 4 秒【迷踪】状态 提高 15% "}c["箭矢在分裂后穿透所有目标 {variant:3}穿透后的箭矢 +50% 暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=50}},"箭矢在分裂后穿透所有目标 {variant:3}穿透后的箭矢   "}c["【猛攻】状态下闪避近战攻击的几率额外提高 30%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="MeleeEvadeChance",type="MORE",value=30}},nil}
c["投掷陷阱时移动速度提高 30%，持续 9 秒"]={{[1]={flags=0,keywordFlags=4096,name="MovementSpeed",type="INC",value=30}},"投掷时，持续 9 秒 "}c["近期你或你的召唤生物每击败 1 个敌人回复 1% 能量护盾，最多 10%"]={{[1]={[1]={limit=10,limitTotal=true,type="Multiplier",varList={[1]="EnemyKilledRecently",[2]="EnemyKilledByMinionsRecently"}},flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=1}},nil}
c["提高 75% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=75}},nil}
c["+180 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=180}},nil}
c["物理伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["提高 100% 药剂充能"]={{}," 药剂充能 "}c["敌人的感电持续时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=30}},nil}
c["斧类攻击的攻击速度提高 4%"]={{[1]={flags=65537,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["药剂持续期间，获得噬魂者"]={nil,"药剂持续期间，获得噬魂者 "}c["+50 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=50}},nil}
c["物理攻击伤害的 1.2% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=1.2}},nil}
c["持盾牌时法术伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["每秒生命偷取效果翻倍。"]={{[1]={flags=0,keywordFlags=0,name="LifeLeechRate",type="MORE",value=100}},nil}
c["你和友军受你的光环技能影响时，获得 +20% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="AffectedByAuraMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=20}}}},nil}
c["药剂持续期间无法获得魔力"]={nil,"药剂持续期间无法获得魔力 "}c["火焰伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=30}},nil}
c["周围至少有 5 个友军时，你和周围友军获得【猛攻】状态"]={{[1]={[1]={threshold=5,type="MultiplierThreshold",var="NearbyAlly"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Onslaught",type="FLAG",value=true}}}},nil}
c["斧类攻击的伤害提高 25%"]={{[1]={flags=65536,keywordFlags=0,name="Damage",type="INC",value=25}},nil}
c["每秒受到等同 8% 最大生命的混沌伤害"]={{[1]={[1]={div=1,stat="Life",type="PerStat"},flags=0,keywordFlags=0,name="ChaosDegen",type="BASE",value=0.08}},nil}
c["近战物理伤害提高 8%"]={{[1]={flags=256,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["当你没有获得【火之化身】时，+1000 护甲"]={{[1]={[1]={neg=true,type="Condition",var="Have火之化身Keystone"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=1000}},nil}
c["攻击附加 1 - 2 基础闪电伤害"]={{[1]={flags=0,keywordFlags=65536,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="LightningMax",type="BASE",value=2}},nil}
c["【枯萎】技能会使干扰持续时间延长 30% 你无法被缓速"]={{[1]={[1]={skillName="枯萎",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=30}},"技能会使干扰 你无法被缓速 "}c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 40%"]={nil,"当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% "}c["冰霜法术的 10% 物理伤害转换为冰霜伤害"]={{[1]={flags=2,keywordFlags=32,name="PhysicalDamageConvertToCold",type="BASE",value=10}},nil}
c["无法造成火焰、冰霜、闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="DealNoLightning",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="DealNoCold",type="FLAG",value=true},[3]={flags=0,keywordFlags=0,name="DealNoFire",type="FLAG",value=true}},nil}
c["持锤时，攻击技能造成的异常状态伤害提高 28%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=28}},nil}
c["【尊严】不保留魔力"]={{[1]={[1]={skillName="尊严",type="SkillName"},flags=0,keywordFlags=0,name="SkillData",type="LIST",value={key="manaCostForced",value=0}}},nil}
c["赞美 6000 名被高阶圣堂武僧威纳留斯转化的新信徒"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC威纳留斯",type="FLAG",value=true}},nil}
c["药剂回复的魔力提高 23%"]={{[1]={flags=0,keywordFlags=0,name="FlaskManaRecovery",type="INC",value=23}},nil}
c["图腾所使用攻击的攻击速度提高 7%"]={{[1]={flags=1,keywordFlags=16384,name="Speed",type="INC",value=7}},nil}
c["每 10 点力量会使武器物理伤害提高 16%"]={{[1]={[1]={div="10",stat="Str",type="PerStat"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value="16"}},nil}
c["火焰伤害击中时有 25% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=25}},nil}
c["每秒回复 2% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["斧类攻击的伤害提高 30%"]={{[1]={flags=65536,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["你中毒时也会被冰缓 你造成中毒的敌人若没有冰缓，则受到冰缓"]={nil,"你中毒时也会被冰缓 你造成中毒的敌人若没有冰缓，则受到冰缓 "}c["持续吟唱技能伤害提高 8%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=0,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["剑类攻击的攻击速度提高 4%"]={{[1]={flags=4194305,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["攻击技能的火焰伤害提高 8%"]={{[1]={flags=0,keywordFlags=65536,name="FireDamage",type="INC",value=8}},nil}
c["对被冰缓敌人所造成的攻击伤害的 0.6% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=0.6}},nil}
c["每秒获得 1 个虚空之矢 {variant:2}每 0.5 秒获得 1 个虚空之矢"]={nil,"每秒获得 1 个虚空之矢 {variant:2}每 0.5 秒获得 1 个虚空之矢 "}c["以泽佛伊的名义用 8000 名祭品之血浸染"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC泽佛伊",type="FLAG",value=true}},nil}
c["你的奉献技能对自身的效果降低 25%"]={{[1]={[1]={skillNameList={[1]="骸骨奉献",[2]="血肉奉献",[3]="灵魂奉献",[4]="血脉奉献"},type="SkillName"},flags=0,keywordFlags=0,name="ExtraSkillMod",type="LIST",value={mod={flags=0,keywordFlags=0,name="BuffEffectOnPlayer",type="INC",value=-25}}}},nil}
c["击败稀有或者传奇敌人时，攻击速度提高 20%，持续 20秒"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},"击败稀有或者传奇敌人时，，持续 20秒 "}c["晕眩回复和格挡回复提高 50%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=50}},nil}
c["使用技能时有 20% 几率回复 10% 最大魔力 在总计消耗 200 点魔力后的 4 秒内，伤害降低 6%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"使用技能时回复 10%  在总计消耗 200 点魔力后的 4 秒内，伤害降低 6% "}c["若范围内含有 40 点敏捷，双持打击时副手武器对周围敌人造成扩散伤害 若范围内含有 40 点敏捷，双持打击时主手武器有 20% 几率造成双倍伤害"]={{[1]={[1]={type="Condition",var="OffHandAttack"},[2]={type="Condition",var="MainHandAttack"},flags=512,keywordFlags=0,name="Dex",type="BASE",value=20}},"若内含有 40 点，双持打击时对周围敌人造成扩散伤害 若范围内含有 40 点敏捷，双持打击时造成双倍伤害 "}c["药剂持续期间，获得等同 30% 物理伤害的冰霜伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=30}},nil}
c["魔像免疫火焰、冰霜、闪电伤害 每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=20}}}},"免疫 每个召唤的魔像可使你的伤害 每个召唤的魔像可使它们为你提供的增益效果提高 25% "}c["药剂持续期间你会被感电 {variant:9,10,11,12}药剂持续期间你会被感电，受到的伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=50}},"药剂持续期间你会被感电 {variant:9,10,11,12}药剂持续期间你会被感电， "}c["每个狂怒球可使击中时有 2% 几率免疫元素伤害"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=262144,name="ElementalDamage",type="BASE",value=2}},"时免疫 "}c["药剂回复的生命提高 30%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=30}},nil}
c["每个狂怒球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Damage",type="INC",value=5}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 28%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=28}},nil}
c["你创建的奉献地面可使敌人承受的伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你创建的奉献地面可使敌人 "}c["物理伤害提高 80%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=80}},nil}
c["冷却回复速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=20}},nil}
c["能量护盾全满时，伤害提高 24%"]={{[1]={[1]={type="Condition",var="FullEnergyShield"},flags=0,keywordFlags=0,name="Damage",type="INC",value=24}},nil}
c["持爪时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["+150 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=150}},nil}
c["女巫：每秒回复 0.5% 最大魔力"]={{[1]={[1]={type="Condition",var="ConnectedTo女巫Start"},flags=0,keywordFlags=0,name="ManaRegenPercent",type="BASE",value=0.5}},nil}
c["冰霜伤害提高 25%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=25}},nil}
c["敌人解冻后受到冰缓效果 有 10% 几率冰冻被冰缓的敌人 +10% 持续冰霜伤害加成 冰缓效果提高 10%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Chilled"},flags=0,keywordFlags=262144,name="EnemyChillEffect",type="BASE",value=10}},"敌人解冻后受到 冰冻 +10% 持续冰霜伤害加成 冰缓效果提高 10% "}c["受到【精准】影响时，攻击伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy精准"},flags=1,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["在【猛攻】状态期间，得到【迷踪】状态"]={nil,"在【猛攻】状态期间，得到【迷踪】状态 "}c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100%"]={{[1]={flags=0,keywordFlags=4,name="Life",type="INC",value=100}},"施放时回复 25% 和魔力 战吼持续时间 "}c["图腾获得你 50% 的护甲值"]={{[1]={flags=0,keywordFlags=16384,name="Armour",type="BASE",value=50}},"获得你  "}c["火焰伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=10}},nil}
c["锤类和短杖攻击 +15% 暴击伤害加成"]={{[1]={flags=1048576,keywordFlags=0,name="CritMultiplier",type="BASE",value=15}},nil}
c["火焰伤害提高 6%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=6}},nil}
c["每个绿色插槽 +100 最大魔力"]={{[1]={[1]={type="Multiplier",var="GreenSocketIn{SlotName}"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=100}},nil}
c["冰缓效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=10}},nil}
c["光环技能范围提高 50%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=50}},nil}
c["经验值获取降低 50%"]={{},"经验值获取 "}c["击败敌人后有 30% 几率获得 1 个狂怒球 瘀血爪印"]={{},"击败敌人后获得 1 个狂怒球 瘀血印 "}c["攻击伤害提高 6%"]={{[1]={flags=1,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["获得 10 级的【冰霜闪现】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="10",skillName="冰霜闪现",type="SkillName"}}},nil}
c["获得等同武器物理伤害 110% 的随机一种额外火焰，冰霜，或者闪电伤害"]={{[1]={[1]={type="Condition",var="PhysicsRandomElementFire"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=110},[2]={[1]={type="Condition",var="PhysicsRandomElementCold"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=110},[3]={[1]={type="Condition",var="PhysicsRandomElementLightning"},flags=134217728,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=110}},nil}
c["+12% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=12}},nil}
c["击中时有 20% 几率使目标中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=20}},nil}
c["溢出伤害的 20% 转为生命偷取 偷取时免疫晕眩 你偷取生命或魔力时，免疫流血"]={nil,"溢出伤害的 20% 转为生命偷取 偷取时免疫晕眩 你偷取生命或魔力时，免疫流血 "}c["持盾牌时攻击速度提高 6%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Speed",type="INC",value=6}},nil}
c["每个狂怒球可使攻击伤害提高 3%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=1,keywordFlags=0,name="Damage",type="INC",value=3}},nil}
c["每个狂怒球可使攻击速度提高 3%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=1,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["魔侍的攻击速度提高 10%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=10}}}},nil}
c["+120 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=120}},nil}
c["双持攻击的命中值提高 6%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["敌人受到的元素异常状态时间延长 10%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=10},[2]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=10},[3]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=10},[4]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=10}},nil}
c["+26% 闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=26}},nil}
c["+50% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=50}},nil}
c["你所施放诅咒的效果提高 13%"]={{[1]={flags=0,keywordFlags=0,name="CurseEffect",type="INC",value=13}},nil}
c["每个耐力球获得 0.5% 每秒生命回复"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.5}},nil}
c["周围每有 1 个灵柩，你和周围友军每秒回复 0.2% 能量护盾，最多 2.0%"]={{[1]={[1]={limit=2,limitTotal=true,type="Multiplier",var="NearbyCorpse"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=0.2}}}},nil}
c["当你的陷阱被敌人触发时，有 15% 的机会获得 1 个暴击球"]={{},"当你的被敌人触发时，有 机会获得 1 个暴击球 "}c["攻击速度降低 50%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=-50}},nil}
c["无法使用头部装备 暴击率特别幸运 暴击伤害特别幸运 敌人对你造成的暴击伤害特别幸运"]={nil,"无法使用头部装备 暴击率特别幸运 暴击伤害特别幸运 敌人对你造成的暴击伤害特别幸运 "}c["爪类攻击的命中值提高 12%"]={{[1]={flags=262144,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["持长杖时法术伤害格挡几率提高 5%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=5}},nil}
c["血姿态下击中稀有或传奇敌人有 25% 的几率得到一个挑战球"]={{},"血姿态下稀有或传奇敌人有 几率得到一个挑战球 "}c["当处于沙姿态时，击败敌人获得一个挑战球 +10 最大挑战球数量上限"]={{[1]={flags=0,keywordFlags=0,name="ChallengerChargesMax",type="BASE",value=10}},"当处于沙姿态时，击败敌人获得一个挑战球   "}c["武器造成的伤害穿透 8% 冰霜抗性"]={{[1]={flags=134217728,keywordFlags=0,name="ColdPenetration",type="BASE",value=8}},nil}
c["获得等级 20 的【骨制战甲】技能 每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=20}}}},"获得等级 【骨制战甲】技能 每拥有一个，获得 1% ，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% "}c["+16% 所有元素抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=16}},nil}
c["移形换影"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="移形换影"}},nil}
c["没有物理伤害"]={{[1]={flags=0,keywordFlags=0,name="DealNoPhysical",type="FLAG",value=true}},nil}
c["+500 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=500}},nil}
c["+400 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=400}},nil}
c["攻击伤害的 2% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=2}},nil}
c["耐力球达到上限时进入暴走状态"]={nil,"耐力球达到上限时进入暴走状态 "}c["至少有 200 点力量时，+23% 火焰、冰霜、闪电抗性"]={{[1]={[1]={stat="Str",threshold=200,type="StatThreshold"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=23}},nil}
c["躯体幻化"]={{[1]={flags=0,keywordFlags=0,name="TransfigurationOfBody",type="FLAG",value=true}},nil}
c["+3% 持续中毒伤害加成"]={{[1]={flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=3}},nil}
c["陷阱投掷速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=8}},nil}
c["暴走状态时创造一团烟雾 暴走状态时获得【不洁之力】3 秒"]={nil,"暴走状态时创造一团烟雾 暴走状态时获得【不洁之力】3 秒 "}c["药剂持续期间，混沌伤害的 2% 会转化为生命偷取"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ChaosDamageLifeLeech",type="BASE",value=2}},nil}
c["火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=10}},nil}
c["该装备的能量护盾提高 175%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=175}},nil}
c["附加 42 - 335 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=42},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=335}},nil}
c["被火焰、冰霜和闪电伤害击中的敌人暂时提高 25% 的该属性抗性，其他属性抗性降低 50%"]={{[1]={flags=0,keywordFlags=0,name="ElementalEquilibrium",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="HitByFireDamage"},flags=0,keywordFlags=0,name="FireResist",type="BASE",value=25}}},[3]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={neg=true,type="Condition",var="HitByFireDamage"},[2]={type="Condition",varList={[1]="HitByColdDamage",[2]="HitByLightningDamage"}},flags=0,keywordFlags=0,name="FireResist",type="BASE",value=-50}}},[4]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="HitByColdDamage"},flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=25}}},[5]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={neg=true,type="Condition",var="HitByColdDamage"},[2]={type="Condition",varList={[1]="HitByFireDamage",[2]="HitByLightningDamage"}},flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=-50}}},[6]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={type="Condition",var="HitByLightningDamage"},flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=25}}},[7]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={[1]={neg=true,type="Condition",var="HitByLightningDamage"},[2]={type="Condition",varList={[1]="HitByFireDamage",[2]="HitByColdDamage"}},flags=0,keywordFlags=0,name="LightningResist",type="BASE",value=-50}}}},nil}
c["半径：18"]={nil,"半径：18 "}c["暴击伤害特别幸运 敌人对你造成的暴击伤害特别幸运"]={nil,"暴击伤害特别幸运 敌人对你造成的暴击伤害特别幸运 "}c["获得【肾上腺素】时回复 25% 生命 你获得【肾上腺素】时移除所有异常状态和燃烧状态"]={nil,"获得【肾上腺素】时回复 25% 生命 你获得【肾上腺素】时移除所有异常状态和燃烧状态 "}c["免疫点燃和感电 近期每有 1 个你的地雷被引爆，则每秒回复 1% 生命，最多 10% 近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10% 投掷陷阱类技能的魔力消耗降低 20%"]={{},"免疫和感电 近期每有 1 个你的被引爆，则10% 近期每有 1 个你的陷阱被触发，则每秒回复 1% 生命，最多 10% 投掷陷阱类技能的魔力消耗降低 20% "}c["蓝色插槽内的技能石额外获得 25% 经验"]={{},"蓝色插槽内的技能石"}c["长杖攻击的伤害提高 30%"]={{[1]={flags=2097152,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["你身上的秘术增强效果提高 10%"]={{},"你身上的秘术增强效果 "}c["总燃烧伤害额外提高 15%"]={{}," "}c["你幻化的武器将额外复制 1 把 {variant:2}击败敌人时有 25% 几率触发 20 级的【幻化武器】"]={{},"你幻化的将"}c["每个生命偷取实例降低 50% 最大回复"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechInstance",type="INC",value=-50}},nil}
c["匕首攻击的暴击率提高 18%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=18}},nil}
c["你的陷阱被敌人触发时回复 50 能量护盾"]={nil,"你的陷阱被敌人触发时回复 50 能量护盾 "}c["剑类攻击的攻击速度提高 3%"]={{[1]={flags=4194305,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["当你发射箭矢时，会消耗 1 个虚空之矢来触发 20 级的【虚空射击】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="VoidShot"}}},nil}
c["周围敌人造成的火焰、冰霜、闪电总伤害额外降低 8%"]={{}," "}c["混沌技能施法速度提高 4%"]={{[1]={flags=16,keywordFlags=128,name="Speed",type="INC",value=4}},nil}
c["此物品上装备的【魔像技能石】等级 +2"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="golem",value=2}}},nil}
c["你击中造成的感电，必定会使对方所承受伤害提高至少 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockEffect",type="BASE",value=15}},nil}
c["持爪时，攻击技能造成的异常状态伤害提高 18%"]={{[1]={[1]={type="Condition",var="UsingClaw"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=18}},nil}
c["使用瓦尔技能时，获得【猛攻】状态，持续 5 秒"]={nil,"使用瓦尔技能时，获得【猛攻】状态，持续 5 秒 "}c["近战攻击击中会造成中毒"]={nil,"近战攻击击中会造成中毒 "}c["晕眩时有 30% 几率获得暴击球"]={{},"晕眩时获得暴击球 "}c["物品掉落数量提高 13%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=13}},nil}
c["你的攻击击中每个敌人会回复 +2 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=2}},nil}
c["近期内你若有击败敌人，则范围效果扩大 8%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=8}},nil}
c["陷阱持续时间缩短 80%"]={{[1]={flags=0,keywordFlags=0,name="TrapDuration",type="INC",value=-80}},nil}
c["伤害穿透 6% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=6}},nil}
c["双持时攻击格挡率提高 20%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},nil}
c["获得【召唤不屈先驱者】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={skillId="SummonHarbingerOfFocus"}}},nil}
c["击中和异常状态对致盲敌人的火焰伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="FireDamage",type="INC",value=30}},nil}
c["移动技能的冷却回复速度提高 20%"]={{[1]={flags=0,keywordFlags=8,name="CooldownRecovery",type="INC",value=20}},nil}
c["近期有感电过敌人，伤害提高 10%"]={{[1]={[1]={type="Condition",var="ShockedEnemyRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["受到【冰霜净化】影响时，免疫冰冻"]={nil,"受到【冰霜净化】影响时，免疫冰冻 "}c["10 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=10}},nil}
c["药剂持续期间，闪电伤害的 30% 转化为魔力偷取"]={nil,"药剂持续期间，闪电伤害的 30% 转化为魔力偷取 "}c["攻击速度提高 4%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["受到【寒冰之捷】影响时，冰霜伤害提高 60%"]={{[1]={[1]={type="Condition",var="AffectedBy寒冰之捷"},flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=60}},nil}
c["冰霜伤害提高 24%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=24}},nil}
c["格挡时 10% 几率获得 1 个暴击球 持长杖时攻击伤害格挡几率 +6%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=10}},"格挡时 获得 1 个暴击球  +6% "}c["斧类攻击的物理伤害提高 14%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["10% increased Damage per Freeze, Shock and Ignite on Enemy"]={nil,"10% increased Damage per Freeze, Shock and Ignite on Enemy "}c["近期内，你或你的召唤生物每击败一个敌人，则每秒回复你 1% 能量护盾，最多 10%"]={{[1]={[1]={limit=10,limitTotal=true,type="Multiplier",varList={[1]="EnemyKilledRecently",[2]="EnemyKilledByMinionsRecently"}},flags=0,keywordFlags=0,name="EnergyShieldRegenPercent",type="BASE",value=1}},nil}
c["法术伤害的 0.3% 会转化为能量护盾偷取"]={{[1]={flags=2,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=0.3}},nil}
c["点燃敌人时获得【女神的祝福】 3 秒"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainHerEmbrace",type="FLAG",value=true}},nil}
c["获得 +3% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=3}},nil}
c["剑类攻击 +16% 暴击伤害加成"]={{[1]={flags=4194304,keywordFlags=0,name="CritMultiplier",type="BASE",value=16}},nil}
c["格挡时 20% 几率获得 1 个暴击球"]={{},"格挡时 获得 1 个暴击球 "}c["双手近战武器的攻击命中值提高 6%"]={{[1]={flags=570425344,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["旅行技能的冷却回复速度提高 80%"]={{[1]={[1]={skillType=91,type="SkillType"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=80}},nil}
c["单手武器的攻击伤害提高 14%"]={{[1]={flags=268435457,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 50%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=50}},nil}
c["弓类技能的持续伤害效果提高 14%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=14}},nil}
c["With at least 40 Intelligence in Radius, Cold Snap has a 25% chance to grant a Power Charge on Kill"]={nil,"With at least 40 Intelligence in Radius, Cold Snap has a 25% chance to grant a Power Charge on Kill "}c["使用魔力药剂时移除随机一个元素异常"]={nil,"使用魔力药剂时移除随机一个元素异常 "}c["火焰伤害击中时有 5% 几率点燃敌人"]={{[1]={flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=5}},nil}
c["敌人身上每有 1 个诅咒，法术伤害的 0.2% 会转化为能量护盾偷取"]={{[1]={[1]={type="Multiplier",var="CurseOnEnemy"},flags=2,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=0.2}},nil}
c["周围敌人受到的火焰、冰霜、闪电伤害提高 16%"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=16}}}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["击中被嘲讽的敌人回复 +3 魔力"]={{[1]={flags=0,keywordFlags=262144,name="Mana",type="BASE",value=3}},"被嘲讽的敌人回复   "}c["血量低于 20% 的敌人被你的技能击中时，会直接被终结 击败稀有或者传奇敌人时，攻击速度提高 20%，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 20%，持续 20秒"]={{[1]={flags=1,keywordFlags=262144,name="Speed",type="BASE",value=20}},"血量低于 敌人被你的技能时，会直接被终结 击败稀有或者传奇敌人时，提高 20%，持续 20秒 击败稀有或者传奇敌人时，移动速度提高 20%，持续 20秒 "}c["被击中时， 4 秒内回复等同于 3% 伤害的魔力"]={nil,"被击中时， 4 秒内回复等同于 3% 伤害的魔力 "}c["双持攻击时武器的物理伤害提高 12%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=134217728,keywordFlags=0,name="PhysicalDamage",type="INC",value=12}},nil}
c["火焰、冰霜、闪电伤害的 0.2% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageLifeLeech",type="BASE",value=0.2}},nil}
c["-50% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=-50}},nil}
c["弓类攻击的物理伤害提高 16%"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["持续伤害效果提高 40%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["攻击击中时有 5% 几率穿刺敌人"]={{[1]={flags=0,keywordFlags=0,name="ImpaleChance",type="BASE",value=5}},nil}
c["+25 智慧"]={{[1]={flags=0,keywordFlags=0,name="Int",type="BASE",value=25}},nil}
c["斧类攻击的命中值提高 12%"]={{[1]={flags=65536,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["受到【坚定】影响时，你被暴击时受到的额外伤害降低 40%"]={{},"你被受到的"}c["斧类攻击的物理伤害提高 26%"]={{[1]={flags=65536,keywordFlags=0,name="PhysicalDamage",type="INC",value=26}},nil}
c["每 10 点力量可以为攻击附加 2 - 4 基础火焰伤害"]={{[1]={[1]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=65536,name="FireMin",type="BASE",value=2},[2]={[1]={div=10,stat="Str",type="PerStat"},flags=0,keywordFlags=65536,name="FireMax",type="BASE",value=4}},nil}
c["最大魔力提高 30%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="INC",value=30}},nil}
c["瘀血爪印"]={nil,"瘀血爪印 "}c["投射物攻击伤害提高 20%"]={{[1]={flags=1025,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["攻击附加 10 - 18 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=18}},nil}
c["被感电后，你有 3 秒免疫感电 你死亡时给予队友 6 个狂怒球"]={nil,"被感电后，你有 3 秒免疫感电 你死亡时给予队友 6 个狂怒球 "}c["低血时最大闪避值提高 150%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=150}},nil}
c["当你点燃 1 个敌人时，回复 60 生命"]={nil,"当你点燃 1 个敌人时，回复 60 生命 "}c["格挡成功时获得不洁之力，持续3秒"]={nil,"格挡成功时获得不洁之力，持续3秒 "}c["图腾放置速度提高 17%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=17}},nil}
c["图腾伤害提高 30%"]={{[1]={flags=0,keywordFlags=16384,name="Damage",type="INC",value=30}},nil}
c["每个鬼影缠身可使承受的伤害降低 3% 每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾"]={{[1]={flags=0,keywordFlags=262144,name="DamageTaken",type="INC",value=-3}},"每个鬼影缠身可使 每 2 秒获得一个鬼影缠身，最大 3 个 被时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 "}c["混沌伤害提高 18%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=18}},nil}
c["有额外 10% 几率被暴击"]={{},"被暴击 "}c["每个召唤的魔像可使你的伤害提高 20% 每个召唤的魔像可使它们为你提供的增益效果提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个召唤的可使你的 每个召唤的魔像可使它们为你提供的增益效果提高 25% "}c["燃烧伤害提高 35%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=35}},nil}
c["获得暴击球时有 25% 几率获得 1 个耐力球 当你放置图腾时，有 50% 几率获得 1 个暴击球"]={{},"获得暴击球时获得 1 个耐力球 当你放置时，有 50% 几率获得 1 个暴击球 "}c["你偷取生命，数值等同于你的图腾造成伤害的 1%"]={{[1]={flags=0,keywordFlags=16384,name="DamageLifeLeechToPlayer",type="BASE",value=1}},nil}
c["弓类攻击的伤害提高 16%"]={{[1]={flags=131072,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["当你施放法术, 牺牲所有魔力，附加等同於牺牲魔力 25% 的最大闪电伤害，持续 4 秒"]={{[1]={[1]={div=4,stat="ManaUnreserved",type="PerStat"},flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=1}},nil}
c["+20% chance to be Pierced by Projectiles"]={{}," chance to be Pierced by Projectiles "}c["你的反击造成双倍伤害"]={nil,"你的反击造成双倍伤害 "}c["你可以对 1 个敌人造成最多 8 次流血"]={nil,"你可以对 1 个敌人造成最多 8 次流血 "}c["护甲提高 210%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=210}},nil}
c["每个地雷可使你的技能范围效果扩大 4% 若近期有引爆过地雷，则地雷投掷速度提高 20%"]={{[1]={[1]={skillName="每个地雷可使你的技能范围效果扩大 4% 若近期有引爆过地雷，则地雷",type="SkillName"},flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value="20"}},nil}
c["物理伤害提高 300%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=300}},nil}
c["每个狂怒球提高 8% 闪避值"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=8}},nil}
c["每隔 5 秒，在之后 1 秒内回复 20% 最大生命 你与周围队友共享能量球 周围至少有 5 个友军时，你和周围友军获得【猛攻】状态"]={nil,"每隔 5 秒，在之后 1 秒内回复 20% 最大生命 你与周围队友共享能量球 周围至少有 5 个友军时，你和【猛攻】状态 "}c["每个暴击球可使法术伤害提高 4%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="Damage",type="INC",value=4}},nil}
c["持盾牌时攻击造成的伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["你击中造成的冰缓必定使目标减速 10%"]={nil,"你击中造成的冰缓必定使目标减速 10% "}c["每点燃 1 个敌人，则受到 100 火焰伤害"]={nil,"每点燃 1 个敌人，则受到 100 火焰伤害 "}c["图腾 +10% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=16384,name="ElementalResist",type="BASE",value=10}},nil}
c["召唤生物获得 +8% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=8}}}},nil}
c["若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球 {variant:3}若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球"]={nil,"若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球 {variant:3}若范围内含有 40 点智慧，当敌人在【霜暴】的作用区域被击败，将获得暴击球而非狂怒球 "}c["物理伤害提高 263%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=263}},nil}
c["每存在 1 个图腾，总伤害额外提高 3%"]={{[1]={[1]={stat="ActiveTotemLimit",type="PerStat"},flags=0,keywordFlags=0,name="Damage",type="MORE",value=3}},nil}
c["持盾牌时攻击造成的物理伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["每个狂怒球可使火焰、冰霜、闪电伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=6}},nil}
c["可以召唤一个图腾的技能改为召唤两个图腾"]={nil,"可以召唤一个图腾的技能改为召唤两个图腾 "}c["暴击时，+15% 持续中毒伤害加成"]={{[1]={[1]={type="Condition",var="CriticalStrike"},flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=15}},nil}
c["中毒伤害提高 50%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=50}},nil}
c["绿色插槽内的技能石 +10% 品质"]={{},"绿色插槽内的技能石  品质 "}c["近期内你若使用了召唤生物技能，则召唤生物伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={type="Condition",var="UsedMinionSkillRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},nil}
c["匕首攻击的命中值提高 15%"]={{[1]={flags=524288,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["你只能击败被冰冻的敌人"]={nil,"你只能击败被冰冻的敌人 "}c["近期内你若有消耗灵柩，则你和召唤生物范围效果扩大 30%"]={{[1]={[1]={type="Condition",var="ConsumedCorpseRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=30},[2]={[1]={type="Condition",var="ConsumedCorpseRecently"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=30}}}},nil}
c["攻击暴击率提高 50%"]={{[1]={flags=1,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["+5% 非异常状态的持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NonAilmentChaosDotMultiplier",type="BASE",value=5}},nil}
c["每次击中获得 1 层怒火，最多每 0.3 秒获得一次"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainRage",type="FLAG",value=true},[2]={[1]={type="Condition",var="CanGainRage"},flags=0,keywordFlags=0,name="Dummy",type="DUMMY",value=1}},nil}
c["当你使用火焰技能时，有 35% 几率获得 1 个耐力球 每个耐力球可使物理伤害提高 5% 每个耐力球可使火焰伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},[2]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=16,name="PhysicalDamage",type="BASE",value=35}},"当你使用时，获得 1 个耐力球 提高 5% 火焰伤害提高 5% "}c["使用技能时有 20% 几率回复 10% 最大魔力 在总计消耗 200 点魔力后的 4 秒内，承受的伤害降低 6%"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"使用技能时回复 10%  在总计消耗 200 点魔力后的 4 秒内，承受的伤害降低 6% "}c["法杖攻击的火焰、冰霜、闪电伤害提高 8%"]={{[1]={flags=8388608,keywordFlags=0,name="ElementalDamage",type="INC",value=8}},nil}
c["该装备的闪避与能量护盾提高 275%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=275}},nil}
c["剑类攻击的物理伤害提高 24%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=24}},nil}
c["+38 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=38},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=38},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=38}},nil}
c["击败时，回复 2% 能量护盾 击败时，回复 4% 魔力"]={nil,"击败时，回复 2% 能量护盾 击败时，回复 4% 魔力 "}c["攻击伤害的 1.2% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1.2}},nil}
c["持续吟唱技能的攻击伤害提高 10%"]={{[1]={[1]={skillType=58,type="SkillType"},flags=1,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["暴走状态时获得【不洁之力】3 秒 暴走"]={nil,"暴走状态时获得【不洁之力】3 秒 暴走 "}c["持盾牌时 +4% 火焰、冰霜、闪电抗性"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=4}},nil}
c["总伤害额外提高 40%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE",value=40}},nil}
c["每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ActiveGolemLimit",type="INC",value=25}}}},"每个召唤的可使它们为你提供的增益效果 +1  "}c["锤类和短杖攻击的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="ElementalDamage",type="INC",value=10}},nil}
c["战吼将击退区域内的敌人"]={nil,"战吼将击退区域内的敌人 "}c["从生命偷取中获得的最大总恢复量降低 50%"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechInstance",type="INC",value=-50}},nil}
c["全局防御提高 20%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="Defences",type="INC",value=20}},nil}
c["每隔 14 秒："]={{},nil}
c["先祖图腾的激活范围效果扩大 100%"]={{[1]={flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=100}},"先祖的激活 "}c["火焰伤害提高 8%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=8}},nil}
c["对低血的敌人时，击中和异常状态总伤害额外提高 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="LowLife"},flags=0,keywordFlags=786432,name="Damage",type="MORE",value=20}},nil}
c["拥有能量护盾时有 3% 几率闪避攻击击中"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="EvadeChance",type="BASE",value=3}},nil}
c["每个鬼影缠身可使承受的伤害降低 2% 每 2 秒获得一个鬼影缠身，最大 3 个"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-2}},"每个鬼影缠身可使 每 2 秒获得一个鬼影缠身，最大 3 个 "}c["每个鬼影缠身可使承受的伤害降低 2% 每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="DamageTaken",type="INC",value=-2}},"每个鬼影缠身可使 每 2 秒获得一个鬼影缠身，最大 3 个 被时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 移动速度提高 10% "}c["你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20%"]={{},"你造成的冰缓必定使目标减速 10 "}c["穿刺的效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ImpaleEffect",type="INC",value=10}},nil}
c["每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="Evasion",type="INC",value=10}},"每 2 秒获得一个鬼影缠身，最大 3 个 被时，丢失一个鬼影缠身，回复 4% 等同于你的能量护盾 移动速度 "}c["+6 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=6}},nil}
c["药剂持续期间，近战物理总伤害额外提高 25%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=256,keywordFlags=0,name="PhysicalDamage",type="MORE",value=25}},nil}
c["范围内含的敏捷和力量总计 40 点时，【元素打击】的总闪电伤害额外降低 50%"]={{[1]={flags=512,keywordFlags=0,name="Dex",type="BASE"}},"内含的和力量总计 40 "}c["魔卫的物理总伤害额外提高 100%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamage",type="MORE",value=100}}}},nil}
c["异常状态伤害加成不计算来自暴击的部分"]={{[1]={flags=0,keywordFlags=0,name="AilmentsAreNeverFromCrit",type="FLAG",value=true}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["召唤生物获得 +11% 格挡法术伤害率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=11}}}},nil}
c["匕首攻击 +12% 暴击伤害加成"]={{[1]={flags=524288,keywordFlags=0,name="CritMultiplier",type="BASE",value=12}},nil}
c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100% 战吼冷却回复速度提高 100% 近期内你若有使用战吼，你和周围友军的攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=4,name="Life",type="INC",value=100},onlyAllies=true}}},"施放时回复 25% 和魔力 战吼持续时间 战吼冷却回复速度提高 100% 你和攻击速度提高 20% "}c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% 近期内你若没有被击中，则免疫晕眩"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=8,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% 免疫晕眩 "}c["图腾放置速度提高 40%"]={{[1]={flags=0,keywordFlags=0,name="TotemPlacementSpeed",type="INC",value=40}},nil}
c["每 3 秒，魔力药剂获得 1 充能 使用魔力药剂时移除随机一个元素异常"]={nil,"每 3 秒，魔力药剂获得 1 充能 使用魔力药剂时移除随机一个元素异常 "}c["+3% 非异常状态的持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="NonAilmentChaosDotMultiplier",type="BASE",value=3}},nil}
c["+10% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=10}},nil}
c["你可以对敌人造成额外 1 个点燃效果"]={{},"你可以对敌人造成"}c["法杖攻击的伤害提高 15%"]={{[1]={flags=8388608,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["只能造成火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="DealNoPhysical",type="FLAG",value=true},[2]={flags=0,keywordFlags=0,name="DealNoLightning",type="FLAG",value=true},[3]={flags=0,keywordFlags=0,name="DealNoCold",type="FLAG",value=true},[4]={flags=0,keywordFlags=0,name="DealNoChaos",type="FLAG",value=true}},nil}
c["召唤生物格挡时，回复它 1% 最大生命"]={nil,"格挡时，回复它 1% 最大生命 "}c["+10% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=10}},nil}
c["你造成流血的敌人若没有冰缓，则受到冰缓 被你的击中所击败的流血敌人会破碎"]={nil,"你造成流血的敌人若没有冰缓，则受到冰缓 被你的击中所击败的流血敌人会破碎 "}c["+5% 持续中毒伤害加成"]={{[1]={flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=5}},nil}
c["光环技能范围效果扩大 12%"]={{[1]={flags=0,keywordFlags=1,name="AreaOfEffect",type="INC",value=12}},nil}
c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100% 战吼冷却回复速度提高 100% 近期内你若有使用战吼，你和周围友军的攻击速度提高 20% 过去 8 秒你若有使用战吼，有 15% 几率造成双倍伤害"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=4,name="Life",type="INC",value=100},onlyAllies=true}}},"施放时回复 25% 和魔力 战吼持续时间 战吼冷却回复速度提高 100% 你和攻击速度提高 20% 过去 8 秒你若有使用战吼，有 15% 几率造成双倍伤害 "}c["你每控制一个愤怒狂灵，会使你攻击和施法速度便提高 2%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=2}},"你每控制一个愤怒狂灵，会使你 "}c["弓类攻击降低 10% 敌人晕眩门槛"]={{[1]={flags=131072,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-10}},nil}
c["召唤生物有 15% 额外物理伤害减免"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=15}}}},nil}
c["药剂持续期间，使用技能时 4 秒内回复等同 600% 魔力消耗的生命"]={nil,"药剂持续期间，使用技能时 4 秒内回复等同 600% 魔力消耗的生命 "}c["30% 几率避免被点燃"]={{[1]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=30}},nil}
c["每个暴击球可使法术伤害提高 7%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=2,keywordFlags=0,name="Damage",type="INC",value=7}},nil}
c["陷阱投掷后 5 秒内不会损坏 地雷投掷后 5 秒内不会损坏"]={nil,"陷阱投掷后 5 秒内不会损坏 地雷投掷后 5 秒内不会损坏 "}c["药剂持续期间，获得等同 18% 物理伤害的冰霜伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=18}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 40% {variant:2}攻击技能的火焰、冰霜、闪电伤害提高 40%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=40}},"攻击的 {variant:2}攻击技能的火焰、冰霜、闪电伤害提高 40% "}c["范围内配置的敏捷和力量总计 40 点时，【灵盾投掷】连锁时发射碎片投射物"]={nil,"范围内配置的敏捷和力量总计 40 点时，【灵盾投掷】连锁时发射碎片投射物 "}c["地雷投掷后 5 秒内不会损坏"]={nil,"地雷投掷后 5 秒内不会损坏 "}c["你的光环技能对自身造成的总效果额外提高 50%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffectOnSelf",type="MORE",value=50}},nil}
c["先祖图腾的激活范围效果扩大 100% 当你有图腾存在时，范围效果扩大 25%"]={{[1]={[1]={type="Condition",var="HaveTotem"},flags=0,keywordFlags=16384,name="AreaOfEffect",type="INC",value=100}},"先祖的激活 范围效果扩大 25% "}c["+10 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=10}},nil}
c["每个【召唤纯净哨兵】的范围效果扩大 10% 召唤的哨兵会使用【圣战猛击】"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}},"每个【召唤纯净哨兵】的 召唤的哨兵会使用【圣战猛击】 "}c["锤类和短杖攻击的伤害提高 14%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["护甲提高 650%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=650}},nil}
c["攻击击中时有 10% 几率穿刺敌人"]={{[1]={flags=0,keywordFlags=0,name="ImpaleChance",type="BASE",value=10}},nil}
c["生命偷取总回复上限翻倍。"]={{[1]={flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="MORE",value=100}},nil}
c["魔力偷取总回复上限提高 25%"]={{[1]={flags=0,keywordFlags=0,name="MaxManaLeechRate",type="INC",value=25}},nil}
c["你仅可以拥有一个无持续时间限制的非旗帜光环"]={nil,"你仅可以拥有一个无持续时间限制的非旗帜光环 "}c["受到【愤怒】影响时，火焰伤害的 1.5% 转化为生命偷取"]={{[1]={[1]={type="Condition",var="AffectedBy愤怒"},flags=0,keywordFlags=0,name="FireDamageLifeLeech",type="BASE",value=1.5}},nil}
c["攻击和法术附加 6 - 14 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=196608,name="ColdMin",type="BASE",value=6},[2]={flags=0,keywordFlags=196608,name="ColdMax",type="BASE",value=14}},nil}
c["击碎敌人时有 50% 几率额外获得 1 个瓦尔灵魂 已腐化"]={{},"击碎敌人时额外获得 1 个灵魂 已腐化 "}c["+10% 持续中毒伤害加成"]={{[1]={flags=0,keywordFlags=1048576,name="DotMultiplier",type="BASE",value=10}},nil}
c["召唤生物的伤害提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=15}}}},nil}
c["获得 25 级的【捕熊陷阱】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level="25",skillName="捕熊陷阱",type="SkillName"}}},nil}
c["召唤生物的攻击额外造成 7 - 14 物理伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="PhysicalMin",type="BASE",value="7"}}},[2]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="PhysicalMax",type="BASE",value="14"}}}},nil}
c["每 10 点奉献使元素伤害提高 4%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=4}},nil}
c["火焰、冰霜、闪电伤害提高 90%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=90}},nil}
c["护甲提高 175%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=175}},nil}
c["格挡攻击时反射 1 - 1000 物理伤害"]={nil,"格挡攻击时反射 1 - 1000 物理伤害 "}c["锤类攻击的伤害提高 14%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["即时引爆地雷"]={nil,"即时引爆地雷 "}c["在药剂持续期间，击败敌人会补充 3% 的魔力"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=3}},"在击败敌人会补充  "}c["地雷所使用的技能范围效果扩大 10%"]={{[1]={flags=0,keywordFlags=8192,name="AreaOfEffect",type="INC",value=10}},nil}
c["最大生命提高 5%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=5}},nil}
c["对流血敌人的近战伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=256,keywordFlags=262144,name="Damage",type="INC",value=30}},nil}
c["被腐化技能石获取的经验值提高 10% 已腐化"]={{},"被腐化技能石获取的经验值 已腐化 "}c["【未鉴定词缀】 【未鉴定词缀】"]={nil,"【未鉴定词缀】 【未鉴定词缀】 "}c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% 你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命"]={{},"当你创建旗帜时，它会获得你当前放置旗帜等阶的 40% 你和周围友军从你放置的旗帜中每个位阶能"}c["锤类和短杖攻击的伤害提高 12%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["每 1 个聚光之石可使护甲提高 75"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="Armour",type="BASE",value=75},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["4% 额外物理伤害减伤"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=4}},nil}
c["每个召唤的魔像可使你有 35% 几率避免元素异常状态 每个召唤的魔像可使它们为你提供的增益效果提高 25%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=35}}},[2]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=35}}},[3]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=35}}},[4]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=35}}}},"每个召唤的可使你 每个召唤的魔像可使它们为你提供的增益效果提高 25% "}c["每个地雷可以让周围敌人承受的伤害提高 2%，最多 10%"]={{[1]={flags=0,keywordFlags=8192,name="DamageTaken",type="INC",value=2}},"每个可以让周围敌人，最多 10% "}c["锤类和短杖攻击的暴击率提高 60%"]={{[1]={flags=1048576,keywordFlags=0,name="CritChance",type="INC",value=60}},nil}
c["魔力回复速度提高 40%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=40}},nil}
c["+14 最大魔力"]={{[1]={flags=0,keywordFlags=0,name="Mana",type="BASE",value=14}},nil}
c["15% chance of Projectiles Piercing {variant:2}投射物会穿透 1 个额外目标"]={nil,"15% chance of Projectiles Piercing {variant:2}投射物会穿透 1 个额外目标 "}c["非满血状态时，每秒献祭 20% 魔力来回复同等数值的生命"]={nil,"非满血状态时，每秒献祭 20% 魔力来回复同等数值的生命 "}c["召唤生物命中值提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=20}}}},nil}
c["附近最多只有 1 个稀有或传奇敌人时，总伤害额外提高 20%"]={{},"附近最多只有 1 "}c["持法杖时，攻击类技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingWand"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 8%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=8}},nil}
c["+500 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=500}},nil}
c["+24 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=24}},nil}
c["物理攻击伤害的 0.4% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageManaLeech",type="BASE",value=0.4}},nil}
c["魔力回复速度提高 20%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=20}},nil}
c["每个地雷可使你的技能范围效果扩大 4%"]={{[1]={flags=0,keywordFlags=8192,name="AreaOfEffect",type="INC",value=4}},"每个可使你的技能 "}c["当能量护盾归零时，伤害提高 30% {variant:2}当你没有能量护盾时，护甲提高 100%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=30}},"当归零时，伤害 {variant:2}当你没有能量护盾时，护甲提高 100% "}c["召唤生物的范围效果扩大 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=8}}}},nil}
c["击败稀有或者传奇敌人时，攻击速度提高 10%，持续 20秒"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},"击败稀有或者传奇敌人时，，持续 20秒 "}c["每个狂怒球持续时间缩短 10%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Duration",type="INC",value=-10}},nil}
c["召唤生物击败敌人时，有 25% 几率获得【不洁之力】，持续 4 秒 召唤生物获得等同 10% 最大生命的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="BASE",value=25}}}},"击败敌人时，获得【不洁之力】，持续 4 秒 召唤生物获得等同 10% 的额外能量护盾 "}c["每 4 点力量 +1 魔力"]={{[1]={[1]={div=4,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=1}},nil}
c["每秒回复 15 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=15}},nil}
c["流血伤害提高 70%"]={{[1]={flags=0,keywordFlags=2097152,name="Damage",type="INC",value=70}},nil}
c["击败流血的敌人时产生爆炸，造成等同其 10% 最大生命的物理伤害"]={nil,"击败流血的敌人时产生爆炸，造成等同其 10% 最大生命的物理伤害 "}c["你拥有暴击球时，伤害穿透 5% 火焰、冰霜、闪电抗性"]={{[1]={[1]={stat="PowerCharges",threshold=1,type="StatThreshold"},flags=0,keywordFlags=0,name="ElementalPenetration",type="BASE",value=5}},nil}
c["承受的范围伤害降低 8% 对燃烧的敌人，+30% 暴击加成 对感电敌人的暴击几率提高 80%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Burning"},flags=512,keywordFlags=262144,name="DamageTaken",type="INC",value=-8}},"的 +30% 暴击加成 对感电敌人的暴击几率提高 80% "}c["若范围内含有 40 点智慧，【电球】会以环状向周围发射投射物"]={nil,"若范围内含有 40 点智慧，【电球】会以环状向周围发射投射物 "}c["击败敌人时有 15% 几率获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="BASE",value=15}},"击败敌人时获得 1 个狂怒球和 1 个暴击球 近期内你若击败了有你状态的敌人，则生命，魔力，和能量护盾回复提高 50% 15% 几率获得额外混沌伤害，其数值等同于非混沌伤害的 50% "}c["不会被致盲 承受来自致盲敌人的伤害降低 10% 对致盲敌人的击中和异常状态伤害提高 30% 击中敌人后有 25% 几率使其致盲 周围敌人被致盲"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 伤害提高 30% 击中敌人后有 25% 几率使其致盲 周围敌人被致盲 "}c["魔侍的移动速度提高 100%"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=100}}}},nil}
c["召唤生物有 10% 法术伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellBlockChance",type="BASE",value=10}}}},nil}
c["在药剂持续期间，击败敌人会补充 3% 的能量护盾 【未鉴定词缀】"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=3}},"在击败敌人会补充  【未鉴定词缀】 "}c["敌人被晕眩时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=20}},nil}
c["每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10%"]={nil,"每拥有一个，获得 1% 物理伤害减免，最多 10% "}c["非暴击时获得 1 个暴击球 暴击时失去所有暴击球"]={nil,"非暴击时获得 1 个暴击球 暴击时失去所有暴击球 "}c["每拥有一个召唤生物，获得 1% 物理伤害减免，最多 10% 每拥有一个召唤生物，获得 +3% 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageReduction",type="BASE",value=3}}}},"每拥有一个，获得 1% ，最多 10% 每拥有一个召唤生物， 火焰、冰霜、闪电抗性，最多 30% 每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30% 召唤生物总生命额外提高 20% "}c["每拥有一个召唤生物，生命和能量护盾回复速度提高 3%，最多 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRecoveryRate",type="INC",value=3}}},[2]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="EnergyShieldRecoveryRate",type="INC",value=3}}}},"每拥有一个，，最多 30% "}c["在【迷踪】状态时免疫元素异常状态 【迷踪】状态时有 10% 几率躲避法术伤害击中 在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态，-15% 抗性 在【迷踪】状态期间，周围敌人的总命中值额外降低 15%"]={{[1]={[1]={type="Condition",var="Phasing"},[2]={type="Condition",var="Phasing"},flags=2048,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=10}},"在免疫元素  在【迷踪】状态期间，周围敌人拥有火焰曝露，冰霜曝露和闪电曝露状态，-15% 抗性 在【迷踪】状态期间，周围敌人的总命中值额外降低 15% "}c["地雷投掷速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="MineLayingSpeed",type="INC",value=10}},nil}
c["每一级在击败敌人时获得 +1 能量护盾 {variant:3,4}每级 +1 生命"]={{[1]={[1]={type="Multiplier",var="Level"},[2]={type="Multiplier",var="Level"},flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=1}},"击败敌人时  {variant:3,4} +1 生命 "}c["从身体护甲获得的护甲提高 1 倍"]={{[1]={flags=0,keywordFlags=0,name="Unbreakable",type="FLAG",value=true}},nil}
c["暴击时有 10% 几率获得暴击球 击中时有 40% 几率使目标中毒 击败敌人时有 10% 几率获得【灵巧】状态"]={{},"获得暴击球 时有 40% 几率使目标中毒 击败敌人时有 10% 几率获得【灵巧】状态 "}c["击中敌人时有 10% 几率使敌人被衰弱"]={{},"敌人时使敌人被衰弱 "}c["召唤生物击中敌人时会使其中毒"]={nil,"击中敌人时会使其中毒 "}c["投射物伤害提高 30%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=30}},nil}
c["近战伤害提高 12%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["若范围内含有 40 点智慧，召唤灵体击败敌人时有 50% 几率获得 30 秒的噬魂者效果"]={{[1]={flags=512,keywordFlags=0,name="Int",type="BASE",value=50}},"若内含有 40 点，召唤灵体击败敌人时获得 30 秒的噬魂者效果 "}c["每 1% 的法术伤害格挡几率会使魔力回复速度提高 1%"]={{[1]={[1]={div=1,stat="SpellBlockChance",type="PerStat"},flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=1}},nil}
c["角色体型增大 15% 法术技能无法造成伤害"]={nil,"角色体型增大 15% 法术技能无法造成伤害 "}c["诅咒施法速度提高 15%"]={{[1]={flags=16,keywordFlags=2,name="Speed",type="INC",value=15}},nil}
c["每秒获得一个幽灵护罩，最大 3 个 被击中时，丢失一个幽灵护罩，回复 5% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="Evasion",type="INC",value=10}},"每秒获得一个幽灵护罩，最大 3 个 被时，丢失一个幽灵护罩，回复 5% 等同于你的能量护盾 移动速度 "}c["每个耐力球可使范围效果扩大 6%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=6}},nil}
c["30% 几率避免被感电"]={{[1]={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=30}},nil}
c["攻击技能的火焰、冰霜、闪电伤害提高 20%"]={{[1]={flags=0,keywordFlags=65536,name="ElementalDamage",type="INC",value=20}},nil}
c["每个地雷可使你的技能范围扩大  8% 放置地雷时有 20% 几率额外再放置 1 个 地雷冷却速度提高 100%"]={{[1]={flags=0,keywordFlags=8192,name="CooldownRecovery",type="BASE",value=20}},"每个可使你的技能范围扩大  8% 放置地雷时额外再放置 1 个 地雷提高 100% "}c["+20 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=20}},nil}
c["灵魂幻化"]={{[1]={flags=0,keywordFlags=0,name="TransfigurationOfSoul",type="FLAG",value=true}},nil}
c["近期内你若使用了召唤生物技能，则召唤生物的范围效果扩大 10%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={type="Condition",var="UsedMinionSkillRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=10}}}},nil}
c["流血持续时间延长 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyBleedDuration",type="INC",value=20}},nil}
c["击中冰缓的敌人时使其致盲"]={nil,"击中冰缓的敌人时使其致盲 "}c["使用时有 75% 几率使敌人逃跑 {variant:1}提高 100% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="BASE",value=75}},"使用时使敌人逃跑 {variant:1}提高 100%  "}c["+10 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},nil}
c["当你晕眩 1 个敌人时，有 25% 几率获得 1 个耐力球"]={{},"当你晕眩 1 个敌人时，获得 1 个耐力球 "}c["若范围内含有 40 点力量，则【冰霜之锤】会对周围敌人造成冰霜伤害"]={nil,"若范围内含有 40 点力量，则【冰霜之锤】会对周围敌人造成冰霜伤害 "}c["回复速度提高 13%"]={{[1]={flags=0,keywordFlags=0,name="FlaskRecoveryRate",type="INC",value=13}},nil}
c["使用时扣除最大能量护盾的 20%"]={nil,"使用时扣除最大能量护盾的 20% "}c["魔像的总生命额外降低 40%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="MORE",value=-40}}}},nil}
c["提高 150% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=150}},nil}
c["+25% 持续火焰伤害加成"]={{[1]={flags=0,keywordFlags=0,name="FireDotMultiplier",type="BASE",value=25}},nil}
c["附加 280 - 355 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=280},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=355}},nil}
c["无法被击退 {variant:1}+150 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=150}},"无法被击退 {variant:1}  "}c["用 4050 枚金币纪念切特斯"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC切特斯",type="FLAG",value=true}},nil}
c["近期若有能量护盾开始回复，则能量护盾的回复不会被打断 总能量护盾每秒回复额外降低 50%"]={{}," "}c["立即回复"]={{[1]={flags=0,keywordFlags=0,name="FlaskInstantRecovery",type="BASE",value=100}},nil}
c["使用药剂时产生 2 只敌队的蠕虫 降低 10% 药剂充能消耗"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=-10}},"产生 2 只敌队的蠕虫   "}c["近期内你若受到【残暴打击】，则伤害提高 50%"]={{[1]={[1]={type="Condition",var="BeenSavageHitRecently"},flags=0,keywordFlags=0,name="Damage",type="INC",value=50}},nil}
c["药剂持续期间，获得额外混沌伤害，其数值等同于 25% 物理伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=25}},nil}
c["+73 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=73}},nil}
c["击中时有 100% 几率嘲讽敌人"]={{},"时嘲讽敌人 "}c["此物品上的【召唤生物技能石】由 16 级的 生命偷取 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={skillId="Unknown"}}},nil}
c["插入安睡之凝珠宝时，法术击中获得【秘术增强】"]={nil,"插入安睡之凝珠宝时，法术击中获得【秘术增强】 "}c["药剂持续期间，获得额外混沌伤害，其数值等同于 18% 物理伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=18}},nil}
c["格挡时回复 +20 魔力 从盾牌获取的防御提高 40% 持盾牌时攻击伤害格挡几率 +5%"]={{[1]={[1]={slotName="Weapon 2",type="SlotName"},[2]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=20}},"格挡时回复   防御提高 40% 攻击伤害格挡几率 +5% "}c["持盾牌时法术伤害提高 8%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["该装备 +5% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["双手近战武器攻击的物理伤害提高 15%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["近战击败敌人时，有 5% 几率获得不洁之力 4 秒"]={{},"击败敌人时，获得不洁之力 4 秒 "}c["每 10 秒，获得额外火焰伤害， 其数值等同于物理伤害的 70%，持续 3 秒"]={{},"每 10 秒，获得"}c["获得额外火焰伤害， 其数值等同于物理伤害的 30%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsFire",type="BASE",value=30}},nil}
c["有 10% 几率使晕眩时间延长 1 倍 持锤时，攻击技能造成的异常状态伤害提高 28%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="EnemyStunDuration",type="BASE",value=10}},"使延长 1 倍 伤害提高 28% "}c["魔像的最大生命提高 22%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=22}}}},nil}
c["10% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=10}},nil}
c["生命全满时，生命偷取套用于能量护盾 获得等同 6% 最大生命的额外能量护盾"]={nil,"生命全满时，生命偷取套用于能量护盾 获得等同 6% 最大生命的额外能量护盾 "}c["−10 承受的混沌伤害 {variant:2}-40 承受的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamageTaken",type="BASE",value=-40}},"−10  {variant:2} 承受的混沌伤害 "}c["+50 力量和敏捷"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=50}},nil}
c["每 2 点智慧 +2 命中值"]={{[1]={[1]={div=2,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=2}},nil}
c["诅咒持续时间延长 50%"]={{[1]={flags=0,keywordFlags=2,name="Duration",type="INC",value=50}},nil}
c["被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 拥有能量护盾时移动速度提高 10%"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=262144,name="Evasion",type="INC",value=10}},"被时，丢失一个鬼影缠身，回复 4% 等同于你的能量护盾 移动速度 "}c["不受感电地面影响"]={nil,"不受感电地面影响 "}c["你每有 100 点力量，周围队友的防御属性便提高 6%"]={{[1]={[1]={div=100,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Defences",type="INC",value=6},onlyAllies=true}}},nil}
c["药剂持续期间，攻击格挡率提高 17%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=17}},nil}
c["闪避值提高 100%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=100}},nil}
c["使用时制造一团烟雾"]={{},nil}
c["+10% 持续流血伤害加成"]={{[1]={flags=0,keywordFlags=2097152,name="DotMultiplier",type="BASE",value=10}},nil}
c["药剂持续期间，30% 承受的击中物理伤害转化为冰霜伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsCold",type="BASE",value=30}},nil}
c["你技能的光环可使你和周围友方的攻击和施法速度提高 3%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAuraEffect",type="LIST",value={mod={flags=0,keywordFlags=0,name="Speed",type="INC",value=3}}}},nil}
c["当你格挡时有 10% 几率获得 1 个耐力球 双持时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="BASE",value=10}},"当你格挡时获得 1 个耐力球 提高 20% "}c["低血时，敌人攻击你会特别不幸"]={nil,"低血时，敌人攻击你会特别不幸 "}c["魔像提供的增益效果提高 30%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="BuffEffect",type="INC",value=30}},nil}
c["法术范围效果扩大 5%"]={{[1]={flags=2,keywordFlags=0,name="AreaOfEffect",type="INC",value=5}},nil}
c["获得持续 4 秒的冰缓汇流"]={{[1]={[1]={type="Condition",var="ChillingConflux"},flags=0,keywordFlags=0,name="PhysicalCanChill",type="FLAG",value=true},[2]={[1]={type="Condition",var="ChillingConflux"},flags=0,keywordFlags=0,name="LightningCanChill",type="FLAG",value=true},[3]={[1]={type="Condition",var="ChillingConflux"},flags=0,keywordFlags=0,name="FireCanChill",type="FLAG",value=true},[4]={[1]={type="Condition",var="ChillingConflux"},flags=0,keywordFlags=0,name="ChaosCanChill",type="FLAG",value=true}},nil}
c["每个你召唤出的魔像可使魔像伤害提高 20% 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 最多可同时拥有额外 1 个魔像"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"每个你召唤出的可使魔像 当你身旁有召唤的寒冰魔像时，你无法被冰缓或冻结 当你召唤出烈焰魔像时，你无法被点燃 当你召唤出闪电魔像时，你无法被感电 最多可同时拥有额外 1 个魔像 "}c["移动速度提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=15}},nil}
c["物理攻击伤害提高 15%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=15}},nil}
c["药剂持续期间，闪电伤害的 20% 转化为魔力偷取"]={nil,"药剂持续期间，闪电伤害的 20% 转化为魔力偷取 "}c["投射物伤害提高 16%"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="INC",value=16}},nil}
c["召唤生物的攻击速度提高 13%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=13}}}},nil}
c["钢铁之握"]={{[1]={flags=0,keywordFlags=0,name="Keystone",type="LIST",value="钢铁之握"}},nil}
c["药剂持续期间，你绝对抗性最高的元素属性，会使你穿透 20% 该抗性"]={{[1]={[1]={stat="LightningResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold"},[2]={stat="LightningResistTotal",thresholdStat="FireResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=20},[2]={[1]={stat="ColdResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold"},[2]={stat="ColdResistTotal",thresholdStat="FireResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="ColdPenetration",type="BASE",value=20},[3]={[1]={stat="FireResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold"},[2]={stat="FireResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=20}},nil}
c["锤类攻击降低 4% 敌人晕眩门槛"]={{[1]={flags=1048576,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-4}},nil}
c["受到的火焰伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="FireDamageTaken",type="INC",value=10}},nil}
c["你被晕眩的时间延长 50%"]={{},"你被晕眩的时间 "}c["获得额外冰霜伤害， 其数值等同于物理伤害的 50%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsCold",type="BASE",value=50}},nil}
c["当你创建旗帜时，它会获得你当前放置旗帜等阶的 20% 当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5% 生命"]={nil,"当你创建旗帜时，它会获得你当前放置旗帜等阶的 20% 当你放置一面旗帜，该旗帜每有一阶，你和周围友军回复 0.5% 生命 "}c["生效期间，瓦尔技能的灵魂消耗降低 25%"]={{[1]={flags=0,keywordFlags=256,name="FlaskDuration",type="INC",value=-25}},"的灵魂消耗 "}c["此物品上的技能石受到 10 级的 附加冰霜伤害 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=10,skillId="SupportAddedColdDamage"}}},nil}
c["锤类和短杖攻击的物理伤害提高 30%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["可以施放 1 个额外烙印 你每使敌人附着一种烙印，它们受到的伤害便提高 10% 【烙印召回】冷却回复速度提高 30% 烙印的附着范围效果扩大 14%"]={{},"可以施放 1 个"}c["暴击击败敌人时物品稀有度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},"暴击击败敌人时 "}c["持续伤害效果提高 10%"]={{[1]={flags=8,keywordFlags=0,name="Damage",type="INC",value=10}},nil}
c["你和周围友军从你放置的旗帜中每个位阶能每秒回复 0.1% 的最大生命"]={{},"你和周围友军从你放置的旗帜中每个位阶能"}c["召唤生物有 11% 几率躲避法术击中"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="SpellDodgeChance",type="BASE",value=11}}}},nil}
c["附加 32 - 42 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=32},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=42}},nil}
c["最大生命提高 10%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=10}},nil}
c["持盾牌时施法速度提高 5%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=16,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["击败时，回复 2% 生命 击败时，回复 2% 能量护盾 击败时，回复 4% 魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=70}},"击败时，回复 2%  击败时，回复 2% 能量护盾 击败时，回复 4% 魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复 "}c["暴击拥有终结能力"]={nil,"暴击拥有终结能力 "}c["锤类和短杖攻击的物理伤害提高 10%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["获得克洛瓦麾下 59000 名武士的领导权"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC克洛瓦",type="FLAG",value=true}},nil}
c["召唤生物有 2% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=2}}}},nil}
c["双手近战武器攻击的攻击速度提高 3%"]={{[1]={flags=570425345,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["长杖攻击的命中值提高 12%"]={{[1]={flags=2097152,keywordFlags=0,name="Accuracy",type="INC",value=12}},nil}
c["此物品上的技能石受到 8 级的 技能陷阱化 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=8,skillId="SupportTrap"}}},nil}
c["施放诅咒触发插槽内的诅咒法术"]={nil,"施放诅咒触发插槽内的诅咒法术 "}c["你每有 100 点力量，周围队友的防御属性便提高 5%"]={{[1]={[1]={div=100,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=0,name="Defences",type="INC",value=5},onlyAllies=true}}},nil}
c["魔力回复速度提高 37%"]={{[1]={flags=0,keywordFlags=0,name="ManaRegen",type="INC",value=37}},nil}
c["持长杖时攻击伤害格挡几率 +5%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}},nil}
c["技能的总魔力保留额外降低 10%"]={{[1]={flags=0,keywordFlags=0,name="ManaReserved",type="MORE",value=-10}},nil}
c["+35 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=35}},nil}
c["该装备的闪避与能量护盾提高 125%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=125}},nil}
c["持盾牌时攻击伤害格挡几率 +3%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=3}},nil}
c["地雷暴击率提高 15%"]={{[1]={flags=0,keywordFlags=8192,name="CritChance",type="INC",value=15}},nil}
c["+20 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=20},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=20}},nil}
c["该装备的护甲与能量护盾提高 175%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=175}},nil}
c["+80 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=80}},nil}
c["20% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},nil}
c["双手武器的攻击伤害提高 14%"]={{[1]={flags=536870913,keywordFlags=0,name="Damage",type="INC",value=14}},nil}
c["药剂持续期间，击中有 25% 几率使敌人中毒"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=262144,name="PoisonChance",type="BASE",value=25}},nil}
c["攻击与法术暴击率提高 15%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["左戒指栏位：法术的投射物无法弹射"]={{[1]={[1]={num=1,type="SlotNumber"},flags=1026,keywordFlags=0,name="CannotChain",type="FLAG",value=true}},nil}
c["2% 几率躲避攻击击中"]={{[1]={flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=2}},nil}
c["免疫点燃和感电"]={nil,"免疫点燃和感电 "}c["近期内如果没有被击中，则承受的伤害降低 20%"]={{[1]={[1]={neg=true,type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=-20}},nil}
c["+8% 对投射物伤害格挡几率"]={{[1]={flags=1024,keywordFlags=0,name="Damage",type="BASE",value=8}}," 对格挡几率 "}c["附近每多一个敌人会 +10% 暴击伤害，最高 +100%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE",value=10}},"附近每多一个敌人会  暴击，最高 +100% "}c["20% 的攻击格挡率同样套用于法术格挡"]={{[1]={flags=0,keywordFlags=0,name="BlockChanceConv",type="BASE",value=20}},nil}
c["药剂持续期间，获得 完美苦痛 天赋效果"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="Keystone",type="LIST",value="完美苦痛"}},nil}
c["召唤生物有 5% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=5}}}},nil}
c["战吼的增益效果提高 25%"]={{[1]={flags=0,keywordFlags=4,name="BuffEffect",type="INC",value=25}},nil}
c["造成的异常状态持续时间延长 40%"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockDuration",type="INC",value=40},[2]={flags=0,keywordFlags=0,name="EnemyFreezeDuration",type="INC",value=-40},[3]={flags=0,keywordFlags=0,name="EnemyChillDuration",type="INC",value=-40},[4]={flags=0,keywordFlags=0,name="EnemyIgniteDuration",type="INC",value=-40},[5]={flags=0,keywordFlags=0,name="EnemyBleedDuration",type="INC",value=-40},[6]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=-40}},nil}
c["攻击和法术暴击率提高 30%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=30}},nil}
c["火焰伤害提高 22%"]={{[1]={flags=0,keywordFlags=0,name="FireDamage",type="INC",value=22}},nil}
c["每装备 1 个【裂界之器】，异常状态的持续伤害加成便提高 15%"]={{[1]={[1]={type="Multiplier",var="ElderItem"},flags=2048,keywordFlags=0,name="DotMultiplier",type="INC",value=15}},"的 "}c["持双手武器时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingTwoHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["Projectiles Pierce while Phasing"]={nil,"Projectiles Pierce while Phasing "}c["所有属性提高 6%"]={{[1]={flags=0,keywordFlags=0,name="Str",type="INC",value=6},[2]={flags=0,keywordFlags=0,name="Dex",type="INC",value=6},[3]={flags=0,keywordFlags=0,name="Int",type="INC",value=6}},nil}
c["最大能量护盾提高 8%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=8}},nil}
c["只能在此物品上放入已腐化的技能石 {variant:1}移形换影"]={nil,"只能在此物品上放入已腐化的技能石 {variant:1}移形换影 "}c["+35% 所有元素抗性"]={{[1]={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=35}},nil}
c["召唤生物持续时间延长 8%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Duration",type="INC",value=8}}}},nil}
c["位于奉献地面之上时，免疫元素异常状态 周围敌人受到的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=2048,keywordFlags=0,name="ElementalDamageTaken",type="INC",value=10}},"位于奉献地面之上时，免疫元素 周围敌人 "}c["地雷落地时干扰周围敌人 2 秒，降低它们 40% 移动速度"]={nil,"地雷落地时干扰周围敌人 2 秒，降低它们 40% 移动速度 "}c["施法速度提高 15%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=15}},nil}
c["攻击速度提高 13%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=13}},nil}
c["每 4 点敏捷 +1 生命"]={{[1]={[1]={div=4,stat="Dex",type="PerStat"},flags=0,keywordFlags=0,name="Life",type="BASE",value=1}},nil}
c["受到的所有伤害穿透护盾 受到的元素伤害有 50% 视为混沌伤害 +10% 混沌抗性上限"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="BASE",value=10}},"受到的所有穿透护盾 受到的元素伤害有 50% 视为混沌伤害  混沌抗性上限 "}c["因你而流血的敌人给予的药剂充能提高 100%"]={{},"因你而的敌人给予的药剂充能 "}c["攻击与施法速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="Speed",type="INC",value=4}},nil}
c["使用药剂时移除流血状态 暴击时获得 1 充能"]={nil,"使用药剂时移除流血状态 暴击时获得 1 充能 "}c["移动速度降低 8%"]={{[1]={flags=0,keywordFlags=0,name="MovementSpeed",type="INC",value=-8}},nil}
c["主手附加 65 - 120 基础火焰伤害"]={{[1]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMin",type="BASE",value=65},[2]={[1]={num=1,type="InSlot"},flags=0,keywordFlags=0,name="FireMax",type="BASE",value=120}},nil}
c["若所有装备均为【裂界之器】，使用药剂时移除 1 个异常状态"]={nil,"若所有装备均为【裂界之器】，使用药剂时移除 1 个异常状态 "}c["法术伤害提高 18%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=18}},nil}
c["在【精准】影响下造成暴击时，恢复 1 次药剂使用次数 {variant:89}受到【精准】影响时，攻击速度提高 15%"]={{[1]={[1]={type="Condition",var="CriticalStrike"},[2]={type="Condition",var="AffectedBy精准"},flags=1,keywordFlags=0,name="Speed",type="INC",value=15}},"在【精准】影响下造成恢复 1 次药剂使用次数 {variant:89} "}c["你的【召唤灵体】也会随你一起获得【秘术增强】 每个【召唤灵体】会使法术暴击率提高 50%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=50}},"你的【召唤灵体】也会随你一起获得【秘术增强】 每个【召唤灵体】会使 "}c["闪电法术的 10% 物理伤害转换为闪电伤害"]={{[1]={flags=2,keywordFlags=64,name="PhysicalDamageConvertToLightning",type="BASE",value=10}},nil}
c["+20% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=20}},nil}
c["+30% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=30}},nil}
c["反射 10 冰霜伤害给近战攻击者"]={nil,"反射 10 冰霜伤害给近战攻击者 "}c["+25 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=25}},nil}
c["+100 力量"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=100}},nil}
c["低血时爪类攻击的物理伤害提高 100%"]={{[1]={[1]={type="Condition",var="LowLife"},flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},nil}
c["闪避值提高 80%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=80}},nil}
c["敌人被晕眩时间延长 30%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunDuration",type="INC",value=30}},nil}
c["在任何满溢圣杯药剂持续期间无法获得药剂充能 药剂持续期间提高 100% 其他药剂获得的充能"]={{},"在任何满溢圣杯药剂持续期间无法获得药剂充能 药剂持续期间 其他药剂获得的充能 "}c["闪避值提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=70}},nil}
c["你的暴击伤害无法被反射 周围只有 1 个敌人时，伤害提高 100%"]={{[1]={[1]={type="Condition",var="OnlyOneNearbyEnemy"},flags=0,keywordFlags=0,name="Damage",type="INC",value=100}},"你的暴击无法被反射 伤害 "}c["不会被致盲 承受来自致盲敌人的伤害降低 10% 对致盲敌人的击中和异常状态伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Blinded"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=-10}},"不会被致盲 承受来自致盲敌人的 伤害提高 30% "}c["承受的范围伤害降低 5% +2 近战与空手攻击范围 近期内你若有晕眩敌人，则范围效果扩大 10%"]={{[1]={[1]={type="Condition",var="StunnedEnemyRecently"},flags=512,keywordFlags=0,name="DamageTaken",type="INC",value=-5}},"的 +2 近战与空手攻击范围 范围效果扩大 10% "}c["近期内你若有晕眩敌人，则范围效果扩大 15%"]={{[1]={[1]={type="Condition",var="StunnedEnemyRecently"},flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=15}},nil}
c["你瞎了"]={{[1]={flags=0,keywordFlags=0,name="Condition:Blinded",type="FLAG",value=true}},nil}
c["+50 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=50}},nil}
c["满血时，敌人攻击你会特别不幸"]={nil,"满血时，敌人攻击你会特别不幸 "}c["被点燃时攻击速度提高 20%"]={{[1]={[1]={type="Condition",var="Ignited"},flags=1,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["【枯萎】技能会使干扰持续时间延长 30%"]={{[1]={[1]={skillName="枯萎",type="SkillName"},flags=0,keywordFlags=0,name="Duration",type="INC",value=30}},"技能会使干扰 "}c["近期内你的技能若打出过暴击，则每有 1 个暴击球，就会每秒受到 200 闪电伤害"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},[2]={type="Condition",var="CritRecently"},flags=0,keywordFlags=0,name="LightningDegen",type="BASE",value=200}},nil}
c["药剂回复的魔力提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskManaRecovery",type="INC",value=20}},nil}
c["灵枢附近的敌人受到【诅咒】影响时致盲"]={nil,"灵枢附近的敌人受到【诅咒】影响时致盲 "}c["使用尊严时，攻击击中时有 25% 几率穿刺敌人"]={{[1]={[1]={type="Condition",var="UsedBy尊严"},flags=0,keywordFlags=0,name="ImpaleChance",type="BASE",value=25}},nil}
c["药剂充能获取提高 20%"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesGained",type="INC",value=20}},nil}
c["你的暴击加成为 300%"]={{[1]={[1]={type="Global"},flags=0,keywordFlags=0,name="CritMultiplier",type="OVERRIDE",value=300}},nil}
c["法术伤害提高 60%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=60}},nil}
c["攻击及法术格挡率降低 10%"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="INC",value=-10},[2]={flags=0,keywordFlags=0,name="SpellBlockChance",type="INC",value=-10}},nil}
c["法术暴击率提高 50%"]={{[1]={flags=2,keywordFlags=0,name="CritChance",type="INC",value=50}},nil}
c["+2 魔卫数量上限"]={{[1]={flags=0,keywordFlags=0,name="ActiveZombieLimit",type="BASE",value=2}},nil}
c["20% increased Damage against Chilled Enemies"]={nil,"20% increased Damage against Chilled Enemies "}c["敌人晕眩门槛降低 8%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-8}},nil}
c["非旗帜并且非地雷技能的光环不保留魔力"]={nil,"非旗帜并且非地雷技能的光环不保留魔力 "}c["你可以受到 1 个额外的诅咒"]={nil,"你可以受到 1 个额外的诅咒 "}c["此物品上的技能石受到 18 级的快速施法辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=18,skillId="SupportFasterCast"}}},nil}
c["投射物的伤害随着飞行距离提升，击中目标时最多提高 40%"]={{[1]={[1]={ramp={[1]={[1]=35,[2]=0},[2]={[1]=70,[2]=1}},type="DistanceRamp"},flags=1025,keywordFlags=0,name="Damage",type="INC",value=40}},nil}
c["爪类攻击的物理伤害提高 8%"]={{[1]={flags=262144,keywordFlags=0,name="PhysicalDamage",type="INC",value=8}},nil}
c["混沌伤害提高 22%"]={{[1]={flags=0,keywordFlags=0,name="ChaosDamage",type="INC",value=22}},nil}
c["持锤或短杖时，攻击技能造成的异常状态伤害提高 16%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=16}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 10%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=10}},nil}
c["爪类攻击的命中值提高 6%"]={{[1]={flags=262144,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["击败敌人回复 +20 能量护盾 此物品上的火焰、冰霜、闪电技能石等级 +1"]={{[1]={flags=0,keywordFlags=112,name="EnergyShield",type="BASE",value=20}},"击败敌人回复   此物品上的石等级 +1 "}c["对中毒敌人时，获得额外混沌伤害，其数值等同于物理伤害的 20%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Poisoned"},flags=4,keywordFlags=0,name="PhysicalDamageGainAsChaos",type="BASE",value=20}},nil}
c["物品稀有度提高 50%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=50}},nil}
c["中毒伤害提高 30%"]={{[1]={flags=0,keywordFlags=1048576,name="Damage",type="INC",value=30}},nil}
c["对流血敌人的命中值 +450"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=262144,name="Accuracy",type="BASE",value=450}},nil}
c["持长杖时 +8% 攻击和法术暴击伤害加成"]={{[1]={[1]={type="Global"},[2]={type="Condition",var="UsingStaff"},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=8}},nil}
c["4 每秒生命回复"]={{[1]={flags=0,keywordFlags=0,name="LifeRegen",type="BASE",value=4}},nil}
c["陷阱持续时间缩短 10%"]={{[1]={flags=0,keywordFlags=0,name="TrapDuration",type="INC",value=-10}},nil}
c["护体效果持续时间延长 25%"]={{[1]={flags=0,keywordFlags=0,name="FortifyDuration",type="INC",value=25}},nil}
c["被冰缓后，你有 3 秒免疫冰缓 被冰冻后，你有 3 秒免疫冰冻"]={nil,"被冰缓后，你有 3 秒免疫冰缓 被冰冻后，你有 3 秒免疫冰冻 "}c["格挡时回复 5% 最大生命 {crafted}+64 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=64}},"格挡时回复 5%  {crafted} 最大生命 "}c["物品稀有度提高 45%"]={{[1]={flags=0,keywordFlags=0,name="LootRarity",type="INC",value=45}},nil}
c["击败流血的敌人时产生爆炸，造成等同其 5% 最大生命的物理伤害 流血持续时间缩短 25%"]={{[1]={flags=0,keywordFlags=2097152,name="Life",type="INC",value=-25}},"击败的敌人时产生爆炸，造成等同其 5% 的物理伤害 流血持续时间 "}c["每个狂怒球可使火焰、冰霜、闪电伤害提高 7%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=7}},nil}
c["物理伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["+80 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=80}},nil}
c["近期内，你若被击中并受到火焰伤害，则每秒回复 2% 生命"]={{[1]={[1]={type="Condition",var="HitByFireDamageRecently"},flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=2}},nil}
c["当插槽内有 1 个【锐利之凝】珠宝时，攻击击中敌人会瘫痪它们 4 秒"]={nil,"当插槽内有 1 个【锐利之凝】珠宝时，攻击击中敌人会瘫痪它们 4 秒 "}c["你创建的奉献地面可使敌人承受的伤害提高 10% 站立时，创建奉献地面"]={{[1]={flags=0,keywordFlags=0,name="DamageTaken",type="INC",value=10}},"你创建的奉献地面可使敌人 站立时，创建奉献地面 "}c["闪电伤害击中时有 5% 几率使敌人受到感电效果影响"]={{[1]={flags=0,keywordFlags=0,name="EnemyShockChance",type="BASE",value=5}},nil}
c["提高 10% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=10}},nil}
c["攻击伤害的 2% 转化为魔力偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageManaLeech",type="BASE",value=2}},nil}
c["召唤生物命中值提高 15%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Accuracy",type="INC",value=15}}}},nil}
c["+15 能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=15}},nil}
c["攻击造成的物理伤害提高 10%"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamage",type="INC",value=10}},nil}
c["受【怨毒光环】影响时，你造成的伤害类异常状态的伤害生效速度提高 15%"]={{[1]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="PoisonFaster",type="INC",value=15},[2]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="IgniteBurnFaster",type="INC",value=15},[3]={[1]={type="Condition",var="AffectedBy怨毒光环"},flags=0,keywordFlags=0,name="BleedFaster",type="INC",value=15}},nil}
c["召唤生物在低血时会爆炸，对周围敌人造成自身最大生命 33% 的火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="ExtraMinionSkill",type="LIST",value={skillId="MinionInstability"}}},nil}
c["该装备的物理伤害提高 210%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=210}},nil}
c["冰缓效果提高 15%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=15}},nil}
c["+300 命中值"]={{[1]={flags=0,keywordFlags=0,name="Accuracy",type="BASE",value=300}},nil}
c["物理伤害提高 200%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=200}},nil}
c["剑类攻击的物理伤害提高 30%"]={{[1]={flags=4194304,keywordFlags=0,name="PhysicalDamage",type="INC",value=30}},nil}
c["在副手时，每 16 力量提高 1% 护甲"]={{[1]={[1]={num=2,type="SlotNumber"},[2]={div=16,stat="Str",type="PerStat"},flags=0,keywordFlags=0,name="Armour",type="INC",value=1}},nil}
c["拥有【鸟之力量】时附加 25 - 40 基础冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=25},[2]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=40}},nil}
c["拥有【鸟之力量】时附加 3 - 62 基础闪电伤害"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=3},[2]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=62}},nil}
c["拥有【鸟之力量】时附加 23 - 39 基础冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=23},[2]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=39}},nil}
c["法术附加 1 - 11 基础闪电伤害"]={{[1]={flags=0,keywordFlags=131072,name="LightningMin",type="BASE",value=1},[2]={flags=0,keywordFlags=131072,name="LightningMax",type="BASE",value=11}},nil}
c["拥有【鸟之力量】时附加 2 - 59 基础闪电伤害"]={{[1]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="LightningMin",type="BASE",value=2},[2]={[1]={type="Condition",var="AffectedBy鸟之力量"},flags=0,keywordFlags=0,name="LightningMax",type="BASE",value=59}},nil}
c["【召唤魔侍】可以召唤 2 个额外魔侍勇士"]={nil,"可以召唤 2 个额外魔侍勇士 "}c["双持时，攻击技能造成的异常状态伤害提高 6%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=6}},nil}
c["剑类攻击 +12% 暴击伤害加成"]={{[1]={flags=4194304,keywordFlags=0,name="CritMultiplier",type="BASE",value=12}},nil}
c["附加 80 - 375 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=80},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=375}},nil}
c["附加 90 - 345 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=90},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=345}},nil}
c["击中时有 40% 几率使目标中毒"]={{[1]={flags=0,keywordFlags=0,name="PoisonChance",type="BASE",value=40}},nil}
c["物品掉落数量提高 0%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=0}},nil}
c["冰霜技能的施法速度提高 5%"]={{[1]={flags=16,keywordFlags=32,name="Speed",type="INC",value=5}},nil}
c["击中满血敌人时，将使他们永久受到威吓 攻击击中时有 20% 几率穿刺敌人 你和周围队友的移动速度提高 8%"]={{[1]={flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=262144,name="MovementSpeed",type="BASE",value=20}}}},"满血敌人时，将使他们永久受到威吓 攻击击中时穿刺敌人 提高 8% "}c["火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=30}},nil}
c["附加 22 - 32 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=22},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=32}},nil}
c["可以从游侠的起点配置天赋"]={{},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 14%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=14}},nil}
c["该装备的物理伤害提高 100%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},nil}
c["每 10 点智慧提高 2% 闪避值"]={{[1]={[1]={div=10,stat="Int",type="PerStat"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=2}},nil}
c["附加 40 - 115 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=115}},nil}
c["附加 50 - 125 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=50},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=125}},nil}
c["附加 60 - 120 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=60},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=120}},nil}
c["附加 70 - 350 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=70},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=350}},nil}
c["在【猛攻】状态期间闪避值提高 30%"]={{[1]={[1]={type="Condition",var="Onslaught"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=30}},nil}
c["锤类攻击的物理伤害提高 22%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=22}},nil}
c["药剂持续期间，获得 21 级的【绝望】诅咒光环"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ExtraCurse",type="LIST",value={level=21,skillId="Despair"}}},nil}
c["药剂持续期间，获得额外混沌伤害，其数值等同于 13% 火焰、冰霜、闪电伤害"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=13}},nil}
c["无视穿着护甲所带来的移动速度降低效果"]={{[1]={flags=0,keywordFlags=0,name="Condition:IgnoreMovementPenalties",type="FLAG",value=true}},nil}
c["当你或你的图腾击败了燃烧中的敌人， 你和你的图腾有 20% 几率各获得 1 个耐力球"]={{},"当你或你的击败了燃烧中的敌人， 你和你的图腾各获得 1 个耐力球 "}c["中毒持续时间延长 25%"]={{[1]={flags=0,keywordFlags=0,name="EnemyPoisonDuration",type="INC",value=25}},nil}
c["图腾被击中时对周围敌人反射火焰伤害，等同它们 25% 的最大生命"]={{[1]={flags=0,keywordFlags=16384,name="FireDamage",type="BASE",value=25}},"被击中时对周围敌人反射，等同它们 最大生命 "}c["附加 15 - 26 基础混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="ChaosMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="ChaosMax",type="BASE",value=26}},nil}
c["攻击速度提高 17%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=17}},nil}
c["受到【火焰净化】影响时，不受【易燃】影响 {variant:50}受到【火焰净化】影响时，承受的反射火焰伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy火焰净化"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=-50}},"不受【易燃】影响 {variant:50}受到【火焰净化】影响时，承受的反射 "}c["拥有魔像时，伤害提高 20% 魔像提供的增益效果提高 30% 魔像生命提高 15%"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=20}}}},"拥有时， 魔像提供的增益效果提高 30% 魔像生命提高 15% "}c["持盾牌时，攻击技能造成的异常状态伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingShield"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=20}},nil}
c["反射的火焰、冰霜、闪电伤害降低 10% 武器造成的伤害穿透 5% 火焰、冰霜、闪电抗性 药剂持续期间，火焰、冰霜、闪电伤害提高 20%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=-10}},"反射的 伤害穿透 5% 火焰、冰霜、闪电抗性 火焰、冰霜、闪电伤害提高 20% "}c["该装备的闪避与能量护盾提高 145%"]={{[1]={flags=0,keywordFlags=0,name="EvasionAndEnergyShield",type="INC",value=145}},nil}
c["锤类和短杖攻击的物理伤害提高 14%"]={{[1]={flags=1048576,keywordFlags=0,name="PhysicalDamage",type="INC",value=14}},nil}
c["此物品上装备的技能石等级 +1"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keyword="all",value=1}}},nil}
c["双持时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["锤类攻击降低 5% 敌人晕眩门槛"]={{[1]={flags=1048576,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-5}},nil}
c["陷阱暴击率提高 50%"]={{[1]={flags=0,keywordFlags=4096,name="CritChance",type="INC",value=50}},nil}
c["持剑时，攻击技能造成的异常状态伤害提高 24%"]={{[1]={[1]={type="Condition",var="UsingSword"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=24}},nil}
c["获得等同 5% 最大生命的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="LifeGainAsEnergyShield",type="BASE",value=5}},nil}
c["获得等同 6% 最大生命的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="LifeGainAsEnergyShield",type="BASE",value=6}},nil}
c["每 8 秒获得一次【火之化身】，持续 4 秒"]={nil,"每 8 秒获得一次【火之化身】，持续 4 秒 "}c["承受攻击造成的物理伤害 (-18--14) {variant:1}投掷陷阱时，有 15% 的几率获得 1 个暴击球"]={{[1]={flags=1,keywordFlags=4096,name="PhysicalDamageTaken",type="BASE",value=-18}}," (--14) {variant:1}投掷时，有 15% 的几率获得 1 个暴击球 "}c["每个狂怒球可使命中值提高 6%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Accuracy",type="INC",value=6}},nil}
c["召唤生物击败敌人时，有 25% 几率获得【不洁之力】，持续 4 秒"]={{},"击败敌人时，获得【不洁之力】，持续 4 秒 "}c["投掷地雷的技能魔力保留降低 4%"]={{[1]={flags=0,keywordFlags=8192,name="ManaReserved",type="INC",value=-4}},nil}
c["近期内你若受到【残暴打击】，则生命偷取总回复上限提高 50%"]={{[1]={[1]={type="Condition",var="BeenSavageHitRecently"},flags=0,keywordFlags=0,name="MaxLifeLeechRate",type="INC",value=50}},nil}
c["每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾"]={nil,"每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 4% 等同于你闪避值的能量护盾 "}c["弓类技能的持续伤害效果提高 15%"]={{[1]={flags=8,keywordFlags=512,name="Damage",type="INC",value=15}},nil}
c["最多可同时召唤额外 3 个魔像"]={{[1]={flags=0,keywordFlags=0,name="ActiveGolemLimit",type="BASE",value=3}},nil}
c["攻击击中时，召唤生物有 5% 几率嘲讽敌人 你的召唤生物死亡时产生腐蚀地面，每秒造成等同它们 20% 最大生命的混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Life",type="BASE",value=5}}}},"击中时，嘲讽敌人 你的召唤生物死亡时产生腐蚀地面，每秒造成等同它们 20% 的混沌伤害 "}c["击败敌人时回复 2% 最大生命 击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复提高 70%"]={{[1]={flags=0,keywordFlags=0,name="Life",type="INC",value=70}},"击败敌人时回复 2%  击败敌人会回复自身 2% 最大能量护盾 击败敌人时回复 4% 最大魔力 近期内你若击败了有你持续伤害状态的敌人，则生命，魔力，和能量护盾回复 "}c["源:由传奇【狐毛铠】 使用 预言【黑暗本能】 升级"]={nil,"源:由传奇【狐毛铠】 使用 预言【黑暗本能】 升级 "}c["物品掉落数量提高 12%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=12}},nil}
c["能量护盾的回复速度提高 10%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShieldRecharge",type="INC",value=10}},nil}
c["敌人无法偷取你的生命"]={nil,"敌人无法偷取你的生命 "}c["每个暴击球可使法杖攻击伤害提高 6%"]={{[1]={[1]={type="Multiplier",var="PowerCharge"},flags=8388608,keywordFlags=0,name="Damage",type="INC",value=6}},nil}
c["施法速度提高 5%"]={{[1]={flags=16,keywordFlags=0,name="Speed",type="INC",value=5}},nil}
c["你可以同时有每种奉献 奉献技能的持续时间降低 50%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=-50}},"你可以同时有每种奉献 奉献技能的 "}c["技能可以额外发射 2 个投射物"]={{[1]={flags=0,keywordFlags=0,name="ProjectileCount",type="BASE",value=2}},nil}
c["+2 近战与空手攻击范围"]={{[1]={flags=0,keywordFlags=0,name="MeleeWeaponRange",type="BASE",value=2},[2]={flags=0,keywordFlags=0,name="UnarmedRange",type="BASE",value=2}},nil}
c["该装备的护甲与能量护盾提高 220%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=220}},nil}
c["持弓攻击附加 10 - 16 基础物理伤害"]={{[1]={flags=131072,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=131072,keywordFlags=0,name="PhysicalMax",type="BASE",value=16}},nil}
c["造成敌人晕眩的攻击和法术带有终结效果 持锤或短杖时，攻击技能造成的异常状态伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=1,keywordFlags=0,name="Damage",type="INC",value=30}},"造成敌人晕眩的和法术带有终结效果 攻击技能造成的异常状态 "}c["你技能的非诅咒类光环效果提高 10%"]={{[1]={flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=10}},nil}
c["该装备的护甲提高 100%"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="INC",value=100}},nil}
c["匕首攻击的伤害提高 20%"]={{[1]={flags=524288,keywordFlags=0,name="Damage",type="INC",value=20}},nil}
c["敌人无法偷取你的魔力 被击中时， 4 秒内回复等同于 10% 伤害的魔力"]={nil,"敌人无法偷取你的魔力 被击中时， 4 秒内回复等同于 10% 伤害的魔力 "}c["双持攻击的攻击速度提高 3%"]={{[1]={[1]={type="Condition",var="DualWielding"},flags=1,keywordFlags=0,name="Speed",type="INC",value=3}},nil}
c["长杖攻击的命中值提高 15%"]={{[1]={flags=2097152,keywordFlags=0,name="Accuracy",type="INC",value=15}},nil}
c["击中时有 10% 几率施放 20 级的【火焰爆破】"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=20,skillId="FireBurstOnHit"}}},nil}
c["触发后，插槽内闪电法术的法术伤害提高 100%"]={{},nil}
c["物理伤害提高 260%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=260}},nil}
c["+40 力量和敏捷"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=40},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=40}},nil}
c["异灵魔侍每秒将其最大生命的 30% 转化为火焰伤害"]={{[1]={[1]={skillName="召唤魔侍",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={[1]={div=1,stat="Life",type="PerStat"},flags=0,keywordFlags=0,name="FireDegen",type="BASE",value=0.3}}}},nil}
c["所有物品上装备的【冰霜技能石】等级 +2"]={{[1]={flags=0,keywordFlags=0,name="GemProperty",type="LIST",value={key="level",keywordList={[1]="active_skill",[2]="cold",[3]=0},value=2}}},nil}
c["每个召唤的魔像可使你有 35% 几率避免元素异常状态 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限"]={{[1]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidShock",type="BASE",value=35}}},[2]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidFrozen",type="BASE",value=35}}},[3]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=35}}},[4]={[1]={skillType=62,type="SkillType"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=35}}}},"每个召唤的可使你 每个召唤的魔像可使它们为你提供的增益效果提高 25% +1 魔像数量上限 "}c["攻击伤害的 1% 转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["召唤生物有+12% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=12}}}},nil}
c["召唤生物有+11% 攻击伤害格挡几率"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=11}}}},nil}
c["耐力球持续时间延长 18%"]={{[1]={flags=0,keywordFlags=0,name="EnduranceChargesDuration",type="INC",value=18}},nil}
c["图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害"]={nil,"图腾被击中时对周围敌人造成等同图腾 15% 最大生命的火焰伤害 "}c["持盾牌时有 20% 几率避免晕眩 持盾牌时攻击伤害格挡几率 +3%"]={{[1]={[1]={type="Condition",var="UsingShield"},[2]={type="Condition",var="UsingShield"},flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=20}},"避免晕眩  +3% "}c["获得等同 5% 物理伤害的闪电伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageGainAsLightning",type="BASE",value=5}},nil}
c["火焰、冰霜、闪电伤害提高 50%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamage",type="INC",value=50}},nil}
c["物理伤害提高 210%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=210}},nil}
c["你造成中毒的敌人若没有冰缓，则受到冰缓 被你的击中所击败的中毒敌人会破碎"]={nil,"你造成中毒的敌人若没有冰缓，则受到冰缓 被你的击中所击败的中毒敌人会破碎 "}c["每 0.5 秒获得 1 个虚空之矢 裂界之器"]={nil,"每 0.5 秒获得 1 个虚空之矢 裂界之器 "}c["30% 的火焰伤害转换为混沌伤害"]={{[1]={flags=0,keywordFlags=0,name="FireDamageConvertToChaos",type="BASE",value=30}},nil}
c["近战暴击有 25% 几率使敌人中毒"]={{[1]={flags=256,keywordFlags=0,name="PoisonChance",type="BASE",value=25}},"暴击 "}c["每个绿色插槽使召唤生物 25% 的物理伤害转化为冰霜伤害"]={{[1]={[1]={type="Multiplier",var="GreenSocketIn{SlotName}"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=25}}}},nil}
c["持匕时，攻击技能造成的异常状态伤害提高 6%"]={{[1]={[1]={type="Condition",var="UsingDagger"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=6}},nil}
c["空手攻击时的物理总伤害额外提高 800%"]={{[1]={flags=16777216,keywordFlags=0,name="PhysicalDamage",type="MORE",value=800}},nil}
c["你自己发动的技能无法造成伤害"]={nil,"你自己发动的技能无法造成伤害 "}c["无法使用头部装备 暴击率特别幸运"]={nil,"无法使用头部装备 暴击率特别幸运 "}c["每装备 1 个【裂界之器】，最大生命提高 +6"]={{[1]={[1]={type="Multiplier",var="ElderItem"},flags=0,keywordFlags=0,name="Life",type="BASE",value=6}},nil}
c["造成敌人晕眩的攻击和法术带有终结效果 持锤时，攻击技能造成的异常状态伤害提高 22%"]={{[1]={[1]={type="Condition",var="UsingMace"},flags=1,keywordFlags=0,name="Damage",type="INC",value=22}},"造成敌人晕眩的和法术带有终结效果 攻击技能造成的异常状态 "}c["持单手武器时，攻击技能造成的异常状态伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingOneHandedWeapon"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=15}},nil}
c["每个狂怒球使旅行技能的冷却回复速度提高 9%"]={{[1]={[1]={skillType=91,type="SkillType"},[2]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="CooldownRecovery",type="INC",value=9}},nil}
c["晕眩回复和格挡回复提高 40%"]={{[1]={flags=0,keywordFlags=0,name="StunRecovery",type="INC",value=40}},nil}
c["物品掉落数量提高 24%"]={{[1]={flags=0,keywordFlags=0,name="LootQuantity",type="INC",value=24}},nil}
c["获得 30 级的主动技能【惩击】，且可被此道具上的技能石辅助"]={{[1]={flags=0,keywordFlags=0,name="ExtraSkill",type="LIST",value={level=30,skillId="Smite"}}},nil}
c["每个耐力球可使物理伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=5}},nil}
c["附加 20 - 50 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=20},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=50}},nil}
c["击败敌人时回复 4% 最大魔力"]={nil,"击败敌人时回复 4% 最大魔力 "}c["攻击技能的冰霜伤害提高 40%"]={{[1]={flags=0,keywordFlags=65536,name="ColdDamage",type="INC",value=40}},nil}
c["召唤生物的伤害提高 12%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Damage",type="INC",value=12}}}},nil}
c["受到残暴打击后失去所有精神球"]={nil,"受到残暴打击后失去所有精神球 "}c["移动时闪避值提高 80%"]={{[1]={[1]={type="Condition",var="Moving"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=80}},nil}
c["附加 15 - 40 基础冰霜伤害"]={{[1]={flags=0,keywordFlags=0,name="ColdMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="ColdMax",type="BASE",value=40}},nil}
c["该装备的能量护盾提高 100%"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="INC",value=100}},nil}
c["自身的每个增益会为法术附加 3 - 8 基础火焰伤害"]={{[1]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=131072,name="FireMin",type="BASE",value=3},[2]={[1]={type="Multiplier",var="BuffOnSelf"},flags=0,keywordFlags=131072,name="FireMax",type="BASE",value=8}},nil}
c["魔卫抗性提高 30%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=30}}}},nil}
c["+10% 混沌抗性上限"]={{[1]={flags=0,keywordFlags=0,name="ChaosResistMax",type="BASE",value=10}},nil}
c["+600 力量和智慧需求"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="BASE",value=600},[2]={flags=0,keywordFlags=0,name="IntRequirement",type="BASE",value=600}},nil}
c["可以施放 1 个额外烙印 被附着烙印的敌人受到烙印技能的伤害提高 30% 烙印技能的持续时间延长 10% 烙印的激活频率提高 12%"]={{},"可以施放 1 个"}c["召唤生物的最大生命提高 30%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="INC",value=30}}}},nil}
c["冰冻时物理伤害增加 100%"]={{[1]={[1]={type="Condition",var="Frozen"},flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=100}},nil}
c["你每控制一个魔卫，每秒回复 0.6% 生命 {variant:3}你每拥有一个灵体，魔力回复速度提高 30%"]={{},"你每控制一个，:3}你每拥有一个灵体，提高 30% "}c["附加 10 - 15 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=10},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=15}},nil}
c["剑类攻击的伤害提高 12%"]={{[1]={flags=4194304,keywordFlags=0,name="Damage",type="INC",value=12}},nil}
c["生效期间，瓦尔技能的总伤害额外提高 35%"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=256,name="Damage",type="MORE",value=35}},nil}
c["受到【雷霆】影响时，闪电伤害的 1.5% 转化为能量护盾偷取"]={{[1]={[1]={type="Condition",var="AffectedBy雷霆"},flags=0,keywordFlags=0,name="LightningDamageEnergyShieldLeech",type="BASE",value=1.5}},nil}
c["终结"]={nil,"终结 "}c["该装备的护甲与能量护盾提高 150%"]={{[1]={flags=0,keywordFlags=0,name="ArmourAndEnergyShield",type="INC",value=150}},nil}
c["陷阱投掷速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="TrapThrowingSpeed",type="INC",value=4}},nil}
c["每 200 点命中值可使攻击速度提高 1%"]={{[1]={[1]={div=200,stat="Accuracy",type="PerStat"},flags=1,keywordFlags=0,name="Speed",type="INC",value=1}},nil}
c["获得持续 4 秒的点燃汇流"]={{[1]={[1]={type="Condition",var="IgnitingConflux"},flags=0,keywordFlags=0,name="EnemyIgniteChance",type="BASE",value=100},[2]={[1]={type="Condition",var="IgnitingConflux"},flags=0,keywordFlags=0,name="PhysicalCanIgnite",type="FLAG",value=true},[3]={[1]={type="Condition",var="IgnitingConflux"},flags=0,keywordFlags=0,name="LightningCanIgnite",type="FLAG",value=true},[4]={[1]={type="Condition",var="IgnitingConflux"},flags=0,keywordFlags=0,name="ColdCanIgnite",type="FLAG",value=true},[5]={[1]={type="Condition",var="IgnitingConflux"},flags=0,keywordFlags=0,name="ChaosCanIgnite",type="FLAG",value=true}},nil}
c["物理攻击伤害的 0.6% 会转化为生命偷取"]={{[1]={flags=1,keywordFlags=0,name="PhysicalDamageLifeLeech",type="BASE",value=0.6}},nil}
c["武器攻击的火焰、冰霜、闪电伤害提高 10%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=10}},"攻击的 "}c["击中时 30% 几率触发插槽内的闪电法术"]={{},"时 触发插槽内的闪电法术 "}c["召唤生物的施法速度提高 4%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=16,keywordFlags=0,name="Speed",type="INC",value=4}}}},nil}
c["击败敌人有 5% 几率获得狂怒球 每个狂怒球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="FrenzyCharge"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=5}},"击败敌人获得狂怒球 提高 5% "}c["武器攻击的火焰、冰霜、闪电伤害提高 30%"]={{[1]={flags=134217728,keywordFlags=0,name="ElementalDamage",type="INC",value=30}},"攻击的 "}c["反射 20 混沌伤害给近战攻击者"]={nil,"反射 20 混沌伤害给近战攻击者 "}c["近期内你若被击中过，则每有 1 个耐力球，就会每秒受到 200 火焰伤害"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},[2]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="FireDegen",type="BASE",value=200}},nil}
c["匕首攻击的命中值提高 10%"]={{[1]={flags=524288,keywordFlags=0,name="Accuracy",type="INC",value=10}},nil}
c["当你使用旅行技能时，有 25% 几率失去一个狂怒球 获得【灵巧】有 25% 几率失去一个暴击球"]={{},"当你使用旅行技能时，失去一个狂怒球 获得【灵巧】有 25% 几率失去一个暴击球 "}c["从偷取获取的每秒魔力回复提高 10%"]={{[1]={flags=0,keywordFlags=0,name="ManaLeechRate",type="INC",value=10}},nil}
c["攻击速度提高 10%"]={{[1]={flags=1,keywordFlags=0,name="Speed",type="INC",value=10}},nil}
c["你击中造成的冰缓必定使目标减速 10% 点燃总伤害额外提高 20% 敌人身上的非伤害异常状态效果提高 30%"]={{[1]={flags=0,keywordFlags=262144,name="Damage",type="MORE"}},"你造成的冰缓必定使目标减速 10 敌人身上的非异常状态效果提高 30% "}c["【迷踪】状态"]={{[1]={flags=0,keywordFlags=0,name="Condition:Phasing",type="FLAG",value=true}},nil}
c["暴走"]={nil,"暴走 "}c["此物品上的技能石受到 1 级的 魔力偷取 辅助"]={{[1]={[1]={slotName="{SlotName}",type="SocketedIn"},flags=0,keywordFlags=0,name="ExtraSupport",type="LIST",value={level=1,skillId="SupportManaLeech"}}},nil}
c["每 10 点奉献使图腾伤害提高 4%"]={{[1]={[1]={div=10,stat="Devotion",type="PerStat"},flags=0,keywordFlags=16384,name="Damage",type="INC",value=4}},nil}
c["范围效果扩大 12%"]={{[1]={flags=0,keywordFlags=0,name="AreaOfEffect",type="INC",value=12}},nil}
c["闪电抗性降低 55%"]={{[1]={flags=0,keywordFlags=0,name="LightningResist",type="INC",value=-55}},nil}
c["暴击时获得 1 点充能"]={nil,"暴击时获得 1 点充能 "}c["召唤生物的攻击速度提高 14%"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=1,keywordFlags=0,name="Speed",type="INC",value=14}}}},nil}
c["反射的物理伤害降低 20% 有 4% 几率造成双倍伤害 +20 力量 物理伤害提高 20%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=-20}},"反射的 有 4% 几率造成双倍伤害 +20 力量 物理伤害提高 20% "}c["双手近战武器攻击的物理伤害提高 16%"]={{[1]={flags=570425344,keywordFlags=0,name="PhysicalDamage",type="INC",value=16}},nil}
c["击败敌人有 5% 几率获得耐力球 每个耐力球可使伤害提高 5%"]={{[1]={[1]={type="Multiplier",var="EnduranceCharge"},flags=0,keywordFlags=0,name="Damage",type="BASE",value=5}},"击败敌人获得耐力球 提高 5% "}c["+75 最大生命"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=75}},nil}
c["被冰缓后，你有 3 秒免疫冰缓"]={nil,"被冰缓后，你有 3 秒免疫冰缓 "}c["近战伤害提高 8%"]={{[1]={flags=256,keywordFlags=0,name="Damage",type="INC",value=8}},nil}
c["格挡时 10% 几率获得耐力球 {variant:3,4}格挡时 20% 几率获得耐力球"]={{},"格挡时 获得耐力球 {variant:3,4}格挡时 20% 几率获得耐力球 "}c["药剂持续期间，你绝对抗性最高的元素属性，会使你穿透 15% 该抗性"]={{[1]={[1]={stat="LightningResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold"},[2]={stat="LightningResistTotal",thresholdStat="FireResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=15},[2]={[1]={stat="ColdResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold"},[2]={stat="ColdResistTotal",thresholdStat="FireResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="ColdPenetration",type="BASE",value=15},[3]={[1]={stat="FireResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold"},[2]={stat="FireResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=15}},nil}
c["闪电伤害提高 16%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=16}},nil}
c["如果近期内被击中，则闪避值提高 20%"]={{[1]={[1]={type="Condition",var="BeenHitRecently"},flags=0,keywordFlags=0,name="Evasion",type="INC",value=20}},nil}
c["8% 攻击格挡率"]={{[1]={flags=0,keywordFlags=0,name="BlockChance",type="BASE",value=8}},nil}
c["当你使用瓦尔技能时，获得噬魂者 10 秒"]={nil,"当你使用瓦尔技能时，获得噬魂者 10 秒 "}c["召唤生物伤害提高或降低，将同样套用于自身"]={{[1]={flags=0,keywordFlags=0,name="MinionDamageAppliesToPlayer",type="FLAG",value=true}},nil}
c["获得额外混沌伤害，其数值等同于火焰、冰霜、闪电伤害的 20%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=20}},nil}
c["+55% 持续混沌伤害加成"]={{[1]={flags=0,keywordFlags=0,name="ChaosDotMultiplier",type="BASE",value=55}},nil}
c["魔卫的物理总伤害额外提高 90%"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="PhysicalDamage",type="MORE",value=90}}}},nil}
c["烙印技能暴击率提高 15%"]={{[1]={[1]={skillType=76,type="SkillType"},flags=0,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["药剂持续期间，你绝对抗性最低的元素属性，会使你受到的该属性伤害降低 10%"]={{[1]={[1]={stat="LightningResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold",upper=true},[2]={stat="LightningResistTotal",thresholdStat="FireResistTotal",type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="LightningDamageTaken",type="INC",value=-10},[2]={[1]={stat="ColdResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold",upper=true},[2]={stat="ColdResistTotal",thresholdStat="FireResistTotal",type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="ColdDamageTaken",type="INC",value=-10},[3]={[1]={stat="FireResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold",upper=true},[2]={stat="FireResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold",upper=true},flags=0,keywordFlags=0,name="FireDamageTaken",type="INC",value=-10}},nil}
c["攻击击中每个敌人会回复 +10 生命"]={{[1]={flags=1,keywordFlags=0,name="LifeOnHit",type="BASE",value=10}},nil}
c["持续吟唱时，有额外 5% 几率躲避攻击击中"]={{[1]={[1]={type="Condition",var="OnChannelling"},flags=0,keywordFlags=0,name="AttackDodgeChance",type="BASE",value=5}},nil}
c["击中和异常状态对流血敌人的伤害提高 30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Bleeding"},flags=0,keywordFlags=786432,name="Damage",type="INC",value=30}},nil}
c["火焰伤害的 0.2% 转化为生命偷取"]={{[1]={flags=0,keywordFlags=0,name="FireDamageLifeLeech",type="BASE",value=0.2}},nil}
c["药剂持续期间，你绝对抗性最高的元素属性，会使你穿透 13% 该抗性"]={{[1]={[1]={stat="LightningResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold"},[2]={stat="LightningResistTotal",thresholdStat="FireResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="LightningPenetration",type="BASE",value=13},[2]={[1]={stat="ColdResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold"},[2]={stat="ColdResistTotal",thresholdStat="FireResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="ColdPenetration",type="BASE",value=13},[3]={[1]={stat="FireResistTotal",thresholdStat="LightningResistTotal",type="StatThreshold"},[2]={stat="FireResistTotal",thresholdStat="ColdResistTotal",type="StatThreshold"},flags=0,keywordFlags=0,name="FirePenetration",type="BASE",value=13}},nil}
c["近战攻击会造成流血 {variant:2}近战攻击有 50% 几率造成流血"]={{[1]={flags=256,keywordFlags=0,name="BleedChance",type="BASE",value=50}},"会 {variant:2}近战攻击造成流血 "}c["锤类攻击的伤害提高 18%"]={{[1]={flags=1048576,keywordFlags=0,name="Damage",type="INC",value=18}},nil}
c["在娜斯玛的阿卡拉中指派 8000 名德卡拉的服务"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC娜斯玛",type="FLAG",value=true}},nil}
c["周围敌人获得 -20% 冰霜抗性"]={{[1]={flags=0,keywordFlags=0,name="EnemyModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ColdResist",type="BASE",value=-20}}}},nil}
c["+150% 攻击和法术暴击伤害加成"]={{[1]={flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=150}},nil}
c["每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾"]={nil,"每 2 秒获得一个鬼影缠身，最大 3 个 被击中时，丢失一个鬼影缠身，回复 5% 等同于你闪避值的能量护盾 "}c["攻击技能可使混沌伤害提高 10%"]={{[1]={flags=0,keywordFlags=65536,name="ChaosDamage",type="INC",value=10}},nil}
c["+15% 火焰抗性"]={{[1]={flags=0,keywordFlags=0,name="FireResist",type="BASE",value=15}},nil}
c["+90 全属性"]={{[1]={flags=0,keywordFlags=0,name="Str",type="BASE",value=90},[2]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=90},[3]={flags=0,keywordFlags=0,name="Int",type="BASE",value=90}},nil}
c["每秒回复 0.4% 生命"]={{[1]={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.4}},nil}
c["对元素异常状态的敌人的暴击伤害加成  +30%"]={{[1]={[1]={actor="enemy",type="ActorCondition",varList={[1]="Frozen",[2]="Chilled",[3]="Shocked",[4]="Ignited"}},flags=0,keywordFlags=0,name="CritMultiplier",type="BASE",value=30}},nil}
c["闪电伤害提高 10%"]={{[1]={flags=0,keywordFlags=0,name="LightningDamage",type="INC",value=10}},nil}
c["使用战吼时获得 5 怒火"]={{[1]={flags=0,keywordFlags=0,name="Condition:CanGainRage",type="FLAG",value=true},[2]={[1]={type="Condition",var="CanGainRage"},flags=0,keywordFlags=0,name="Dummy",type="DUMMY",value=1}},nil}
c["获得等同 4% 最大魔力的额外能量护盾"]={{[1]={flags=0,keywordFlags=0,name="ManaGainAsEnergyShield",type="BASE",value=4}},nil}
c["附加 15 - 35 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=15},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=35}},nil}
c["匕首攻击的暴击率提高 15%"]={{[1]={flags=524288,keywordFlags=0,name="CritChance",type="INC",value=15}},nil}
c["攻击和法术无法被闪避"]={{[1]={[1]={type="Condition",var="{Hand}Attack"},flags=0,keywordFlags=0,name="CannotBeEvaded",type="FLAG",value=true}},nil}
c["反射 100 - 150 物理伤害给近战攻击者 你反射给怪物的 30% 伤害会变为回复生命"]={nil,"反射 100 - 150 物理伤害给近战攻击者 你反射给怪物的 30% 伤害会变为回复生命 "}c["你技能的光环每秒回复你和周围友军 0.2% 最大生命"]={{[1]={flags=0,keywordFlags=0,name="ExtraAuraEffect",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.2}}}},nil}
c["不能搭配【异灵之体】"]={nil,"不能搭配【异灵之体】 "}c["物理伤害提高 245%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=245}},nil}
c["物理伤害提高 113%"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamage",type="INC",value=113}},nil}
c["敌人死后爆炸，造成敌人生命 10% 的火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="Life",type="BASE",value=10}},"敌人死后爆炸，造成敌人 火焰伤害 "}c["击败敌人时回复 5% 最大生命"]={nil,"击败敌人时回复 5% 最大生命 "}c["附加 228 - 280 基础物理伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalMin",type="BASE",value=228},[2]={flags=0,keywordFlags=0,name="PhysicalMax",type="BASE",value=280}},nil}
c["攻击附加 1 - 4 基础物理伤害"]={{[1]={flags=0,keywordFlags=65536,name="PhysicalMin",type="BASE",value=1},[2]={flags=0,keywordFlags=65536,name="PhysicalMax",type="BASE",value=4}},nil}
c["法术伤害提高 100%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=100}},nil}
c["总伤害额外提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Damage",type="MORE",value=15}},nil}
c["法术伤害的 0.4% 会转化为能量护盾偷取"]={{[1]={flags=2,keywordFlags=0,name="DamageEnergyShieldLeech",type="BASE",value=0.4}},nil}
c["提高 90% 药剂充能消耗"]={{[1]={flags=0,keywordFlags=0,name="FlaskChargesUsed",type="INC",value=90}},nil}
c["当你没有获得【元素超载】时，获得【坚毅之心】"]={nil,"当你没有获得【元素超载】时，获得【坚毅之心】 "}c["爪类攻击击中时，有 25% 几率偷取暴击、狂怒和耐力球"]={{},"击中时，偷取暴击、狂怒和耐力球 "}c["范围内的天赋被圣堂抑制"]={{[1]={flags=0,keywordFlags=0,name="好战的信仰",type="FLAG",value=true}},nil}
c["+500 魔卫最大生命"]={{[1]={[1]={skillName="魔卫复苏",type="SkillName"},flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="Life",type="BASE",value=500}}}},nil}
c["赞美 10000 名被高阶圣堂武僧阿瓦留斯转化的新信徒"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC阿瓦留斯",type="FLAG",value=true}},nil}
c["施放战吼时回复 25% 生命和魔力 战吼持续时间延长 100% 战吼冷却回复速度提高 100% 近期内你若有使用战吼，你和周围友军的攻击速度提高 10% 近期内你若有使用战吼，你和周围友军的伤害提高 30%"]={{[1]={[1]={type="Condition",var="UsedWarcryRecently"},[2]={type="Condition",var="UsedWarcryRecently"},flags=0,keywordFlags=0,name="ExtraAura",type="LIST",value={mod={flags=0,keywordFlags=4,name="Life",type="INC",value=100},onlyAllies=true}}},"施放时回复 25% 和魔力 战吼持续时间 战吼冷却回复速度提高 100% 你和攻击速度提高 10% 你和周围友军的伤害提高 30% "}c["在被点燃后，你有 3 秒免疫点燃 {variant:1}被感电后，你有 1 秒免疫感电"]={nil,"在被点燃后，你有 3 秒免疫点燃 {variant:1}被感电后，你有 1 秒免疫感电 "}c["用 8000 枚金币纪念卡迪罗"]={{[1]={flags=0,keywordFlags=0,name="TimelessJewelNPC卡迪罗",type="FLAG",value=true}},nil}
c["冰霜伤害提高 16%"]={{[1]={flags=0,keywordFlags=0,name="ColdDamage",type="INC",value=16}},nil}
c["药剂持续期间，有 30% 几率避免被冰缓"]={{[1]={[1]={type="Condition",var="UsingFlask"},flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=30}},nil}
c["力量需求降低 20%"]={{[1]={flags=0,keywordFlags=0,name="StrRequirement",type="INC",value=-20}},nil}
c["技能效果持续时间延长 +0%"]={{[1]={flags=0,keywordFlags=0,name="Duration",type="INC",value=0}},nil}
c["能量护盾回复改为恢复生命"]={nil,"能量护盾回复改为恢复生命 "}c["火焰法术的 15% 物理伤害转换为火焰伤害"]={{[1]={flags=2,keywordFlags=16,name="PhysicalDamageConvertToFire",type="BASE",value=15}},nil}
c["闪避值提高 60%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=60}},nil}
c["持长杖时，法术伤害提高 15%"]={{[1]={[1]={type="Condition",var="UsingStaff"},flags=2,keywordFlags=0,name="Damage",type="INC",value=15}},nil}
c["击中敌人后使其冰缓 1 秒，速度降低 30% 击中冰缓的敌人时使其致盲"]={{},"敌人后使其冰缓 1 秒，速度 击中冰缓的敌人时使其致盲 "}c["生命回满时不会取消生命偷取效果 近期内你若有击败敌人，则范围效果扩大 30%"]={{[1]={[1]={type="Condition",var="KilledRecently"},flags=512,keywordFlags=0,name="Life",type="INC",value=30}},"回满时不会取消生命偷取效果 效果 "}c["拥有能量护盾时无法被晕眩"]={{[1]={[1]={type="Condition",var="HaveEnergyShield"},flags=0,keywordFlags=0,name="AvoidStun",type="BASE",value=100}},nil}
c["每 1 个聚光之石可使魔力提高 30"]={{[1]={[1]={type="Multiplier",var="GrandSpectrum"},flags=0,keywordFlags=0,name="Mana",type="BASE",value=30},[2]={flags=0,keywordFlags=0,name="Multiplier:GrandSpectrum",type="BASE",value=1}},nil}
c["【雷霆】的光环效果提高 60%"]={{[1]={[1]={skillName="雷霆",type="SkillName"},flags=0,keywordFlags=0,name="AuraEffect",type="INC",value=60}},nil}
c["受到【元素净化】影响时，受到击中物理伤害的 12% 转换为冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy元素净化"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsCold",type="BASE",value=12}},nil}
c["召唤生物获得 +15% 火焰、冰霜、闪电抗性"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="ElementalResist",type="BASE",value=15}}}},nil}
c["在奉献地面上时，攻击和施法速度提高 20%"]={{[1]={[1]={type="Condition",var="OnConsecratedGround"},flags=0,keywordFlags=0,name="Speed",type="INC",value=20}},nil}
c["敌人晕眩门槛降低 20%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-20}},nil}
c["燃烧伤害提高 12%"]={{[1]={flags=0,keywordFlags=134217728,name="FireDamage",type="INC",value=12}},nil}
c["冰缓效果提高 5%"]={{[1]={flags=0,keywordFlags=0,name="EnemyChillEffect",type="INC",value=5}},nil}
c["受到【火焰净化】影响时，不受燃烧地面影响"]={nil,"受到【火焰净化】影响时，不受燃烧地面影响 "}c["获得额外混沌伤害，其数值等同于火焰、冰霜、闪电伤害的 15%"]={{[1]={flags=0,keywordFlags=0,name="ElementalDamageGainAsChaos",type="BASE",value=15}},nil}
c["免疫点燃"]={{[1]={flags=0,keywordFlags=0,name="AvoidIgnite",type="BASE",value=100}},nil}
c["敌人晕眩门槛降低 5%"]={{[1]={flags=0,keywordFlags=0,name="EnemyStunThreshold",type="INC",value=-5}},nil}
c["30% 几率避免被冰缓"]={{[1]={flags=0,keywordFlags=0,name="AvoidChilled",type="BASE",value=30}},nil}
c["【召唤魔侍】可以召唤 2 个额外魔侍勇士 魔侍的移动速度提高 100% 【异灵魔侍】的击中无法闪避"]={{},"可以召唤 2 个"}c["药剂回复的生命提高 8%"]={{[1]={flags=0,keywordFlags=0,name="FlaskLifeRecovery",type="INC",value=8}},nil}
c["战吼不消耗魔力"]={{[1]={flags=0,keywordFlags=4,name="ManaCost",type="MORE",value=-100}},nil}
c["50% 的物理伤害转换为火焰伤害"]={{[1]={flags=0,keywordFlags=0,name="PhysicalDamageConvertToFire",type="BASE",value=50}},nil}
c["击中时触发插槽内的闪电法术"]={nil,"击中时触发插槽内的闪电法术 "}c["召唤生物攻击速度的加成同时套用于你身上"]={{[1]={flags=0,keywordFlags=0,name="MinionAttackSpeedAppliesToPlayer",type="FLAG",value=true}},nil}
c["持斧时，攻击技能造成的异常状态伤害提高 12%"]={{[1]={[1]={type="Condition",var="UsingAxe"},flags=2048,keywordFlags=65536,name="Damage",type="INC",value=12}},nil}
c["闪避值提高 15%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=15}},nil}
c["+40 敏捷"]={{[1]={flags=0,keywordFlags=0,name="Dex",type="BASE",value=40}},nil}
c["受到【迅捷】影响时，击败敌人获得 4 秒【猛攻】状态 {variant:31}受到【迅捷】影响时获得【迷踪】状态"]={nil,"受到【迅捷】影响时，击败敌人获得 4 秒【猛攻】状态 {variant:31}受到【迅捷】影响时获得【迷踪】状态 "}c["受到【憎恨】影响时，40% 的物理伤害转换为冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy憎恨"},flags=0,keywordFlags=0,name="PhysicalDamageConvertToCold",type="BASE",value=40}},nil}
c["闪避值提高 180%"]={{[1]={flags=0,keywordFlags=0,name="Evasion",type="INC",value=180}},nil}
c["受到【元素净化】影响时，受到击中物理伤害的 12% 转换为火焰伤害"]={{[1]={[1]={type="Condition",var="AffectedBy元素净化"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsFire",type="BASE",value=12}},nil}
c["受到【元素净化】影响时，受到击中物理伤害的 12% 转换为闪电伤害"]={{[1]={[1]={type="Condition",var="AffectedBy元素净化"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsLightning",type="BASE",value=12}},nil}
c["召唤生物每秒回复 0.5% 生命"]={{[1]={flags=0,keywordFlags=0,name="MinionModifier",type="LIST",value={mod={flags=0,keywordFlags=0,name="LifeRegenPercent",type="BASE",value=0.5}}}},nil}
c["拥有【提速尾流】时闪避值 +1000"]={{[1]={[1]={type="Condition",var="Tailwind"},flags=0,keywordFlags=0,name="Evasion",type="BASE",value=1000}},nil}
c["+90 最大能量护盾"]={{[1]={flags=0,keywordFlags=0,name="EnergyShield",type="BASE",value=90}},nil}
c["受到【火焰净化】影响时，承受的反射火焰伤害降低 50%"]={{[1]={[1]={type="Condition",var="AffectedBy火焰净化"},flags=0,keywordFlags=0,name="FireDamage",type="INC",value=-50}},"承受的反射 "}c["受到【冰霜净化】影响时，受到击中物理伤害的 10% 转换为冰霜伤害"]={{[1]={[1]={type="Condition",var="AffectedBy冰霜净化"},flags=0,keywordFlags=0,name="PhysicalDamageTakenAsCold",type="BASE",value=10}},nil}
c["暴击球达到最大数量时，获得 1 个狂怒球"]={nil,"暴击球达到最大数量时，获得 1 个狂怒球 "}c["受到【冰霜净化】影响时，不受冰缓地面影响 {variant:54}受到【冰霜净化】影响时，不受【冻伤】影响"]={nil,"受到【冰霜净化】影响时，不受冰缓地面影响 {variant:54}受到【冰霜净化】影响时，不受【冻伤】影响 "}c["对受诅咒敌人造成伤害的 1% 转化为生命偷取"]={{[1]={[1]={actor="enemy",type="ActorCondition",var="Cursed"},flags=4,keywordFlags=0,name="DamageLifeLeech",type="BASE",value=1}},nil}
c["法术伤害提高 120%"]={{[1]={flags=2,keywordFlags=0,name="Damage",type="INC",value=120}},nil}
c["暴走状态时为瓦尔技能补充 5 个灵魂"]={nil,"暴走状态时为瓦尔技能补充 5 个灵魂 "}c["受到【怨毒光环】影响时，不受【烈毒】影响"]={nil,"受到【怨毒光环】影响时，不受【烈毒】影响 "}c["+375 护甲"]={{[1]={flags=0,keywordFlags=0,name="Armour",type="BASE",value=375}},nil}
