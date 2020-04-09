-- Path of Building
--
-- Module: Data
-- Contains static data used by other modules.
--
--local launch = ...

LoadModule("Data/Global")

local typeLabel = {
	{en="Amulet",cn="护身符"},
	{en="Flask: Life",cn="药剂: 生命"},
{en="Jewel",cn="珠宝"},
{en="Body Armour: Armour/Evasion/Energy Shield",cn="胸甲: 护甲/闪避/能量护盾"},
{en="Quiver",cn="箭袋"},
{en="Flask: Hybrid",cn="药剂: 复合"},
{en="Boots: Armour/Energy Shield",cn="鞋子: 护甲/能量护盾"},
{en="Helmet: Evasion/Energy Shield",cn="头盔: 闪避/能量护盾"},
{en="Shield: Armour/Energy Shield",cn="盾牌: 护甲/能量护盾"},
{en="Gloves: Armour/Energy Shield",cn="手套: 护甲/能量护盾"},
{en="Amulet: Talisman",cn="护身符: 魔符"},
{en="Belt",cn="腰带"},
{en="Shield: Energy Shield",cn="盾牌: 能量护盾"},
{en="Shield: Armour",cn="盾牌: 护甲"},
{en="Wand",cn="法杖"},
{en="Boots: Armour",cn="鞋子: 护甲"},
{en="Gloves: Evasion",cn="手套: 闪避"},
{en="Shield: Evasion",cn="盾牌: 闪避"},
{en="Gloves: Armour",cn="手套: 护甲"},
{en="Two Handed Axe",cn="双手斧"},
{en="Claw",cn="爪"},
{en="Flask: Utility",cn="药剂: 功能"},
{en="Boots: Evasion/Energy Shield",cn="鞋子: 闪避/能量护盾"},
{en="Gloves: Armour/Evasion",cn="手套: 护甲/闪避"},
{en="Helmet: Armour/Evasion",cn="头盔: 护甲/闪避"},
{en="Gloves: Evasion/Energy Shield",cn="手套: 闪避/能量护盾"},
{en="One Handed Axe",cn="单手斧"},
{en="Flask: Mana",cn="药剂: 魔力"},
{en="Boots: Evasion",cn="鞋子: 闪避"},
{en="Ring",cn="戒指"},
{en="Helmet: Armour/Energy Shield",cn="头盔: 护甲/能量护盾"},
{en="Helmet: Evasion",cn="头盔: 闪避"},
{en="Body Armour: Armour/Evasion",cn="胸甲: 护甲/闪避"},
{en="Body Armour: Energy Shield",cn="胸甲: 能量护盾"},
{en="One Handed Mace",cn="单手锤"},
{en="Shield: Armour/Evasion",cn="盾牌: 护甲/闪避"},
{en="Two Handed Mace",cn="双手锤"},
{en="Shield: Evasion/Energy Shield",cn="盾牌: 闪避/能量护盾"},
{en="Helmet: Energy Shield",cn="头盔: 能量护盾"},
{en="Body Armour: Armour",cn="胸甲: 护甲"},
{en="Bow",cn="弓"},
{en="Two Handed Sword",cn="双手剑"},
{en="Boots: Energy Shield",cn="鞋子: 能量护盾"},
{en="Body Armour: Armour/Energy Shield",cn="胸甲: 护甲/能量护盾"},
{en="Staff",cn="长杖"},
{en="Jewel: Abyss",cn="珠宝: 深渊"},
{en="Jewel: Cluster",cn="珠宝: 星团"},
{en="Dagger",cn="匕首"},
{en="Sceptre",cn="短杖"},
{en="Helmet: Armour",cn="头盔: 护甲"},
{en="Body Armour: Evasion/Energy Shield",cn="胸甲: 闪避/能量护盾"},
{en="Thrusting One Handed Sword",cn="细剑"},
{en="Body Armour: Evasion",cn="胸甲: 闪避"},
{en="One Handed Sword",cn="单手剑"},
{en="Boots: Armour/Evasion",cn="鞋子: 护甲/闪避"},
{en="Gloves: Energy Shield",cn="手套: 能量护盾"},
	
}

-- 一些特殊技能有特殊等级
local skillNameAndLevel = {

	--{name="血肉与岩石",grantedEffectId="BloodSandArmour",level=6},	
	{name="血与沙",grantedEffectId="BloodSandStance",level=6},
	{name="启蒙",grantedEffectId="SupportAdditionalXP",level=3},
	{name="烙印召回",grantedEffectId="SigilRecall",level=6},
}

