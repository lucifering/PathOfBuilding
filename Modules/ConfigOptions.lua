-- Path of Building
--
-- Module: Config Options
-- List of options for the Configuration tab.
--

local m_min = math.min
local m_max = math.max

return {
	-- Section: General options
{ section = "常规", col = 1 },
{ var = "resistancePenalty", type = "list", label = "抗性 惩罚:", ifVer = "3_0", list = {{val=0,label="无"},{val=-30,label="第五章 (-30%)"},{val=nil,label="第十章 (-60%)"}} },
{ var = "enemyLevel", type = "count", label = "敌人 等级:", tooltip = "敌人等级的设置会影响你命中率和闪避率的估算\n默认的等级和你角色等级相同，上限是84级\n这个估算和游戏中的面板中相同。" },
{ var = "enemyPhysicalHit", type = "count", label = "敌人物理击中伤害:", tooltip = "这个会影响你的护甲所能带来的物理伤害减免的估算\n 默认是 1.5 倍敌人的基础伤害\n这个估算和游戏中的面板中相同。" },
{ var = "detonateDeadCorpseLife", type = "count", label = "敌人尸体的生命:", tooltip = "设置【爆灵术】和类似的灵柩爆炸技能.\n作为参考，70级怪物的生命为："..data["3_0"].monsterLifeTable[70].." ，80级怪物的生命为： "..data["3_0"].monsterLifeTable[80]..".", apply = function(val, modList, enemyModList)
		modList:NewMod("SkillData", "LIST", { key = "corpseLife", value = val }, "Config")
	end },
{ var = "conditionStationary", type = "check", label = "你静止不移动?", ifCond = "Stationary", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Stationary", "FLAG", true, "Config")
	end },
{ var = "conditionMoving", type = "check", label = "你处于移动状态?", ifCond = "Moving", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Moving", "FLAG", true, "Config")
	end },
{ var = "conditionFullLife", type = "check", label = "你处于满血状态?", tooltip = "如果你有【异灵之体】天赋，你会自动被认为是满血的\n如果有必要，你可以勾选这个来认为你是满血的.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:FullLife", "FLAG", true, "Config")
	end },
{ var = "conditionLowLife", type = "check", label = "你处于低血状态?", ifCond = "LowLife", tooltip = "当你至少有 65% 生命保留的时候会自动认为是低血状态,\n如果有必要，你可以勾选这个来认为你是低血的.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:LowLife", "FLAG", true, "Config")
	end },
{ var = "conditionFullEnergyShield", type = "check", label = "你处于满能量护盾状态?", ifCond = "FullEnergyShield", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:FullEnergyShield", "FLAG", true, "Config")
	end },
{ var = "conditionHaveEnergyShield", type = "check", label = "你经常保持有能量护盾?", ifCond = "HaveEnergyShield", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:HaveEnergyShield", "FLAG", true, "Config")
	end },
{ var = "minionsConditionFullLife", type = "check", label = "你的召唤生物处于满血状态?", ifMinionCond = "FullLife", apply = function(val, modList, enemyModList)
		modList:NewMod("MinionModifier", "LIST", { mod = modLib.createMod("Condition:FullLife", "FLAG", true, "Config") }, "Config")
	end },
{ var = "igniteMode", type = "list", label = "点燃计算模式:", tooltip = "目前以火焰基础点伤来计算点燃伤害:\n平均伤害：点燃是基于平均伤害计算.\n暴击伤害：点燃基于暴击伤害计算.", list = {{val="AVERAGE",label="平均伤害"},{val="CRIT",label="暴击伤害"}} },

	-- Section: Skill-specific options
{ section = "技能选项", col = 2 },
{ label = "【鸟之势】:", ifSkill = "鸟之势" },
{ var = "aspectOfTheAvianAviansMight", type = "check", label = "有【鸟之力量】buff?", ifSkill = "鸟之势", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:AviansMightActive", "FLAG", true, "Config")
	end },
{ var = "aspectOfTheAvianAviansFlight", type = "check", label = "有【鸟之斗魄】buff?", ifSkill = "鸟之势", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:AviansFlightActive", "FLAG", true, "Config")
	end },
{ label = "【猫之势】:", ifSkill = "猫之势" },
{ var = "aspectOfTheCatCatsStealth", type = "check", label = "有【猫之隐匿】buff?", ifSkill = "猫之势", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:CatsStealthActive", "FLAG", true, "Config")
	end },
{ var = "aspectOfTheCatCatsAgility", type = "check", label = "有【猫之敏捷】buff?", ifSkill = "猫之势", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:CatsAgilityActive", "FLAG", true, "Config")
	end },
{ label = "【蟹之势】:", ifSkill = "蟹之势" },
{ var = "overrideCrabBarriers", type = "count", label = "# 【深海屏障】数量(如果不是最大层的话):", ifSkill = "蟹之势", apply = function(val, modList, enemyModList)
		modList:NewMod("CrabBarriers", "OVERRIDE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ label = "【蛛之势】:", ifSkill = "蛛之势" },
{ var = "aspectOfTheSpiderWebStacks", type = "count", label = "# 蜘蛛网层数:", ifSkill = "蛛之势", apply = function(val, modList, enemyModList)
modList:NewMod("ExtraSkillMod", "LIST", { mod = modLib.createMod("Multiplier:SpiderWebApplyStack", "BASE", val) }, "Config", { type = "SkillName", skillName = "蛛之势" })
	end },

{ label = "旗帜技能:", ifSkillList = { "恐怖之旗", "战旗" } },
{ var = "bannerPlanted", type = "check", label = "旗帜放置?", ifSkillList = { "恐怖之旗", "战旗"}, apply = function(val, modList, enemyModList)
modList:NewMod("Condition:BannerPlanted", "FLAG", true, "Config", { type = "SkillName", skillNameList = { "恐怖之旗", "战旗" } })
	end },
{ var = "bannerStages", type = "count", label = "旗帜阶层:", ifSkillList = { "恐怖之旗", "战旗" }, apply = function(val, modList, enemyModList)
modList:NewMod("Multiplier:BannerStage", "BASE", m_min(val, 50), "Config", { type = "SkillName", skillNameList = { "恐怖之旗", "战旗" } })
	end },
{ label = "烙印技能:", ifSkillList = { "末日烙印", "风暴烙印" } }, -- I barely resisted the temptation to label this "Generic Brand:"
{ var = "brandAttachedToEnemy", type = "check", label = "附着到敌人身上?", ifSkillList = { "末日烙印", "风暴烙印" }, apply = function(val, modList, enemyModList)
modList:NewMod("Condition:BrandAttachedToEnemy", "FLAG", true, "Config", { type = "SkillType", skillType = SkillType.Brand })
	end },
	
{ label = "暗夜血契:", ifSkill = "暗夜血契" },
{ var = "darkPactSkeletonLife", type = "count", label = "魔侍 生命:", ifSkill = "暗夜血契", tooltip = "设置使用【暗夜血契】时，魔侍的最大生命.", apply = function(val, modList, enemyModList)
modList:NewMod("SkillData", "LIST", { key = "skeletonLife", value = val }, "Config", { type = "SkillName", skillName = "暗夜血契" })
	end },
{ label = "苦痛之捷:", ifSkill = "苦痛之捷" },
{ var = "heraldOfAgonyVirulenceStack", type = "count", label = "# 【毒力】层数:", ifSkill = "苦痛之捷", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:VirulenceStack", "BASE", m_min(val, 40), "Config")
	end },
{ label = "冰霜新星:", ifSkill = "冰霜新星" },
{ var = "iceNovaCastOnFrostbolt", type = "check", label = "是否由【寒冰弹】触发?", ifSkill = "冰霜新星", apply = function(val, modList, enemyModList)
modList:NewMod("Condition:CastOnFrostbolt", "FLAG", true, "Config", { type = "SkillName", skillName = "冰霜新星" })
	end },
{ label = "【闪电支配】", ifSkill = "闪电支配(辅)" },
{ var = "innervateInnervation", type = "check", label = "处于【闪电支配】状态?", ifSkill = "闪电支配(辅)", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:InnervationActive", "FLAG", true, "Config")
	end },
	
{ label = "【灌注】:", ifSkill = "灌能吟唱(辅)" },
	{ var = "infusedChannellingInfusion", type = "check", label = "激活【灌注】?", ifSkill = "灌能吟唱(辅)", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:InfusionActive", "FLAG", true, "Config")
	end },
{ label = "【法术凝聚】:", ifSkill = "法术凝聚（辅）" },
	{ var = "intensifyIntensity", type = "count", label = "# 层【法术凝聚】:", ifSkill = "法术凝聚（辅）", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:Intensity", "BASE", m_min(val, 4), "Config")
	end },
{ label = "召唤灵体:", ifSkill = "召唤灵体" },
{ var = "raiseSpectreSpectreLevel", type = "count", label = "灵体等级:", ifSkill = "召唤灵体", tooltip = "设置灵体等级.\n默认等级是【召唤灵体】技能石的需求等级.", apply = function(val, modList, enemyModList)
modList:NewMod("SkillData", "LIST", { key = "minionLevel", value = val }, "Config", { type = "SkillName", skillName = "召唤灵体" })
	end },
{ label = "虹吸陷阱:", ifSkill = "虹吸陷阱" },
{ var = "siphoningTrapAffectedEnemies", type = "count", label = "# 受到影响的敌人数量:", ifSkill = "虹吸陷阱", tooltip = "设置受到【虹吸陷阱】影响的敌人数量.", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:EnemyAffectedBySiphoningTrap", "BASE", val, "Config")
		modList:NewMod("Condition:SiphoningTrapSiphoning", "FLAG", true, "Config")
	end },
{ var = "raiseSpectreEnableCurses", type = "check", label = "灵体自带诅咒:", ifSkill = "召唤灵体", tooltip = "也计算上你的灵体带的诅咒.", apply = function(val, modList, enemyModList)
modList:NewMod("SkillData", "LIST", { key = "enable", value = true }, "Config", { type = "SkillType", skillType = SkillType.Curse }, { type = "SkillName", skillName = "召唤灵体", summonSkill = true })
	end },
{ var = "raiseSpectreBladeVortexBladeCount", type = "count", label = "飞刃风暴层数:", ifSkillList = {"DemonModularBladeVortexSpectre","GhostPirateBladeVortexSpectre"}, tooltip = "设置灵体使用的【飞刃风暴】层数.\n默认是 1; 最大是  5.", apply = function(val, modList, enemyModList)
		modList:NewMod("SkillData", "LIST", { key = "dpsMultiplier", value = val }, "Config", { type = "SkillId", skillId = "DemonModularBladeVortexSpectre" })
		modList:NewMod("SkillData", "LIST", { key = "dpsMultiplier", value = val }, "Config", { type = "SkillId", skillId = "GhostPirateBladeVortexSpectre" })
	end },
{ var = "raiseSpectreKaomFireBeamTotemStage", type = "count", label = "灼热射线图腾数量:", ifSkill = "KaomFireBeamTotemSpectre", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:KaomFireBeamTotemStage", "BASE", val, "Config")
	end },
	
{ label = "召唤圣物:", ifSkill = "召唤圣物" },
{ var = "summonHolyRelicEnableHolyRelicBoon", type = "check", label = "启用圣物的加成光环:", ifSkill = "召唤圣物", apply = function(val, modList, enemyModList)
		modList:NewMod("SkillData", "LIST", { key = "enable", value = true }, "Config", { type = "SkillId", skillId = "RelicTriggeredNova" })
	end },
	
{ label = "召唤闪电魔像:", ifSkill = "召唤闪电魔像" },
{ var = "summonLightningGolemEnableWrath", type = "check", label = "启用魔像【雷霆】光环:", ifSkill = "召唤闪电魔像", apply = function(val, modList, enemyModList)
		modList:NewMod("SkillData", "LIST", { key = "enable", value = true }, "Config", { type = "SkillId", skillId = "LightningGolemWrath" })
	end },
{ label = "漩涡 :", ifSkill = "漩涡 " },
{ var = "vortexCastOnFrostbolt", type = "check", label = "由【寒冰弹】触发?", ifSkill = "漩涡", apply = function(val, modList, enemyModList)
modList:NewMod("Condition:CastOnFrostbolt", "FLAG", true, "Config", { type = "SkillName", skillName = "漩涡" })
	end },
{ label = "定罪波:", ifSkill = "定罪波" },
	{ var = "waveOfConvictionExposureType", type = "list", label = "易伤负面效果类型:", ifSkill = "定罪波", list = {{val=0,label="无"},{val="Fire",label="火焰"},{val="Cold",label="冰霜"},{val="Lightning",label="闪电"}}, apply = function(val, modList, enemyModList)
		if val == "Fire" then
			modList:NewMod("Condition:WaveOfConvictionFireExposureActive", "FLAG", true, "Config")
		elseif val == "Cold" then
			modList:NewMod("Condition:WaveOfConvictionColdExposureActive", "FLAG", true, "Config")
		elseif val == "Lightning" then
			modList:NewMod("Condition:WaveOfConvictionLightningExposureActive", "FLAG", true, "Config")
		end
	end },
{ label = "寒冬宝珠:", ifSkill = "寒冬宝珠" },
{ var = "winterOrbStages", type = "count", label = "阶层:", ifSkill = "寒冬宝珠", apply = function(val, modList, enemyModList)
modList:NewMod("Multiplier:WinterOrbStage", "BASE", val, "Config", { type = "SkillName", skillName = "寒冬宝珠" })
	end },
	
	{ label = "凋零之触:", ifSkill = "凋零之触（辅）" },
{ var = "witheringTouchWitheredStackCount", type = "count", label = "# 【死亡凋零】层数:", ifSkill = "凋零之触（辅）", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:WitheringTouchWitheredStackCount", "BASE", val, "Config")
	end },

	-- Section: Map modifiers/curses
{ section = "地图词缀和玩家 Debuff", col = 2 },
{ label = "地图词缀-前缀:" },
{ var = "enemyHasPhysicalReduction", type = "list", label = "怪物物理伤害减伤:", tooltip = "'装甲的'", list = {{val=0,label="无"},{val=20,label="20% (低阶)"},{val=30,label="30% (中阶)"},{val=40,label="40% (高阶)"}}, apply = function(val, modList, enemyModList)
		enemyModList:NewMod("PhysicalDamageReduction", "BASE", val, "Config")
	end },
{ var = "enemyIsHexproof", type = "check", label = "敌人是【无咒的】?", tooltip = "'无咒的'", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Hexproof", "FLAG", true, "Config")
	end },
{ var = "enemyHasLessCurseEffectOnSelf", type = "list", label = "对怪物的诅咒总效果额外降低:", tooltip = "'魔抗的'", list = {{val=0,label="无"},{val=25,label="25% (低阶)"},{val=40,label="40% (中阶)"},{val=60,label="60% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			enemyModList:NewMod("CurseEffectOnSelf", "MORE", -val, "Config")
		end
	end },
{ var = "enemyCanAvoidPoisonBlindBleed", type = "list", label = "怪物几率免疫中毒，致盲和流血:", tooltip = "'避毒的'", list = {{val=0,label="无"},{val=25,label="25% (低阶)"},{val=45,label="45% (中阶)"},{val=65,label="65% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			enemyModList:NewMod("AvoidPoison", "BASE", val, "Config")
			enemyModList:NewMod("AvoidBleed", "BASE", val, "Config")
		end
	end },
{ var = "enemyHasResistances", type = "list", label = "增加怪物的火焰、冰霜、闪电、混沌抗性:", tooltip = "'抗性的'", list = {{val=0,label="无"},{val="LOW",label="20%/15% (低阶)"},{val="MID",label="30%/20% (中阶)"},{val="HIGH",label="40%/25% (高阶)"}}, apply = function(val, modList, enemyModList)
		local map = { ["LOW"] = {20,15}, ["MID"] = {30,20}, ["HIGH"] = {40,25} }
		if map[val] then
			enemyModList:NewMod("ElementalResist", "BASE", map[val][1], "Config")
			enemyModList:NewMod("ChaosResist", "BASE", map[val][2], "Config")
		end
	end },
{ label = "地图词缀-后缀:" },
{ var = "playerHasElementalEquilibrium", type = "check", label = "玩家有【元素之相】?", tooltip = "'平衡之'", apply = function(val, modList, enemyModList)
modList:NewMod("Keystone", "LIST", "元素之相", "Config")
	end },
{ var = "playerCannotLeech", type = "check", label = "无法偷取怪物生命和魔力?", tooltip = "'凝血之'", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("CannotLeechLifeFromSelf", "FLAG", true, "Config")
		enemyModList:NewMod("CannotLeechManaFromSelf", "FLAG", true, "Config")
	end },
{ var = "playerGainsReducedFlaskCharges", type = "list", label = "玩家获得的药剂充能降低:", tooltip = "'干枯之'", list = {{val=0,label="无"},{val=30,label="30% (低阶)"},{val=40,label="40% (中阶)"},{val=50,label="50% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			modList:NewMod("FlaskChargesGained", "INC", -val, "Config")
		end
	end },
{ var = "playerHasMinusMaxResist", type = "count", label = "-X% 玩家的抗性上限:", tooltip = "'曝露之'\n中阶: 5-8%\n高阶: 9-12%", apply = function(val, modList, enemyModList)
		if val ~= 0 then
			modList:NewMod("FireResistMax", "BASE", -val, "Config")
			modList:NewMod("ColdResistMax", "BASE", -val, "Config")
			modList:NewMod("LightningResistMax", "BASE", -val, "Config")
			modList:NewMod("ChaosResistMax", "BASE", -val, "Config")
		end
	end },
{ var = "playerHasLessAreaOfEffect", type = "list", label = "玩家技能的总范围额外缩小:", tooltip = "'短程之'", list = {{val=0,label="无"},{val=15,label="15% (低阶)"},{val=20,label="20% (中阶)"},{val=25,label="25% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			modList:NewMod("AreaOfEffect", "MORE", -val, "Config")
		end
	end },
{ var = "enemyCanAvoidStatusAilment", type = "list", label = "怪物免疫元素异常状态:", tooltip = "'	隔绝之'", list = {{val=0,label="无"},{val=30,label="30% (低阶)"},{val=60,label="60% (中阶)"},{val=90,label="90% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			enemyModList:NewMod("AvoidIgnite", "BASE", val, "Config")
			enemyModList:NewMod("AvoidShock", "BASE", val, "Config")
			enemyModList:NewMod("AvoidFreeze", "BASE", val, "Config")
		end
	end },
{ var = "enemyHasIncreasedAccuracy", type = "list", label = "玩家在躲避时很不幸/怪物命中值提高:", tooltip = "'	迟钝之'", list = {{val=0,label="None"},{val=30,label="30% (低阶)"},{val=40,label="40% (中阶)"},{val=50,label="50% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			modList:NewMod("DodgeChanceIsUnlucky", "FLAG", true, "Config")
			enemyModList:NewMod("Accuracy", "INC", val, "Config")
		end
	end },
{ var = "playerHasLessArmourandBlock", type = "list", label = "玩家的格挡率和护甲额外降低:", tooltip = "'	生锈之'", list = {{val=0,label="无"},{val="LOW",label="20%/20% (低阶)"},{val="MID",label="30%/25% (中阶)"},{val="HIGH",label="40%/30% (高阶)"}}, apply = function(val, modList, enemyModList)
		local map = { ["LOW"] = {20,20}, ["MID"] = {30,25}, ["HIGH"] = {40,30} }
		if map[val] then
			modList:NewMod("BlockChance", "INC", -map[val][1], "Config")
			modList:NewMod("Armour", "MORE", -map[val][2], "Config")
		end
	end },
{ var = "playerHasPointBlank", type = "check", label = "玩家拥有【零点射击】?", tooltip = "'冲突之'", apply = function(val, modList, enemyModList)
modList:NewMod("Keystone", "LIST", "零点射击", "Config")
	end },
{ var = "playerHasLessLifeESRecovery", type = "list", label = "玩家的生命和能量护盾总回复速度额外降低:", tooltip = "'窒息之'", list = {{val=0,label="无"},{val=20,label="20% (低阶)"},{val=40,label="40% (中阶)"},{val=60,label="60% (高阶)"}}, apply = function(val, modList, enemyModList)
		if val ~= 0 then
			modList:NewMod("LifeRecovery", "MORE", -val, "Config")
			modList:NewMod("EnergyShieldRecovery", "MORE", -val, "Config")
		end
	end },
{ var = "playerCannotRegenLifeManaEnergyShield", type = "check", label = "玩家无法回复生命，魔力和能量护盾?", tooltip = "'瘀血之'", apply = function(val, modList, enemyModList)
		modList:NewMod("NoLifeRegen", "FLAG", true, "Config")
		modList:NewMod("NoEnergyShieldRegen", "FLAG", true, "Config")
		modList:NewMod("NoManaRegen", "FLAG", true, "Config")
	end },
{ var = "enemyTakesReducedExtraCritDamage", type = "count", label = "怪物受到的暴击伤害降低:", tooltip = "'	坚韧之'\n低阶: 25-30%\n中阶: 31-35%\n高阶: 36-40%" , apply = function(val, modList, enemyModList)
		if val ~= 0 then
			enemyModList:NewMod("SelfCritMultiplier", "INC", -val, "Config")
		end
	end },
{ var = "multiplierSextant", type = "count", label = "# 个六分仪影响该地区", ifMult = "Sextant", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:Sextant", "BASE", m_min(val, 5), "Config")
	end },
{ label = "玩家被诅咒:" },
{ var = "playerCursedWithAssassinsMark", type = "count", label = "暗影印记:", tooltip = "设置玩家身上的【暗影印记】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "AssassinsMark", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithConductivity", type = "count", label = "导电:", tooltip = "设置玩家身上的【导电】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Conductivity", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithDespair", type = "count", ifVer = "3_0", label = "绝望:", tooltip = "设置玩家身上的【绝望】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Despair", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithElementalWeakness", type = "count", label = "元素要害:", tooltip = "设置玩家身上的【元素要害】诅咒等级.\n中阶地图词缀的等级是 10.\n高阶地图词缀的等级是 15.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "ElementalWeakness", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithEnfeeble", type = "count", label = "衰弱:", tooltip = "设置玩家身上的【衰弱】诅咒等级.\n中阶地图词缀的等级是 10.\n高阶地图词缀的等级是 15.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Enfeeble", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithFlammability", type = "count", label = "易燃:", tooltip = "设置玩家身上的【易燃】诅咒等级..", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Flammability", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithFrostbite", type = "count", label = "冻伤:", tooltip = "设置玩家身上的【冻伤】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Frostbite", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithPoachersMark", type = "count", label = "盗猎者印记:", tooltip = "设置玩家身上的【盗猎者印记】诅咒等级", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "PoachersMark", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithProjectileWeakness", type = "count", label = "投射物要害:", tooltip = "设置玩家身上的【投射物要害】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "ProjectileWeakness", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithPunishment", type = "count", label = "惩戒:", tooltip = "设置玩家身上的【惩戒】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Punishment", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithTemporalChains", type = "count", label = "时空锁链:", tooltip = "设置玩家身上的【时空锁链】诅咒等级.\n中阶地图词缀的等级是 10.\n高阶地图词缀的等级是 15.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "TemporalChains", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithVulnerability", type = "count", label = "脆弱:", tooltip = "设置玩家身上的【脆弱】诅咒等级.\n中阶地图词缀的等级是 10.\n高阶地图词缀的等级是 15..", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "Vulnerability", level = val, applyToPlayer = true })
	end },
{ var = "playerCursedWithWarlordsMark", type = "count", label = "督军印记:", tooltip = "设置玩家身上的【督军印记】诅咒等级.", apply = function(val, modList, enemyModList)
		modList:NewMod("ExtraCurse", "LIST", { skillId = "WarlordsMark", level = val, applyToPlayer = true })
	end },

	-- Section: Combat options
{ section = "战斗状态配置", col = 1 },
{ var = "usePowerCharges", type = "check", label = "你是否有暴击球?", apply = function(val, modList, enemyModList)
		modList:NewMod("UsePowerCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "overridePowerCharges", type = "count", label = "暴击球数量(如果没达到最大值):", ifOption = "usePowerCharges", apply = function(val, modList, enemyModList)
		modList:NewMod("PowerCharges", "OVERRIDE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "useFrenzyCharges", type = "check", label = "你是否有狂怒球?", apply = function(val, modList, enemyModList)
		modList:NewMod("UseFrenzyCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "overrideFrenzyCharges", type = "count", label = "狂怒球数量(如果没达到最大值):", ifOption = "useFrenzyCharges", apply = function(val, modList, enemyModList)
		modList:NewMod("FrenzyCharges", "OVERRIDE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "useEnduranceCharges", type = "check", label = "你是否有耐力球?", apply = function(val, modList, enemyModList)
		modList:NewMod("UseEnduranceCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "overrideEnduranceCharges", type = "count", label = "耐力球数量(如果没达到最大值):", ifOption = "useEnduranceCharges", apply = function(val, modList, enemyModList)
		modList:NewMod("EnduranceCharges", "OVERRIDE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "useSiphoningCharges", type = "check", label = "你是否有轮回球?", ifMult = "SiphoningCharge", apply = function(val, modList, enemyModList)
		modList:NewMod("UseSiphoningCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "overrideSiphoningCharges", type = "count", label = "轮回球数量(如果没达到最大值):", ifOption = "useSiphoningCharges", apply = function(val, modList, enemyModList)
		modList:NewMod("SiphoningCharges", "OVERRIDE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "minionsUsePowerCharges", type = "check", label = "你的召唤生物有暴击球?", ifFlag = "haveMinion", apply = function(val, modList, enemyModList)
		modList:NewMod("MinionModifier", "LIST", { mod = modLib.createMod("UsePowerCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" }) }, "Config")
	end },
{ var = "minionsUseFrenzyCharges", type = "check", label = "你的召唤生物有狂怒球?", ifFlag = "haveMinion", apply = function(val, modList, enemyModList)
		modList:NewMod("MinionModifier", "LIST", { mod = modLib.createMod("UseFrenzyCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" }) }, "Config")
	end },
{ var = "minionsUseEnduranceCharges", type = "check", label = "你的召唤生物有耐力球?", ifFlag = "haveMinion", apply = function(val, modList, enemyModList)
		modList:NewMod("MinionModifier", "LIST", { mod = modLib.createMod("UseEnduranceCharges", "FLAG", true, "Config", { type = "Condition", var = "Combat" }) }, "Config")
	end },
{ var = "conditionFocused", type = "check", label = "你处于专注期间?", ifCond = "Focused", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Focused", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionOnChannelling", type = "check", label = "你是否处于持续吟唱状态?", ifCond = "OnChannelling", tooltip = "当你处于持续吟唱状态时的词缀生效", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:OnChannelling", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },	
{ var = "buffOnslaught", type = "check", label = "你是否处于【猛攻】状态?", tooltip = "当你处于【猛攻】状态时干啥干啥的词缀生效,\n同时也会启用【猛攻】buff本身:提高 20% 移动、攻击和施法速度", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Onslaught", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffUnholyMight", type = "check", label = "你是否有【不洁之力】?", tooltip = "这个会启用【不洁之力】buff (额外混沌伤害，其数值等同于物理伤害的30%)", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UnholyMight", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffPhasing", type = "check", label = "你是否处于【迷踪】状态?", ifCond = "Phasing", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Phasing", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffFortify", type = "check", label = "你是否处于【护体】状态?", ifCond = "Fortify", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Fortify", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffTailwind", type = "check", label = "你是否有【提速尾流】?", tooltip = "当你处于【提速尾流】状态时干啥干啥的词缀生效,\n同时也会启用【提速尾流】buff本身. (加速 10%)", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Tailwind", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffAdrenaline", type = "check", label = "你是否处于【肾上腺素】状态?", tooltip = "这个会启用【肾上腺素】buff:\n提高 100% 伤害\n提高 25% 攻击、施法和移动速度\n10%额外物理伤害减伤", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Adrenaline", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffDivinity", type = "check", label = "你处于【神圣】状态?",ifCond = "Divinity", tooltip = "获得【神性】Buff:\n火焰、冰霜、闪电总伤害额外提高 50%\n承受的火焰、冰霜、闪电总伤害额外降低 20% ", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Divinity", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
	
{ var = "multiplierRage", type = "count", label = "怒火层数:", ifCond = "CanGainRage", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:Rage", "BASE", val, "Config", { type = "IgnoreCond" }, { type = "Condition", var = "Combat" }, { type = "Condition", var = "CanGainRage" })
	end },
{ var = "conditionLeeching", type = "check", label = "你正在偷取?", ifCond = "Leeching", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Leeching", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
	
 
{ var = "conditionLeechingLife", type = "check", label = "你正在偷取生命?", ifCond = "LeechingLife", implyCond = "Leeching", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:LeechingLife", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:Leeching", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionLeechingEnergyShield", type = "check", label = "你正在偷取能量护盾?", ifCond = "LeechingEnergyShield", implyCond = "Leeching", apply = function(val, modList, enemyModList)
modList:NewMod("Condition:LeechingEnergyShield", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
modList:NewMod("Condition:Leeching", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionLeechingMana", type = "check", label = "你正在偷取魔力?", ifCond = "LeechingMana", implyCond = "Leeching", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:LeechingMana", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:Leeching", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
end },
	
{ var = "conditionUsingFlask", type = "check", label = "你至少有1瓶药剂在生效?", ifCond = "UsingFlask", tooltip = "如果你勾选了药剂装备，那么这个自动生效,\n你也可以在这里勾选来启用.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsingFlask", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionHaveTotem", type = "check", label = "你是否有图腾?", ifCond = "HaveTotem", tooltip = "如果你的主动技能是图腾，那么这个自动会生效,\n否则你需要手动勾选这个.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:HaveTotem", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionSummonedTotemRecently", type = "check", label = "近期有召唤图腾?", ifCond = "SummonedTotemRecently", tooltip = "如果选择的技能是图腾技能，那么这个自动会生效,\n否则你需要手动勾选这个.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:SummonedTotemRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		
	end },
	
	{ var = "multiplierNearbyAlly", type = "count", label = "# of Nearby Allies", ifMult = "NearbyAlly", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:NearbyAlly", "BASE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionOnConsecratedGround", type = "check", label = "你正在【奉献地面】上?", tooltip = "当你处于【奉献地面】状态时干啥干啥的词缀生效,\n同时也会启用【奉献地面】buff本身:6%每秒生命回复.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:OnConsecratedGround", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionOnBurningGround", type = "check", label = "你正在【燃烧地面】上?", ifCond = "OnBurningGround", implyCond = "Burning", tooltip = "这也意味着你被燃烧中.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:OnBurningGround", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:Burning", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionOnChilledGround", type = "check", label = "你正在【冰缓地面】上?", ifCond = "OnChilledGround", implyCond = "Chilled", tooltip = "这也意味着你被冰缓.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:OnChilledGround", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:Chilled", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionOnShockedGround", type = "check", label = "你正在【感电地面】上?", ifCond = "OnShockedGround", implyCond = "Shocked", tooltip = "这也意味着你被感电.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:OnShockedGround", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:Shocked", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBurning", type = "check", label = "你被燃烧?", ifCond = "Burning", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Burning", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionIgnited", type = "check", label = "你被点燃?", ifCond = "Ignited", implyCond = "Burning", tooltip = "这也意味着你被燃烧.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Ignited", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionChilled", type = "check", label = "你被冰缓?", ifCond = "Chilled", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Chilled", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionFrozen", type = "check", label = "你被冰冻?", ifCond = "Frozen", implyCond = "Chilled", tooltip = "在也意味着你被冰缓.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Frozen", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionShocked", type = "check", label = "你被感电?", ifCond = "Shocked", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Shocked", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBleeding", type = "check", label = "你正在流血?", ifCond = "Bleeding", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Bleeding", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionPoisoned", type = "check", label = "你中毒了?", ifCond = "Poisoned", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:Poisoned", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierPoisonOnSelf", type = "count", label = "你身上的中毒层数:", ifMult = "PoisonStack", implyCond = "Poisoned", tooltip = "这也意味着你中毒了.", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:PoisonStack", "BASE", val, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionOnlyOneNearbyEnemy", type = "check", label = "附近只有一个怪物?", ifCond = "OnlyOneNearbyEnemy", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:OnlyOneNearbyEnemy", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionHitRecently", type = "check", label = "你近期有击中过敌人?", ifCond = "HitRecently", tooltip = "如果你的主要技能是自主施放，那么自动认为你近期有击中过\n若有必要，你可以强制修改它.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:HitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionCritRecently", type = "check", label = "你近期有造成暴击?", ifCond = "CritRecently", implyCond = "SkillCritRecently", tooltip = "这也意味着你的技能近期有造成暴击.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:CritRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:SkillCritRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
	{ var = "conditionSkillCritRecently", type = "check", label = "Have your Skills Crit Recently?", ifCond = "SkillCritRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:SkillCritRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionNonCritRecently", type = "check", label = "你近期有造成非暴击?", ifCond = "NonCritRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:NonCritRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionKilledRecently", type = "check", label = "你近期有击杀?", ifCond = "KilledRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:KilledRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierKilledRecently", type = "count", label = "近期击杀的敌人数量", ifMult = "EnemyKilledRecently", implyCond = "KilledRecently", tooltip = "这也意味着你近期有击杀", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:EnemyKilledRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:KilledRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionTotemsKilledRecently", type = "check", label = "你的图腾近期有击杀?", ifCond = "TotemsKilledRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:TotemsKilledRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierTotemsKilledRecently", type = "count", label = "近期图腾的击杀数", ifMult = "EnemyKilledByTotemsRecently", implyCond = "TotemsKilledRecently", tooltip = "这也意味着你的图腾近期有击杀.", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:EnemyKilledByTotemsRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:TotemsKilledRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionMinionsKilledRecently", type = "check", label = "你的召唤生物近期有击杀?", ifCond = "MinionsKilledRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:MinionsKilledRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierMinionsKilledRecently", type = "count", label = "召唤生物近期击杀数", ifMult = "EnemyKilledByMinionsRecently", implyCond = "MinionsKilledRecently", tooltip = "这也意味着你的召唤生物近期有击杀.", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:EnemyKilledByMinionsRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:MinionsKilledRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionKilledAffectedByDoT", type = "check", label = "近期有击杀被你的持续伤害影响的怪物?", ifCond = "KilledAffectedByDotRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:KilledAffectedByDotRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierShockedEnemyKilledRecently", type = "count", label = "近期击杀感电怪物数量:", ifMult = "ShockedEnemyKilledRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:ShockedEnemyKilledRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionFrozenEnemyRecently", type = "check", label = "近期有冰冻过怪物?", ifCond = "FrozenEnemyRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:FrozenEnemyRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionShatteredEnemyRecently", type = "check", label = "近期有粉碎过怪物?", ifCond = "ShatteredEnemyRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:ShatteredEnemyRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionIgnitedEnemyRecently", type = "check", label = "近期你有点燃过怪物?", ifCond = "IgnitedEnemyRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:IgnitedEnemyRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionShockedEnemyRecently", type = "check", label = "近期有感电过怪物?", ifCond = "ShockedEnemyRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:ShockedEnemyRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierPoisonAppliedRecently", type = "count", label = "造成的中毒层数:", ifMult = "PoisonAppliedRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:PoisonAppliedRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBeenHitRecently", type = "check", label = "近期内你有被击中?", ifCond = "BeenHitRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BeenHitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBeenCritRecently", type = "check", label = "你近期有承受过暴击?", ifCond = "BeenCritRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BeenCritRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBeenSavageHitRecently", type = "check", label = "近期你有承受过【残暴打击】?", ifCond = "BeenSavageHitRecently", implyCond = "BeenHitRecently", tooltip = "这也意味着近期内你被击中过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BeenSavageHitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BeenHitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionHitByFireDamageRecently", type = "check", label = "近期内被火焰伤害击中?", ifCond = "HitByFireDamageRecently", implyCond = "BeenHitRecently", tooltip = "这也意味着近期内你被击中过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:HitByFireDamageRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BeenHitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionHitByColdDamageRecently", type = "check", label = "近期内被冰霜伤害击中?", ifCond = "HitByColdDamageRecently", implyCond = "BeenHitRecently", tooltip = "这也意味着近期内你被击中过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:HitByColdDamageRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BeenHitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionHitByLightningDamageRecently", type = "check", label = "近期内被闪电伤害击中?", ifCond = "HitByLightningDamageRecently", implyCond = "BeenHitRecently", tooltip = "这也意味着近期内你被击中过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:HitByLightningDamageRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BeenHitRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBlockedRecently", type = "check", label = "近期内有过格挡?", ifCond = "BlockedRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BlockedRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBlockedAttackRecently", type = "check", label = "近期内成功格挡过攻击?", ifCond = "BlockedAttackRecently", implyCond = "BlockedRecently", tooltip = "这也意味着近期内你格挡过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BlockedAttackRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BlockedRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBlockedSpellRecently", type = "check", label = "近期内成功格挡过法术?", ifCond = "BlockedSpellRecently", implyCond = "BlockedRecently", tooltip = "这也意味着近期内你格挡过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BlockedSpellRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BlockedRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionEnergyShieldRechargeRecently", type = "check", label = "近期内能量护盾开始回复?", ifCond = "EnergyShieldRechargeRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:EnergyShieldRechargeRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffPendulum", type = "check", ifVer = "2_6", label = "【毁灭光炮塔】升华天赋激活?", ifNode = 57197, apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:PendulumOfDestruction", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffPendulum", type = "list", ifVer = "3_0", label = "【毁灭光炮塔】升华天赋激活?", ifNode = 57197, list = {{val=0,label="不起作用"},{val="AREA",label="范围效果"},{val="DAMAGE",label="元素伤害"}}, apply = function(val, modList, enemyModList)
		if val == "AREA" then
			modList:NewMod("Condition:PendulumOfDestructionAreaOfEffect", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		elseif val == "DAMAGE" then
			modList:NewMod("Condition:PendulumOfDestructionElementalDamage", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		end
	end },
{ var = "buffConflux", type = "list", label = "汇流:", ifNode = 51391, list = {{val=0,label="不起作用"},{val="CHILLING",label="冰缓"},{val="SHOCKING",label="感电"},{val="IGNITING",label="点燃"},{val="ALL",label="冰缓，感电和点燃"}}, apply = function(val, modList, enemyModList)
		if val == "CHILLING" or val == "ALL" then
			modList:NewMod("Condition:ChillingConflux", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		end
		if val == "SHOCKING" or val == "ALL" then
			modList:NewMod("Condition:ShockingConflux", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		end
		if val == "IGNITING" or val == "ALL" then
			modList:NewMod("Condition:IgnitingConflux", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		end
	end },
{ var = "buffBastionOfHope", type = "check", label = "【希望壁垒】升华天赋激活?", ifNode = 39728, apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BastionOfHopeActive", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "buffHerEmbrace", type = "check", label = "受到【她的拥抱】影响?", ifCond = "HerEmbrace", tooltip = "【鬼弑·查兰之剑】的选项.", apply = function(val, modList, enemyModList)
		modList:NewMod("HerEmbrace", "FLAG", true, "Config", { type = "Condition", var = "Combat" }, { type = "Condition", var = "CanGainHerEmbrace" })
	end },
{ var = "conditionUsedSkillRecently", type = "check", label = "近期有使用过技能?", ifCond = "UsedSkillRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierSkillUsedRecently", type = "count", label = "近期使用过的技能数量:", ifMult = "SkillUsedRecently", implyCond = "UsedSkillRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:SkillUsedRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionAttackedRecently", type = "check", label = "你近期有攻击?", ifCond = "AttackedRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能.\n如果你的主要技能是攻击技能，那么自动默认你近期有过攻击,\n如果必要，可以在这里变更.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:AttackedRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionCastSpellRecently", type = "check", label = "你近期有施法?", ifCond = "CastSpellRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能.\n如果你的主要技能是法术技能，那么自动默认你近期有过施法,\n如果必要，可以在这里变更.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:CastSpellRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedFireSkillRecently", type = "check", label = "近期内你有使用过火焰技能?", ifCond = "UsedFireSkillRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedFireSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedColdSkillRecently", type = "check", label = "近期内你有使用过冰霜技能?", ifCond = "UsedColdSkillRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedColdSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedMinionSkillRecently", type = "check", label = "近期内你有使用过召唤生物技能?", ifCond = "UsedMinionSkillRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能\n如果你的主要技能是召唤生物技能，那么自动默认你近期内有使用过召唤生物技能,\n如果必要，可以在这里变更.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedMinionSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedMovementSkillRecently", type = "check", label = "近期内你有使用过移动技能?", ifCond = "UsedMovementSkillRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能\n如果你的主要技能是移动技能，那么自动默认你近期内有使用过移动技能,\n如果必要，可以在这里变更.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedMovementSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedVaalSkillRecently", type = "check", label = "近期内你有使用过瓦尔技能?", ifCond = "UsedVaalSkillRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能\n如果你的主要技能是瓦尔技能，那么自动默认你近期内有使用过瓦尔技能,\n如果必要，可以在这里变更.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedVaalSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionSoulGainPrevention", type = "check", label = "【阻灵术】生效期间?", ifCond = "SoulGainPrevention", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:SoulGainPrevention", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedWarcryRecently", type = "check", label = "近期内你有使用过战吼?", ifCond = "UsedWarcryRecently", implyCond = "UsedSkillRecently", tooltip = "这也意味着你近期有使用过技能.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedWarcryRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierMineDetonatedRecently", type = "count", label = "近期引爆的地雷数量:", ifMult = "MineDetonatedRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:MineDetonatedRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierTrapTriggeredRecently", type = "count", label = "近期触发的陷阱数量:", ifMult = "TrapTriggeredRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:TrapTriggeredRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionConsumedCorpseRecently", type = "check", label = "近期消耗过灵柩?", ifCond = "ConsumedCorpseRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:ConsumedCorpseRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "multiplierCorpseConsumedRecently", type = "count", label = "近期消耗的灵柩数量:", ifMult = "CorpseConsumedRecently", implyCond = "ConsumedCorpseRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:CorpseConsumedRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:ConsumedCorpseRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionTauntedEnemyRecently", type = "check", label = "近期嘲讽过怪物?", ifCond = "TauntedEnemyRecently", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:TauntedEnemyRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedFireSkillInPast10Sec", type = "check", ifVer = "2_6", label = "过去10秒内有使用过火焰技能?", ifNode = 61259, apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedFireSkillInPast10Sec", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedColdSkillInPast10Sec", type = "check", ifVer = "2_6", label = "过去10秒内有使用过冰霜技能?", ifNode = 61259, apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedColdSkillInPast10Sec", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionUsedLightningSkillInPast10Sec", type = "check", ifVer = "2_6", label = "过去10秒内有使用过闪电技能?", ifNode = 61259, apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:UsedLightningSkillInPast10Sec", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBlockedHitFromUniqueEnemyRecently", type = "check", ifVer = "2_6", label = "近期格挡过传奇怪物的击中?", ifNode = 63490, implyCond = "BlockedRecently", tooltip = "这也意味着你近期格挡过.", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BlockedHitFromUniqueEnemyRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:BlockedRecently", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionBlockedHitFromUniqueEnemyInPast10Sec", type = "check", ifVer = "3_0", label = "过去10秒内有成功格挡过传奇敌人的击中?", ifNode = 63490, apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:BlockedHitFromUniqueEnemyInPast10Sec", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
{ var = "conditionCriticalStrike", type = "check", label = "解析【暴击时】词缀?", ifCond = "CriticalStrike", tooltip = "用于判官升华：无视元素抗性。",apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:CriticalStrike", "FLAG", true, "Config", { type = "Condition", var = "Combat" })
	end },
		

	-- Section: Effective DPS options
{ section = "为了计算有效 DPS", col = 1 },
{ var = "critChanceLucky", type = "check", label = "你的暴击率是幸运的?", apply = function(val, modList, enemyModList)
		modList:NewMod("CritChanceLucky", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
	

	
{ var = "skillChainCount", type = "count", label = "连锁过的次数:", ifFlag = "chaining", apply = function(val, modList, enemyModList)
		modList:NewMod("ChainCount", "BASE", val, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "projectileDistance", type = "count", label = "投射物飞行距离:", ifFlag = "projectile" },
{ var = "conditionAtCloseRange", type = "check", label = "怪物在近距离范围内?", ifCond = "AtCloseRange", apply = function(val, modList, enemyModList)
		modList:NewMod("Condition:AtCloseRange", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyMoving", type = "check", label = "敌人在移动中?", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Moving", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },

{ var = "conditionEnemyOnConsecratedGround", type = "check", label = "敌人在奉献地面上?", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:OnConsecratedGround", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyFullLife", type = "check", label = "敌人满血状态?", ifEnemyCond = "FullLife", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:FullLife", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyLowLife", type = "check", label = "敌人低血状态?", ifEnemyCond = "LowLife", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:LowLife", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyCursed", type = "check", label = "敌人被诅咒?", ifEnemyCond = "Cursed", tooltip = "如果至少有一个诅咒技能激活，那么默认敌人被诅咒,\nn如果必要，可以在这里变更.", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Cursed", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyBleeding", type = "check", label = "敌人在流血?", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Bleeding", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyPoisoned", type = "check", label = "敌人被中毒?", ifEnemyCond = "Poisoned", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Poisoned", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "multiplierPoisonOnEnemy", type = "count", label = "敌人身上的中毒层数:", implyCond = "Poisoned", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Multiplier:PoisonStack", "BASE", val, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyMaimed", type = "check", label = "敌人被瘫痪?", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Maimed", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyHindered", type = "check", label = "敌人被阻碍?", ifEnemyCond = "Hindered", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Hindered", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyBlinded", type = "check", label = "敌人被致盲?", tooltip = "可以让“对致盲敌人什么什么”的词缀起作用\n同时减少敌人的命中率，增加你的闪避率.", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Blinded", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyTaunted", type = "check", label = "敌人被嘲讽?", ifEnemyCond = "Taunted", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Taunted", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyBurning", type = "check", label = "敌人被燃烧", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Burning", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyIgnited", type = "check", label = "敌人被点燃?", implyCond = "Burning", tooltip = "这也意味着敌人被燃烧.", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Ignited", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyChilled", type = "check", label = "敌人被冰缓?", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Chilled", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyFrozen", type = "check", label = "敌人被冰冻?", implyCond = "Chilled", tooltip = "这也意味着敌人被冰冻.", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Frozen", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyShocked", type = "check", label = "敌人被感电?", tooltip = "启用“对感电敌人什么什么”的词缀,\n这也会让敌人感电承受额外伤害.", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:Shocked", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "multiplierFreezeShockIgniteOnEnemy", type = "count", label = "敌人身上的点燃感电冰缓数量:", ifMult = "FreezeShockIgniteOnEnemy", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:FreezeShockIgniteOnEnemy", "BASE", val, "Config", { type = "Condition", var = "Effective" })
	end },
{ var = "conditionEnemyIntimidated", type = "check", ifVer = "2_6", label = "敌人被恐吓?", tooltip = "这个会附加词缀:\n提高 10% 敌人承受的伤害", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("DamageTaken", "INC", 10, "Intimidate")
	end },
{ var = "conditionEnemyIntimidated", type = "check", ifVer = "3_0", label = "敌人被恐吓?", tooltip = "这个会附加词缀:\n提高 10% 敌人承受的攻击伤害", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("DamageTaken", "INC", 10, "Intimidate", ModFlag.Attack)
	end },
{ var = "conditionEnemyCoveredInAsh", type = "check", label = "敌人【灰烬缠身】?", tooltip = "这个会附加词缀:\n额外降低敌人 20% 移动速度\n提高 20% 敌人承受的火焰伤害", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("FireDamageTaken", "INC", 20, "Ash")
	end },
{ var = "conditionEnemyRareOrUnique", type = "check", label = "敌人是传奇或稀有怪物?", ifEnemyCond  = "EnemyRareOrUnique", tooltip = "如果boss类型选项选择的是boss，那么这里会默认为传奇或稀有怪物.", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:RareOrUnique", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
	end },
 
{ var = "enemyIsBoss", type = "list", ifVer = "3_0", label = "敌人是boss?", tooltip = "普通boss有以下词缀：\n额外降低 33% 诅咒效果\n+30% 火焰、冰霜、闪电抗性\n+15% 混沌抗性\n\n塑界者/塑界守卫有以下词缀：\n额外降低 66% 诅咒效果\n+40% 火焰、冰霜、闪电抗性\n+25% 混沌抗性", list = {{val="NONE",label="不是"},{val=true,label="普通boss"},{val="SHAPER",label="塑界者/塑界守卫"}}, apply = function(val, modList, enemyModList)
		if val == true then
			enemyModList:NewMod("Condition:RareOrUnique", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
			enemyModList:NewMod("CurseEffectOnSelf", "MORE", -33, "Boss")
			enemyModList:NewMod("ElementalResist", "BASE", 30, "Boss")
			enemyModList:NewMod("ChaosResist", "BASE", 15, "Boss")
		elseif val == "SHAPER" then
			enemyModList:NewMod("Condition:RareOrUnique", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
			enemyModList:NewMod("CurseEffectOnSelf", "MORE", -66, "Boss")
			enemyModList:NewMod("ElementalResist", "BASE", 40, "Boss")
			enemyModList:NewMod("ChaosResist", "BASE", 25, "Boss")
		end
	end },
{ var = "enemyPhysicalReduction", type = "integer", label = "敌人物理伤害减伤:", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("PhysicalDamageReduction", "BASE", val, "Config")
	end },
{ var = "enemyFireResist", type = "integer", label = "敌人火焰抗性:", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("FireResist", "BASE", val, "Config")
	end },
{ var = "enemyColdResist", type = "integer", label = "敌人冰霜抗性:", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("ColdResist", "BASE", val, "Config")
	end },
{ var = "enemyLightningResist", type = "integer", label = "敌人闪电抗性:", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("LightningResist", "BASE", val, "Config")
	end },
{ var = "enemyChaosResist", type = "integer", label = "敌人混沌抗性:", apply = function(val, modList, enemyModList)
		enemyModList:NewMod("ChaosResist", "BASE", val, "Config")
	end },
{ var = "enemyConditionHitByFireDamage", type = "check", label = "敌人被火焰伤害击中?", ifNode = 39085, apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:HitByFireDamage", "FLAG", true, "Config")
	end },
{ var = "enemyConditionHitByColdDamage", type = "check", label = "敌人被冰霜伤害击中?", ifNode = 39085, apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:HitByColdDamage", "FLAG", true, "Config")
	end },
{ var = "enemyConditionHitByLightningDamage", type = "check", label = "敌人被闪电伤害击中?", ifNode = 39085, apply = function(val, modList, enemyModList)
		enemyModList:NewMod("Condition:HitByLightningDamage", "FLAG", true, "Config")
	end },
{ var = "EEIgnoreHitDamage", type = "check", label = "忽略技能击中伤害?", ifNode = 39085, tooltip = "这个选项是防止【元素之相】受到你的主要技能的伤害类型的影响." },


{ var = "multiplierManaSpentRecently", type = "count", label = "# 近期消耗的总魔力:", ifMult = "ManaSpentRecently", implyCond = "UsedSkillRecently", tooltip = "这个选项只用于【靛蓝之冠 灵主之环】.\n同时也意味着你近期使用过技能.", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:ManaUsedRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })			
		modList:NewMod("Multiplier:ManaSpentRecently", "BASE", val, "Config", { type = "Condition", var = "Combat" })
		modList:NewMod("Condition:UsedSkillRecently", "FLAG", val >= 1, "Config", { type = "Condition", var = "Combat" })
end },
{ var = "raiseSpectreEnableSummonedUrsaRallyingCry", type = "check", label = "启用【召唤之爪】的激励战吼:", ifSkill = "DropBearSummonedRallyingCry", apply = function(val, modList, enemyModList)
		modList:NewMod("SkillData", "LIST", { key = "enable", value = true }, "Config", { type = "SkillId", skillId = "DropBearSummonedRallyingCry" })
	end },
{ label = "召唤毒蛛:", ifSkill = "召唤毒蛛" },
{ var = "raiseSpidersSpiderCount", type = "count", label = "蜘蛛数量:", ifSkill = "召唤毒蛛", apply = function(val, modList, enemyModList)
		modList:NewMod("Multiplier:RaisedSpider", "BASE", m_min(val, 20), "Config")
	end },
{ var = "physicsRandomElement", type = "list", ifVer = "3_0", label = "随机元素想要随机哪一个？", tooltip = "【注意】随机元素在游戏内是随机计算的，\n这里允许你选择其一种或不生效，\n所以模拟这个伤害和真实情况是会有差距的，\n新手请勿选择.", list = {{val="NONE",label="不生效"},{val="Fire",label="随机到火焰"},{val="Cold",label="随机到冰霜"},{val="Lightning",label="随机到闪电"}}, apply = function(val, modList, enemyModList)
		if val == "Fire" then
			modList:NewMod("Condition:PhysicsRandomElementFire", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
			 
		elseif val == "Cold" then
			 	modList:NewMod("Condition:PhysicsRandomElementCold", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
			
		 
		elseif val == "Lightning" then
			 	modList:NewMod("Condition:PhysicsRandomElementLightning", "FLAG", true, "Config", { type = "Condition", var = "Effective" })
			
		end
	end },
	 

}