local skillTypes = {
	"act_str",
	"act_dex",
	"act_int",
	"other",
	"glove",
	"minion",
	"spectre",
	"sup_str",
	"sup_dex",
	"sup_int",
}
local itemTypes = {
	"axe",
	"bow",
	"claw",
	"dagger",
	"mace",
	"staff",
	"sword",
	"wand",
	"helmet",
	"body",
	"gloves",
	"boots",
	"shield",
	"quiver",
	"amulet",
	"ring",
	"belt",
	"jewel",
	"flask",
}

local function makeSkillMod(modName, modType, modVal, flags, keywordFlags, ...)
	return {
		name = modName,
		type = modType,
		value = modVal,
		flags = flags or 0,
		keywordFlags = keywordFlags or 0,
		...
	}
end
local function makeFlagMod(modName, ...)
	return makeSkillMod(modName, "FLAG", true, 0, 0, ...)
end
local function makeSkillDataMod(dataKey, dataValue, ...)
	return makeSkillMod("SkillData", "LIST", { key = dataKey, value = dataValue }, 0, 0, ...)
end
local function processMod(grantedEffect, mod)
	mod.source = grantedEffect.modSource
	if type(mod.value) == "table" and mod.value.mod then
		mod.value.mod.source = "Skill:"..grantedEffect.id
	end
	for _, tag in ipairs(mod) do
		if tag.type == "GlobalEffect" then
			grantedEffect.hasGlobalEffect = true
			break
		end
	end
end

-----------------
-- Common Data --
-----------------

data = { }

data.skillColorMap = { colorCodes.STRENGTH, colorCodes.DEXTERITY, colorCodes.INTELLIGENCE, colorCodes.NORMAL }

data.jewelRadius = {

{ inner = 0, outer = 800, col = "^xBB6600", label = "小" },
{ inner = 0, outer = 1200, col = "^x66FFCC", label = "中" },
{ inner = 0, outer = 1500, col = "^x2222CC", label = "大" },
{ inner = 850, outer = 1100, col = "^xD35400", label = "Variable" },
{ inner = 1150, outer = 1400, col = "^x66FFCC", label = "Variable" },
{ inner = 1450, outer = 1700, col = "^x2222CC", label = "Variable" },
{ inner = 1750, outer = 2000, col = "^xC100FF", label = "Variable" },
	
}

data.labyrinths = {
	{ name = "ENDGAME", label = "Eternal" },
	{ name = "MERCILESS", label = "Merciless" },
	{ name = "CRUEL", label = "Cruel" },
	{ name = "NORMAL", label = "Normal" },
}

data.monsterExperienceLevelMap = { [71] = 70.94, [72] = 71.82, [73] = 72.64, [74] = 73.40, [75] = 74.10, [76] = 74.74, [77] = 75.32, [78] = 75.84, [79] = 76.30, [80] = 76.70, [81] = 77.04, [82] = 77.32, [83] = 77.54, [84] = 77.70, }
for i = 1, 70 do
	data.monsterExperienceLevelMap[i] = i
end

data.weaponTypeInfo = {
	["None"] = { oneHand = true, melee = true, flag = "Unarmed" },
	["Bow"] = { oneHand = false, melee = false, flag = "Bow" },
	["Claw"] = { oneHand = true, melee = true, flag = "Claw" },
	["Dagger"] = { oneHand = true, melee = true, flag = "Dagger" },
	["Staff"] = { oneHand = false, melee = true, flag = "Staff" },
	["Wand"] = { oneHand = true, melee = false, flag = "Wand" },
	["One Handed Axe"] = { oneHand = true, melee = true, flag = "Axe" },
	["One Handed Mace"] = { oneHand = true, melee = true, flag = "Mace" },
	["One Handed Sword"] = { oneHand = true, melee = true, flag = "Sword" },
	["Sceptre"] = { oneHand = true, melee = true, flag = "Mace", label = "One Handed Mace" },
	["Thrusting One Handed Sword"] = { oneHand = true, melee = true, flag = "Sword", label = "One Handed Sword" },
	["Two Handed Axe"] = { oneHand = false, melee = true, flag = "Axe" },
	["Two Handed Mace"] = { oneHand = false, melee = true, flag = "Mace" },
	["Two Handed Sword"] = { oneHand = false, melee = true, flag = "Sword" },
}
data.unarmedWeaponData = {
	[0] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 6 }, -- Scion
	[1] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 8 }, -- Marauder
	[2] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 5 }, -- Ranger
	[3] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 5 }, -- Witch
	[4] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 6 }, -- Duelist
	[5] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 6 }, -- Templar
	[6] = { type = "None", AttackRate = 1.2, CritChance = 0, PhysicalMin = 2, PhysicalMax = 5 }, -- Shadow
}

data.specialBaseTags = {
	["Amulet"] = { shaper = "amulet_shaper", elder = "amulet_elder", crusader="amulet_crusader", redeemer = "amulet_eyrie",hunter ="amulet_basilisk",warlord="amulet_adjudicator" },
	["Ring"] = { shaper = "ring_shaper", elder = "ring_elder", crusader="ring_crusader", redeemer = "ring_eyrie",hunter ="ring_basilisk",warlord="ring_adjudicator"  },
	["Claw"] = { shaper = "claw_shaper", elder = "claw_elder", crusader="claw_crusader", redeemer = "claw_eyrie",hunter ="claw_basilisk",warlord="claw_adjudicator"  },
	["Dagger"] = { shaper = "dagger_shaper", elder = "dagger_elder", crusader="dagger_crusader", redeemer = "dagger_eyrie",hunter ="dagger_basilisk",warlord="dagger_adjudicator"  },
	["Wand"] = { shaper = "wand_shaper", elder = "wand_elder",  crusader="wand_crusader", redeemer = "wand_eyrie",hunter ="wand_basilisk",warlord="wand_adjudicator" },
	["One Handed Sword"] = { shaper = "sword_shaper", elder = "sword_elder", crusader="sword_crusader", redeemer = "sword_eyrie",hunter ="sword_basilisk",warlord="sword_adjudicator"  },
	["Thrusting One Handed Sword"] = { shaper = "sword_shaper", elder = "sword_elder",  crusader="sword_crusader", redeemer = "sword_eyrie",hunter ="sword_basilisk",warlord="sword_adjudicator" },
	["One Handed Axe"] = { shaper = "axe_shaper", elder = "axe_elder", crusader="axe_crusader", redeemer = "axe_eyrie",hunter ="axe_basilisk",warlord="axe_adjudicator"  },
	["One Handed Mace"] = { shaper = "mace_shaper", elder = "mace_elder",  crusader="mace_crusader", redeemer = "macet_eyrie",hunter ="mace_basilisk",warlord="mace_adjudicator" },
	["Bow"] = { shaper = "bow_shaper", elder = "bow_elder",  crusader="bow_crusader", redeemer = "bow_eyrie",hunter ="bow_basilisk",warlord="bow_adjudicator" },
	["Staff"] = { shaper = "staff_shaper", elder = "staff_elder",  crusader="staff_crusader", redeemer = "staff_eyrie",hunter ="staff_basilisk",warlord="staff_adjudicator" },
	["Two Handed Sword"] = { shaper = "2h_sword_shaper", elder = "2h_sword_elder",  crusader="2h_sword_crusader", redeemer = "2h_sword_eyrie",hunter ="2h_sword_basilisk",warlord="2h_sword_adjudicator" },
	["Two Handed Axe"] = { shaper = "2h_axe_shaper", elder = "2h_axe_elder",  crusader="2h_axe_crusader", redeemer = "2h_axe_eyrie",hunter ="2h_axe_basilisk",warlord="2h_axe_adjudicator" },
	["Two Handed Mace"] = { shaper = "2h_mace_shaper", elder = "2h_mace_elder",  crusader="2h_mace_crusader", redeemer = "2h_mace_eyrie",hunter ="2h_mace_basilisk",warlord="2h_mace_adjudicator" },
	["Quiver"] = { shaper = "quiver_shaper", elder = "quiver_elder",  crusader="quiver_crusader", redeemer = "quiver_eyrie",hunter ="quiver_basilisk",warlord="quiver_adjudicator" },
	["Belt"] = { shaper = "belt_shaper", elder = "belt_elder", crusader="belt_crusader", redeemer = "belt_eyrie",hunter ="belt_basilisk",warlord="belt_adjudicator"  },
	["Gloves"] = { shaper = "gloves_shaper", elder = "gloves_elder",  crusader="gloves_crusader", redeemer = "gloves_eyrie",hunter ="gloves_basilisk",warlord="gloves_adjudicator" },
	["Boots"] = { shaper = "boots_shaper", elder = "boots_elder",  crusader="boots_crusader", redeemer = "boots_eyrie",hunter ="boots_basilisk",warlord="boots_adjudicator" },
	["Body Armour"] = { shaper = "body_armour_shaper", elder = "body_armour_elder",  crusader="body_armour_crusader", redeemer = "body_armour_eyrie",hunter ="body_armour_basilisk",warlord="body_armour_adjudicator" },
	["Helmet"] = { shaper = "helmet_shaper", elder = "helmet_elder", crusader="helmet_crusader", redeemer = "helmet_eyrie",hunter ="helmet_basilisk",warlord="helmet_adjudicator"  },
	["Shield"] = { shaper = "shield_shaper", elder = "shield_elder", crusader="shield_crusader", redeemer = "shield_eyrie",hunter ="shield_basilisk",warlord="shield_adjudicator"  },
	["Sceptre"] = { shaper = "sceptre_shaper", elder = "sceptre_elder",  crusader="sceptre_crusader", redeemer = "sceptre_eyrie",hunter ="sceptre_basilisk",warlord="sceptre_adjudicator" },
}



---------------------------
-- Version-specific Data --
---------------------------

for _, targetVersion in ipairs(targetVersionList) do
	local verData = setmetatable({ }, { __index = data })
	data[targetVersion] = verData
	local function dataModule(mod, ...)
		return LoadModule("Data/"..targetVersion.."/"..mod, ...)
	end

	-- Misc data tables
	dataModule("Misc", verData)

	if targetVersion ~= "2_6" then
		verData.describeStats = LoadModule("Modules/StatDescriber", targetVersion)
	end
	-- Load item modifiers
	verData.itemMods = {
		Item = dataModule("ModItem"),
		Flask = dataModule("ModFlask"),
		Jewel = dataModule("ModJewel"),
		JewelAbyss = targetVersion ~= "2_6" and dataModule("ModJewelAbyss") or { },
		JewelCluster = targetVersion ~= "2_6" and dataModule("ModJewelCluster") or { },
	}
	verData.masterMods = dataModule("ModMaster")
	verData.enchantments = {
		Helmet = dataModule("EnchantmentHelmet"),
		Boots = dataModule("EnchantmentBoots"),
		Gloves = dataModule("EnchantmentGloves"),
	}
	verData.synthesisedMods = {
		Item = dataModule("ModSynthesised"),
		
	}
	verData.essences = dataModule("Essence")
	-- Cluster jewel data
	if targetVersion ~= "2_6" then	
		verData.clusterJewels = dataModule("ClusterJewels")
	end
	verData.delve = dataModule("ModDelve")
	verData.incursion = dataModule("ModIncursion")
	
	
	

	--永恒珠宝
	if targetVersion ~= "2_6" then
		verData.timelessJewelKeystone = dataModule("TimelessJewel/TimelessJewelKeystone",targetVersion)
		
		verData.blightPassives= dataModule("BlightPassives",targetVersion)
		
		table.sort(verData.blightPassives, function(a, b) 
			return a.name < b.name
		end)
		
	end
	-- Load skills
	verData.skills = { }
	verData.skillStatMap = dataModule("SkillStatMap", makeSkillMod, makeFlagMod, makeSkillDataMod)
	verData.skillStatMapMeta = {
		__index = function(t, key)
			local map = verData.skillStatMap[key]
			if map then
				map = copyTable(map)
				t[key] = map
				for _, mod in ipairs(map) do
					processMod(t._grantedEffect, mod)
				end
				return map
			end
		end
	}
	for _, type in pairs(skillTypes) do
		dataModule("Skills/"..type, verData.skills, makeSkillMod, makeFlagMod, makeSkillDataMod)
	end
	for skillId, grantedEffect in pairs(verData.skills) do
		grantedEffect.id = skillId
		grantedEffect.modSource = "Skill:"..skillId
		-- Add sources for skill mods, and check for global effects
		for _, list in pairs({grantedEffect.baseMods, grantedEffect.qualityMods, grantedEffect.levelMods}) do
			for _, mod in pairs(list) do
				if mod.name then
					processMod(grantedEffect, mod)
				else
					for _, mod in ipairs(mod) do
						processMod(grantedEffect, mod)
					end
				end
			end
		end
		-- Install stat map metatable
		grantedEffect.statMap = grantedEffect.statMap or { }
		setmetatable(grantedEffect.statMap, verData.skillStatMapMeta)
		grantedEffect.statMap._grantedEffect = grantedEffect
		for _, map in pairs(grantedEffect.statMap) do
			for _, mod in ipairs(map) do
				processMod(grantedEffect, mod)
			end
		end
	end

	-- Load gems
	verData.gems = dataModule("Gems")
	verData.gemForSkill = { }
	verData.gemForBaseName = { }
	for gemId, gem in pairs(verData.gems) do
		--print(gem.name)
		gem.id = gemId
		gem.grantedEffect = verData.skills[gem.grantedEffectId]
		 
		
		verData.gemForSkill[gem.grantedEffect] = gemId
		verData.gemForBaseName[gem.name ] = gemId
		gem.secondaryGrantedEffect = gem.secondaryGrantedEffectId and verData.skills[gem.secondaryGrantedEffectId]
		gem.grantedEffectList = {
			gem.grantedEffect,
			gem.secondaryGrantedEffect
		}
		
		gem.defaultLevel = gem.defaultLevel or (#gem.grantedEffect.levels > 20 and #gem.grantedEffect.levels - 20) or (gem.grantedEffect.levels[3][1] and 3) or 1
		
		for index in pairs(skillNameAndLevel) do
			
				if gem.grantedEffectId == skillNameAndLevel[index].grantedEffectId then				 
					gem.defaultLevel =skillNameAndLevel[index].level
					 
				end
		end
		
		

	end

	-- Load minions
	verData.minions = { }
	dataModule("Minions", verData.minions, makeSkillMod)
	verData.spectres = { }
	dataModule("Spectres", verData.spectres, makeSkillMod)
	for name, spectre in pairs(verData.spectres) do
		spectre.limit = "ActiveSpectreLimit"
		verData.minions[name] = spectre
	end

	
		
	local missing = { }
	for _, minion in pairs(verData.minions) do
		for _, skillId in ipairs(minion.skillList) do
			if launch.devMode and not verData.skills[skillId] and not missing[skillId] then
				ConPrintf("'%s' missing skill '%s'", minion.name, skillId)
				--[[
			local fileW = io.open("missingSkill.txt", "a+")
 
			fileW:write(minion.name.."》丢失技能："..skillId.."\r\n")
			
			fileW:flush()
			fileW:close()
			--]]
				missing[skillId] = true
			end
			
			 
		end
		

		for _, mod in ipairs(minion.modList) do
			mod.source = "Minion:"..minion.name
		end
	end
 

	-- Item bases
	verData.itemBases = { }
	for _, type in pairs(itemTypes) do
		dataModule("Bases/"..type, verData.itemBases)
	end

	-- Build lists of item bases, separated by type
	verData.itemBaseLists = { }
	  
	for name, base in pairs(verData.itemBases) do
		if not base.hidden then
			local type = base.type
			if base.subType then
				type = type .. ": " .. base.subType
			end
			
			--lucifer 
			for index in pairs(typeLabel) do
				if type==typeLabel[index].en then
					type=typeLabel[index].cn
				end
			end
			 
			verData.itemBaseLists[type] = verData.itemBaseLists[type] or { }
			table.insert(verData.itemBaseLists[type], { label = name:gsub(" %(.+%)",""), name = name, base = base })
		end
	end
	 
	verData.itemBaseTypeList = { }
	for type, list in pairs(verData.itemBaseLists) do
		table.insert(verData.itemBaseTypeList, type)
		table.sort(list, function(a, b) 
			if a.base.req and b.base.req then
				if a.base.req.level == b.base.req.level then
					return a.name < b.name
				else
					return (a.base.req.level or 1) > (b.base.req.level or 1)
				end
			elseif a.base.req and not b.base.req then
				return true
			elseif b.base.req and not a.base.req then
				return false
			else
				return a.name < b.name
			end
		end)
	end
	table.sort(verData.itemBaseTypeList)

	-- Rare templates
	verData.rares = dataModule("Rares")
end
-- Uniques (loaded after version-specific data because reasons)
data.uniques = { }
for _, type in pairs(itemTypes) do
	data.uniques[type] = LoadModule("Data/Uniques/"..type)
end
LoadModule("Data/New")
