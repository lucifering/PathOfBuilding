-- Path of Building
--
-- Module: Calc Defence
-- Performs defence calculations.
--
local calcs = ...

local pairs = pairs
local ipairs = ipairs
local t_insert = table.insert
local m_ceil = math.ceil
local m_floor = math.floor
local m_min = math.min
local m_max = math.max
local s_format = string.format

local tempTable1 = { }

local isElemental = { Fire = true, Cold = true, Lightning = true }

-- List of all damage types, ordered according to the conversion sequence
local dmgTypeList = {"Physical", "Lightning", "Cold", "Fire", "Chaos"}

local resistTypeList = { "Fire", "Cold", "Lightning", "Chaos" }

-- Calculate hit chance
function calcs.hitChance(evasion, accuracy)
	local rawChance = accuracy / (accuracy + (evasion / 4) ^ 0.8) * 115
	return m_max(m_min(round(rawChance), 100), 5)	
end

-- Calculate physical damage reduction from armour, float
function calcs.armourReductionF(armour, raw)
	return (armour / (armour + raw * 10) * 100)
end

-- Calculate physical damage reduction from armour, int
function calcs.armourReduction(armour, raw)
	return round(calcs.armourReductionF(armour, raw))
end

-- Performs all defensive calculations
function calcs.defence(env, actor)
	local modDB = actor.modDB
	local enemyDB = actor.enemy.modDB
	local output = actor.output
	local breakdown = actor.breakdown

	local condList = modDB.conditions

	-- Action Speed
	output.ActionSpeedMod = 1 + (m_max(-75, modDB:Sum("INC", nil, "TemporalChainsActionSpeed")) + modDB:Sum("INC", nil, "ActionSpeed")) / 100
	if modDB:Flag(nil, "ActionSpeedCannotBeBelowBase") then
		output.ActionSpeedMod = m_max(1, output.ActionSpeedMod)
	end

	-- Resistances
	output.PhysicalResist = m_min(90, modDB:Sum("BASE", nil, "PhysicalDamageReduction"))
	output.PhysicalResistWhenHit = m_min(90, output.PhysicalResist + modDB:Sum("BASE", nil, "PhysicalDamageReductionWhenHit"))
	for _, elem in ipairs(resistTypeList) do
		local max, total
		if elem == "Chaos" and modDB:Flag(nil, "ChaosInoculation") then
			max = 100
			total = 100
		else
			max = modDB:Override(nil, elem.."ResistMax") or m_min(90, modDB:Sum("BASE", nil, elem.."ResistMax", isElemental[elem] and "ElementalResistMax"))
			--total = modDB:Override(nil, elem.."Resist") or modDB:Sum("BASE", nil, elem.."Resist", isElemental[elem] and "ElementalResist")*(1+modDB:Sum("MORE", nil, elem.."Resist", isElemental[elem] and "ElementalResist")/100)
			total = modDB:Override(nil, elem.."Resist")
			if not total then
				local base = modDB:Sum("BASE", nil, elem.."Resist", isElemental[elem] and "ElementalResist")
				total = base * calcLib.mod(modDB, nil, elem.."Resist", isElemental[elem] and "ElementalResist")
			end
		end
		local final = m_min(total, max)
		output[elem.."Resist"] = final
		output[elem.."ResistTotal"] = total
		output[elem.."ResistOverCap"] = m_max(0, total - max)
		output[elem.."ResistOver75"] = m_max(0, final - 75)
		if breakdown then
			breakdown[elem.."Resist"] = {
				"Max: "..max.."%",
				"Total: "..total.."%",
			}
		end
	end

	-- Primary defences: Energy shield, evasion and armour
	do
		local ironReflexes = modDB:Flag(nil, "IronReflexes")
		local energyShield = 0
		local armour = 0
		local evasion = 0
		if breakdown then
			breakdown.EnergyShield = { slots = { } }
			breakdown.Armour = { slots = { } }
			breakdown.Evasion = { slots = { } }
		end
		local energyShieldBase, armourBase, evasionBase
		local gearEnergyShield = 0
		local gearArmour = 0
		local gearEvasion = 0
		local slotCfg = wipeTable(tempTable1)
		for _, slot in pairs({"Helmet","Body Armour","Gloves","Boots","Weapon 2","Weapon 3"}) do
			local armourData = actor.itemList[slot] and actor.itemList[slot].armourData
			
			if actor.itemList[slot] and actor.itemList[slot].quality then 
				output["QualityOn"..slot] = actor.itemList[slot].quality
			end 
			
			if armourData then		
			
				slotCfg.slotName = slot
				energyShieldBase = armourData.EnergyShield or 0
				if energyShieldBase > 0 then
					output["EnergyShieldOn"..slot] = energyShieldBase
					energyShield = energyShield + energyShieldBase * calcLib.mod(modDB, slotCfg, "EnergyShield", "Defences")
					gearEnergyShield = gearEnergyShield + energyShieldBase
					if breakdown then
						breakdown.slot(slot, nil, slotCfg, energyShieldBase, nil, "EnergyShield", "Defences")
					end
				end
				armourBase = armourData.Armour or 0
				if armourBase > 0 then
					output["ArmourOn"..slot] = armourBase
					if slot == "Body Armour" and modDB:Flag(nil, "Unbreakable") then
						armourBase = armourBase * 2
					end
					armour = armour + armourBase * calcLib.mod(modDB, slotCfg, "Armour", "ArmourAndEvasion", "Defences")
					gearArmour = gearArmour + armourBase
					if breakdown then
						breakdown.slot(slot, nil, slotCfg, armourBase, nil, "Armour", "ArmourAndEvasion", "Defences")
					end
				end
				evasionBase = armourData.Evasion or 0
				if evasionBase > 0 then
					output["EvasionOn"..slot] = evasionBase
					if ironReflexes then
						armour = armour + evasionBase * calcLib.mod(modDB, slotCfg, "Armour", "Evasion", "ArmourAndEvasion", "Defences")
						gearArmour = gearArmour + evasionBase
						if breakdown then
							breakdown.slot(slot, nil, slotCfg, evasionBase, nil, "Armour", "Evasion", "ArmourAndEvasion", "Defences")
						end
					else
						evasion = evasion + evasionBase * calcLib.mod(modDB, slotCfg, "Evasion", "ArmourAndEvasion", "Defences")
						gearEvasion = gearEvasion + evasionBase
						if breakdown then
							breakdown.slot(slot, nil, slotCfg, evasionBase, nil, "Evasion", "ArmourAndEvasion", "Defences")
						end
					end
				end	
				
			end
		end
		energyShieldBase = modDB:Sum("BASE", nil, "EnergyShield")
		if energyShieldBase > 0 then
			energyShield = energyShield + energyShieldBase * calcLib.mod(modDB, nil, "EnergyShield", "Defences")
			if breakdown then
				breakdown.slot("Global", nil, nil, energyShieldBase, nil, "EnergyShield", "Defences")
			end
		end
		armourBase = modDB:Sum("BASE", nil, "Armour", "ArmourAndEvasion")
		if armourBase > 0 then
			armour = armour + armourBase * calcLib.mod(modDB, nil, "Armour", "ArmourAndEvasion", "Defences")
			if breakdown then
				breakdown.slot("Global", nil, nil, armourBase, nil, "Armour", "ArmourAndEvasion", "Defences")
			end
		end
		local convManaToDoubleArmour = modDB:Sum("BASE", nil, "ManaConvertToDoubleArmour")
		if convManaToDoubleArmour > 0 then
			--双倍护甲 
			armourBase = modDB:Sum("BASE", nil, "Mana") * convManaToDoubleArmour / 100 * 2
			 
			armour = armour + armourBase * calcLib.mod(modDB, nil, "Mana", "Armour", "Defences") 
			if breakdown then
				breakdown.slot("Conversion", "魔力 转 双倍护甲", nil, armourBase, nil, "Armour", "Defences", "Mana")
			end
		end
		
		evasionBase = modDB:Sum("BASE", nil, "Evasion", "ArmourAndEvasion")
		if evasionBase > 0 then
			if ironReflexes then
				armour = armour + evasionBase * calcLib.mod(modDB, nil, "Armour", "Evasion", "ArmourAndEvasion", "Defences")
				if breakdown then
					breakdown.slot("Conversion", "闪避 转 护甲", nil, evasionBase, nil, "Armour", "Evasion", "ArmourAndEvasion", "Defences")
				end
			else
				evasion = evasion + evasionBase * calcLib.mod(modDB, nil, "Evasion", "ArmourAndEvasion", "Defences")
				if breakdown then
					breakdown.slot("Global", nil, nil, evasionBase, nil, "Evasion", "ArmourAndEvasion", "Defences")
				end
			end
		end
		local convManaToES = modDB:Sum("BASE", nil, "ManaGainAsEnergyShield")
		if convManaToES > 0 then
			energyShieldBase = modDB:Sum("BASE", nil, "Mana") * convManaToES / 100
			energyShield = energyShield + energyShieldBase * calcLib.mod(modDB, nil, "Mana", "EnergyShield", "Defences") 
			if breakdown then
				breakdown.slot("Conversion", "魔力 转 能量护盾", nil, energyShieldBase, nil, "EnergyShield", "Defences", "Mana")
			end
		end
		
		local conv = modDB:Sum("BASE", nil, "LifeConvertToEnergyShield")
		if conv > 100 then 
			conv = 100
		end 
		if conv < 0 then 
			conv = 0
		end 
		local gain = modDB:Sum("BASE", nil, "LifeGainAsEnergyShield")	
		if gain < 0 then 
			gain = 0
		end 		
		local convLifeToES = conv + gain--modDB:Sum("BASE", nil, "LifeConvertToEnergyShield", "LifeGainAsEnergyShield")
				
		if convLifeToES > 0 then		
			energyShieldBase = modDB:Sum("BASE", nil, "Life") * convLifeToES / 100
			local total
			if modDB:Flag(nil, "ChaosInoculation") then
				total = 1
			else
				total = energyShieldBase * calcLib.mod(modDB, nil, "Life", "EnergyShield", "Defences")
			end
			energyShield = energyShield + total
			if breakdown then
				breakdown.slot("Conversion", "生命 转 能量护盾", nil, energyShieldBase, total, "EnergyShield", "Defences", "Life")
			end
		end
		
		local energyShieldOverride = modDB:Override(nil, "EnergyShield")	
		if energyShieldOverride  then
			output.EnergyShield = energyShieldOverride
		else
			output.EnergyShield = m_max(round(energyShield), 0)
		end		
		
		output.Armour = m_max(round(armour), 0)
		output.Evasion = m_max(round(evasion), 0)
		output.LowestOfArmourAndEvasion = m_min(output.Armour, output.Evasion)
		output["Gear:EnergyShield"] = gearEnergyShield
		output["Gear:Armour"] = gearArmour
		output["Gear:Evasion"] = gearEvasion
		if modDB:Flag(nil, "CannotEvade") then
			output.EvadeChance = 0
			output.MeleeEvadeChance = 0
			output.ProjectileEvadeChance = 0
		else
			local enemyAccuracy = round(calcLib.val(enemyDB, "Accuracy"))
			output.EvadeChance = 100 - (calcs.hitChance(output.Evasion, enemyAccuracy) - modDB:Sum("BASE", nil, "EvadeChance")) * calcLib.mod(enemyDB, nil, "HitChance")
			if breakdown then
				breakdown.EvadeChance = {
s_format("敌人等级: %d ^8(%s 配置界面配置)", env.enemyLevel, env.configInput.enemyLevel and "覆盖了" or "可以从"),
s_format("平均敌人命中: %d", enemyAccuracy),
s_format("近似闪避几率: %d%%", output.EvadeChance),
				}
			end
			output.MeleeEvadeChance = m_max(0, m_min(95, output.EvadeChance * calcLib.mod(modDB, nil, "EvadeChance", "MeleeEvadeChance")))
			output.ProjectileEvadeChance = m_max(0, m_min(95, output.EvadeChance * calcLib.mod(modDB, nil, "EvadeChance", "ProjectileEvadeChance")))
		end
	end

	-- Recovery modifiers
	output.LifeRecoveryMod = calcLib.mod(modDB, nil, "LifeRecovery")
	output.LifeRecoveryRateMod = calcLib.mod(modDB, nil, "LifeRecovery", "LifeRecoveryRate")
	output.ManaRecoveryMod = calcLib.mod(modDB, nil, "ManaRecovery")
	output.ManaRecoveryRateMod = calcLib.mod(modDB, nil, "ManaRecovery", "ManaRecoveryRate")
	output.EnergyShieldRecoveryMod = calcLib.mod(modDB, nil, "EnergyShieldRecovery")
	output.EnergyShieldRecoveryRateMod = calcLib.mod(modDB, nil, "EnergyShieldRecovery", "EnergyShieldRecoveryRate")
	output.PlayerLife= calcLib.val(env.player.modDB,  "Life")
	 
	-- Leech caps
	output.MaxLifeLeechInstance = output.Life * calcLib.val(modDB, "MaxLifeLeechInstance") / 100
	output.MaxLifeLeechRate = output.Life * calcLib.val(modDB, "MaxLifeLeechRate") / 100
	if breakdown then
		breakdown.MaxLifeLeechRate = {
s_format("%d ^8(最大生命)", output.Life),
s_format("x %d%% ^8(生命偷取总回复上限占总生命百分比)", calcLib.val(modDB, "MaxLifeLeechRate")),
			s_format("= %.1f", output.MaxLifeLeechRate)
		}
	end
	output.MaxLifeLeechRatePercentage =calcLib.val(modDB, "MaxLifeLeechRate")
	output.MaxEnergyShieldLeechInstance = output.EnergyShield * calcLib.val(modDB, "MaxEnergyShieldLeechInstance") / 100
	output.MaxEnergyShieldLeechRate = output.EnergyShield * calcLib.val(modDB, "MaxEnergyShieldLeechRate") / 100
	if breakdown then
		breakdown.MaxEnergyShieldLeechRate = {
s_format("%d ^8(最大能量护盾)", output.EnergyShield),
			s_format("x %d%% ^8(能量护盾偷取总回复上限占总能量护盾百分比)", calcLib.val(modDB, "MaxEnergyShieldLeechRate")),
			s_format("= %.1f", output.MaxEnergyShieldLeechRate)
		}
	end
	
	output.MaxManaLeechInstance = output.Mana * calcLib.val(modDB, "MaxManaLeechInstance") / 100
	output.MaxManaLeechRate = output.Mana * calcLib.val(modDB, "MaxManaLeechRate") / 100
	if breakdown then
		breakdown.MaxManaLeechRate = {
s_format("%d ^8(最大魔力)", output.Mana),
s_format("x %d%% ^8(魔力偷取总回复上限占总魔力百分比)", modDB:Sum("BASE", nil, "MaxManaLeechRate")),
			s_format("= %.1f", output.MaxManaLeechRate)
		}
	end

	-- Mana, life and energy shield regen
	if modDB:Flag(nil, "NoManaRegen") then
		output.ManaRegen = 0
	else
		local base = modDB:Sum("BASE", nil, "ManaRegen") + output.Mana * modDB:Sum("BASE", nil, "ManaRegenPercent") / 100
		local inc = modDB:Sum("INC", nil, "ManaRegen")
		local more = modDB:More(nil, "ManaRegen")
		local regen = base * (1 + inc/100) * more
		output.ManaRegen = round(regen * output.ManaRecoveryRateMod, 1) - modDB:Sum("BASE", nil, "ManaDegen")
		if breakdown then
			breakdown.ManaRegen = { }
			breakdown.multiChain(breakdown.ManaRegen, {
label = "每秒魔力回复:",
base = s_format("%.1f ^8(基础)", base),
{ "%.2f ^8(提高/降低)", 1 + inc/100 },
{ "%.2f ^8(额外提高/降低)", more },
total = s_format("= %.1f ^8每秒", regen),
			})
			breakdown.multiChain(breakdown.ManaRegen, {
label = "有效每秒魔力回复:",
				base = s_format("%.1f", regen),
{ "%.2f ^8(回复速率加成)", output.ManaRecoveryRateMod },
total = s_format("= %.1f ^8每秒", output.ManaRegen),
			})				
		end
	end
	if modDB:Flag(nil, "NoLifeRegen") then
		output.LifeRegen = 0
	elseif modDB:Flag(nil, "ZealotsOath") then
		output.LifeRegen = 0
		local lifeBase = modDB:Sum("BASE", nil, "LifeRegen")
		if lifeBase > 0 then
modDB:NewMod("EnergyShieldRegen", "BASE", lifeBase, "狂热誓言")
		end
		local lifePercent = modDB:Sum("BASE", nil, "LifeRegenPercent")
		if lifePercent > 0 then
modDB:NewMod("EnergyShieldRegenPercent", "BASE", lifePercent, "狂热誓言")
		end
	else
		local lifeBase = modDB:Sum("BASE", nil, "LifeRegen")
		local lifePercent = modDB:Sum("BASE", nil, "LifeRegenPercent")
		if lifePercent > 0 then
			lifeBase = lifeBase + output.Life * lifePercent / 100
		end
		if lifeBase > 0 then
			output.LifeRegen = lifeBase * output.LifeRecoveryRateMod
		else
			output.LifeRegen = 0
		end
	end
	output.LifeRegen = output.LifeRegen - modDB:Sum("BASE", nil, "LifeDegen")
	output.LifeRegenPercent = round(output.LifeRegen / output.Life * 100, 1)
	if modDB:Flag(nil, "NoEnergyShieldRegen") then
		output.EnergyShieldRegen = 0
	else
		local esBase = modDB:Sum("BASE", nil, "EnergyShieldRegen")
		local esPercent = modDB:Sum("BASE", nil, "EnergyShieldRegenPercent")
		if esPercent > 0 then
			esBase = esBase + output.EnergyShield * esPercent / 100
		end
		if esBase > 0 then
			output.EnergyShieldRegen = esBase * output.EnergyShieldRecoveryRateMod * calcLib.mod(modDB, nil, "EnergyShieldRegen")
			output.EnergyShieldRegenPercent = round(output.EnergyShieldRegen / output.EnergyShield * 100, 1)
		else
			output.EnergyShieldRegen = 0
		end
	end

	-- Energy Shield Recharge
	if modDB:Flag(nil, "NoEnergyShieldRecharge") then
		output.EnergyShieldRecharge = 0
	else
		local inc = modDB:Sum("INC", nil, "EnergyShieldRecharge")
		local more = modDB:More(nil, "EnergyShieldRecharge")
		local recharge = output.EnergyShield * 0.2 * (1 + inc/100) * more
		output.EnergyShieldRecharge = round(recharge * output.EnergyShieldRecoveryRateMod)
		output.EnergyShieldRechargeDelay = 2 / (1 + modDB:Sum("INC", nil, "EnergyShieldRechargeFaster") / 100)
		if breakdown then
			breakdown.EnergyShieldRecharge = { }
			breakdown.multiChain(breakdown.EnergyShieldRecharge, {
label = "能量护盾充能速率:",
base = s_format("%.1f ^8(20%% 每秒)", output.EnergyShield * 0.2),
{ "%.2f ^8(提高/降低)", 1 + inc/100 },
{ "%.2f ^8(额外提高/降低)", more },
total = s_format("= %.1f ^8每秒", recharge),
			})
			breakdown.multiChain(breakdown.EnergyShieldRecharge, {
label = "有效能量护盾充能速率:",
				base = s_format("%.1f", recharge),
{ "%.2f ^8(回复速率加成)", output.EnergyShieldRecoveryRateMod },
total = s_format("= %.1f ^8每秒", output.EnergyShieldRecharge),
			})				
			if output.EnergyShieldRechargeDelay ~= 2 then
				breakdown.EnergyShieldRechargeDelay = {
"2.00s ^8(基础)",
s_format("/ %.2f ^8(更快开始)", 1 + modDB:Sum("INC", nil, "EnergyShieldRechargeFaster") / 100),
					s_format("= %.2fs", output.EnergyShieldRechargeDelay)
				}
			end
		end
	end

	-- Mind over Matter
	output.MindOverMatter = modDB:Sum("BASE", nil, "DamageTakenFromManaBeforeLife")
	if output.MindOverMatter and breakdown then
		local sourcePool = output.ManaUnreserved or 0
		if modDB:Flag(nil, "EnergyShieldProtectsMana") then
			sourcePool = sourcePool + output.EnergyShield
		end
		local lifeProtected = sourcePool / (output.MindOverMatter / 100) * (1 - output.MindOverMatter / 100)
		local effectiveLife = m_max(output.Life - lifeProtected, 0) + m_min(output.Life, lifeProtected) / (1 - output.MindOverMatter / 100)
		breakdown.MindOverMatter = {
s_format("所有生命防护:"),
s_format("%d ^8(未保留魔力%s)", sourcePool, modDB:Flag(nil, "EnergyShieldProtectsMana") and " + 总能量护盾" or ""),
s_format("/ %.2f ^8(魔力承受部分)", output.MindOverMatter / 100),
s_format("x %.2f ^8(生命承受部分)", 1 - output.MindOverMatter / 100),
			s_format("= %d", lifeProtected),
s_format("有效生命: %d", effectiveLife)
		}
	end

	-- Damage taken multipliers/Degen calculations
	for _, damageType in ipairs(dmgTypeList) do
		local baseTakenInc = modDB:Sum("INC", nil, "DamageTaken", damageType.."DamageTaken")
		local baseTakenMore = modDB:More(nil, "DamageTaken", damageType.."DamageTaken")
		if isElemental[damageType] then
			baseTakenInc = baseTakenInc + modDB:Sum("INC", nil, "ElementalDamageTaken")
			baseTakenMore = baseTakenMore * modDB:More(nil, "ElementalDamageTaken")
		end
		do
			-- Hit
			local takenInc = baseTakenInc + modDB:Sum("INC", nil, "DamageTakenWhenHit", damageType.."DamageTakenWhenHit")
			local takenMore = baseTakenMore * modDB:More(nil, "DamageTakenWhenHit", damageType.."DamageTakenWhenHit")
			if isElemental[damageType] then
				takenInc = takenInc + modDB:Sum("INC", nil, "ElementalDamageTakenWhenHit")
				takenMore = takenMore * modDB:More(nil, "ElementalDamageTakenWhenHit")
			end
			output[damageType.."TakenHit"] = (1 + takenInc / 100) * takenMore
		end
		do
			-- Dot
			local takenInc = baseTakenInc + modDB:Sum("INC", nil, "DamageTakenOverTime", damageType.."DamageTakenOverTime")
			local takenMore = baseTakenMore * modDB:More(nil, "DamageTakenOverTime", damageType.."DamageTakenOverTime")
			if isElemental[damageType] then
				takenInc = takenInc + modDB:Sum("INC", nil, "ElementalDamageTakenOverTime")
				takenMore = takenMore * modDB:More(nil, "ElementalDamageTakenOverTime")
			end
			local resist = output[damageType.."Resist"]
			output[damageType.."TakenDotMult"] = (1 - resist / 100) * (1 + takenInc / 100) * takenMore
			if breakdown then
				breakdown[damageType.."TakenDotMult"] = { }
				breakdown.multiChain(breakdown[damageType.."TakenDotMult"], {
label = "持续伤害加成:",
{ "%.2f ^8(%s)", (1 - output[damageType.."Resist"] / 100), damageType == "Physical" and "物理伤害减免" or "抗性" },
{ "%.2f ^8(提高/降低 伤害承受)", (1 + takenInc / 100) },
{ "%.2f ^8(额外提高/降低 伤害承受)", takenMore },
					total = s_format("= %.2f", output[damageType.."TakenDotMult"]),
				})
			end
			-- Degens
			local baseVal = modDB:Sum("BASE", nil, damageType.."Degen")
			if baseVal > 0 then
				local total = baseVal * output[damageType.."TakenDotMult"]
				output[damageType.."Degen"] = total
				output.TotalDegen = (output.TotalDegen or 0) + total
				if breakdown then
					breakdown.TotalDegen = breakdown.TotalDegen or { 
						rowList = { },
						colList = {
{ label = "【类型】", key = "type" },
{ label = "【基础】", key = "base" },
{ label = "【加成】", key = "mult" },
{ label = "【总】", key = "total" },
						}
					}
					t_insert(breakdown.TotalDegen.rowList, {
						type = damageType,
						base = s_format("%.1f", baseVal),
						mult = s_format("x %.2f", output[damageType.."TakenDotMult"]),
						total = s_format("%.1f", total),
					})
				end
			end
		end
	end
	if output.TotalDegen then
		if output.MindOverMatter > 0 and output.LifeRegen >= output.EnergyShieldRegen then
			local lifeDegen = output.TotalDegen * (1 - output.MindOverMatter / 100)
			local manaDegen = output.TotalDegen * output.MindOverMatter / 100
			output.NetLifeRegen = output.LifeRegen - lifeDegen
			output.NetManaRegen = output.ManaRegen - manaDegen
			if breakdown then
				breakdown.NetLifeRegen = {
s_format("%.1f ^8(总生命回复)", output.LifeRegen),
s_format("- %.1f ^8(总生命回复)", lifeDegen),
					s_format("= %.1f", output.NetLifeRegen),
				}
				breakdown.NetManaRegen = {
s_format("%.1f ^8(总魔力回复)", output.ManaRegen),
s_format("- %.1f ^8(总魔力回复)", manaDegen),
					s_format("= %.1f", output.NetManaRegen),
				}
			end
		else
			local totalRegen = output.LifeRegen + (modDB:Flag(nil, "EnergyShieldProtectsMana") and 0 or output.EnergyShieldRegen)
			output.NetLifeRegen = totalRegen - output.TotalDegen
			if breakdown then
				breakdown.NetLifeRegen = {
s_format("%.1f ^8(总生命%s 回复)", totalRegen, modDB:Flag(nil, "EnergyShieldProtectsMana") and "" or " + 能量护盾"),
s_format("- %.1f ^8(总降低回复)", output.TotalDegen),
					s_format("= %.1f", output.NetLifeRegen),
				}
			end
		end
	end

	-- Incoming hit damage multipliers
	actor.damageShiftTable = wipeTable(actor.damageShiftTable)
	for _, damageType in ipairs(dmgTypeList) do
		-- Build damage shift table
		local shiftTable = { }
		local destTotal = 0
		for _, destType in ipairs(dmgTypeList) do
			if destType ~= damageType then
				shiftTable[destType] = modDB:Sum("BASE", nil, damageType.."DamageTakenAs"..destType, isElemental[damageType] and "ElementalDamageTakenAs"..destType or nil)
				destTotal = destTotal + shiftTable[destType]
			end
		end
		if destTotal > 100 then
			local factor = 100 / destTotal
			for destType, portion in pairs(shiftTable) do
				shiftTable[destType] = portion * factor
			end
			destTotal = 100
		end
		shiftTable[damageType] = 100 - destTotal
		actor.damageShiftTable[damageType] = shiftTable

		-- Calculate incoming damage multiplier
		local mult = 0
		if breakdown then
			breakdown[damageType.."TakenHitMult"] = { 
label = "击中伤害承受为",
				rowList = { },
				colList = {
{ label = "【类型】", key = "type" },
{ label = "【减免】", key = "resist" },
{ label = "【承受】", key = "taken" },
{ label = "【最终】", key = "final" },
				},
			}
		end
		for _, destType in ipairs(dmgTypeList) do
			local portion = shiftTable[destType]
			if portion > 0 then
				local resist = output[destType.."ResistWhenHit"] or output[destType.."Resist"]
				if damageType == "Physical" and destType == "Physical" then
					-- Factor in armour for Physical taken as Physical
					local damage = env.configInput.enemyPhysicalHit or env.data.monsterDamageTable[env.enemyLevel] * 1.5
					local armourReduct = calcs.armourReduction(output.Armour, damage * portion / 100)
					resist = m_min(90, resist + armourReduct)
					output.PhysicalDamageReduction = resist
					if breakdown then
						breakdown.PhysicalDamageReduction = {
s_format("敌人物理击中伤害: %d ^8(%s 配置界面)", damage, env.configInput.enemyPhysicalHit and "覆盖了" or "可以从"),
						}
						if portion < 100 then
t_insert(breakdown.PhysicalDamageReduction, s_format("承受为物理部分: %d%%", portion))
						end
t_insert(breakdown.PhysicalDamageReduction, s_format("护甲减免: %d%%", armourReduct))
					end
				end
				local takenMult = output[destType.."TakenHit"]
				local final = portion / 100 * (1 - resist / 100) * takenMult
				mult = mult + final
				if breakdown then
					t_insert(breakdown[damageType.."TakenHitMult"].rowList, {
						type = s_format("%d%% as %s", portion, destType),
						resist = s_format("x %.2f", 1 - resist / 100),
						taken = takenMult ~= 1 and s_format("x %.2f", takenMult),
						final = s_format("x %.2f", final),
					})
				end
			end
		end
		output[damageType.."TakenHitMult"] = mult
	end

	-- Other defences: block, dodge, stun recovery/avoidance
	do
	
		
		output.MovementSpeedMod = calcLib.mod(modDB, nil, "MovementSpeed")
		if modDB:Flag(nil, "MovementSpeedCannotBeBelowBase") then
			output.MovementSpeedMod = m_max(output.MovementSpeedMod, 1)
		end	
		
		local movementSpeedOverride = modDB:Override(nil, "MovementSpeed")	
		if movementSpeedOverride  then			
			output.EffectiveMovementSpeedMod=movementSpeedOverride* output.ActionSpeedMod
		else			
			output.EffectiveMovementSpeedMod = output.MovementSpeedMod * output.ActionSpeedMod
		end	
		
		if movementSpeedOverride then 
			if breakdown then
			breakdown.EffectiveMovementSpeedMod = { }
			breakdown.multiShow(breakdown.EffectiveMovementSpeedMod, {
			{ "x %.2f ^8(移动速度加成)", output.MovementSpeedMod },			
			{ "=> ^8(移动速度为基础移动速度的 %d%%)", movementSpeedOverride*100 },
			{ "x %.2f ^8(动作速度加成)", output.ActionSpeedMod },	
			total = s_format("= %.2f ^8(有效移动速度加成)", output.EffectiveMovementSpeedMod)
						})	
			end
		else
			if breakdown then
			breakdown.EffectiveMovementSpeedMod = { }
			breakdown.multiChain(breakdown.EffectiveMovementSpeedMod, {
			{ "%.2f ^8(移动速度加成)", output.MovementSpeedMod },
			{ "%.2f ^8(动作速度加成)", output.ActionSpeedMod },
			total = s_format("= %.2f ^8(有效移动速度加成)", output.EffectiveMovementSpeedMod)
						})
			end
		end 
		
		output.BlockChanceMax = modDB:Sum("BASE", nil, "BlockChanceMax")
		local baseBlockChance = 0
		if actor.itemList["Weapon 2"] and actor.itemList["Weapon 2"].armourData then
			baseBlockChance = baseBlockChance + actor.itemList["Weapon 2"].armourData.BlockChance
		end
		if actor.itemList["Weapon 3"] and actor.itemList["Weapon 3"].armourData then
			baseBlockChance = baseBlockChance + actor.itemList["Weapon 3"].armourData.BlockChance
		end
		output.ShieldBlockChance = baseBlockChance
		output.BlockChance = m_min((baseBlockChance + modDB:Sum("BASE", nil, "BlockChance")) * calcLib.mod(modDB, nil, "BlockChance"), output.BlockChanceMax) 
		if modDB:Flag(nil, "SpellBlockChanceMaxIsBlockChanceMax") then
			output.SpellBlockChanceMax = output.BlockChanceMax
		else
			output.SpellBlockChanceMax = modDB:Sum("BASE", nil, "SpellBlockChanceMax")
		end
		if modDB:Flag(nil, "SpellBlockChanceIsBlockChance") then
			output.SpellBlockChance = output.BlockChance
		else
			output.SpellBlockChance = m_min(modDB:Sum("BASE", nil, "SpellBlockChance") * calcLib.mod(modDB, nil, "SpellBlockChance"), output.SpellBlockChanceMax) 
		end
		if breakdown then
			breakdown.BlockChance = breakdown.simple(baseBlockChance, nil, output.BlockChance, "BlockChance")
			breakdown.SpellBlockChance = breakdown.simple(0, nil, output.SpellBlockChance, "SpellBlockChance")
		end
		if modDB:Flag(nil, "CannotBlockAttacks") then
			output.BlockChance = 0
		end
		if modDB:Flag(nil, "CannotBlockSpells") then
			output.SpellBlockChance = 0
		end
		output.AttackDodgeChance = m_min(modDB:Sum("BASE", nil, "AttackDodgeChance"), 75)
		output.SpellDodgeChance = m_min(modDB:Sum("BASE", nil, "SpellDodgeChance"), 75)
		if env.mode_effective and modDB:Flag(nil, "DodgeChanceIsUnlucky") then
			output.AttackDodgeChance = output.AttackDodgeChance / 100 * output.AttackDodgeChance
			output.SpellDodgeChance = output.SpellDodgeChance / 100 * output.SpellDodgeChance
		end
		output.MeleeAvoidChance = 100 - (1 - output.MeleeEvadeChance / 100) * (1 - output.AttackDodgeChance / 100) * (1 - output.BlockChance / 100) * 100
		output.ProjectileAvoidChance = 100 - (1 - output.ProjectileEvadeChance / 100) * (1 - output.AttackDodgeChance / 100) * (1 - output.BlockChance / 100) * 100
		output.SpellAvoidChance = 100 - (1 - output.SpellDodgeChance / 100) * (1 - output.SpellBlockChance / 100) * 100
		if breakdown then
			breakdown.MeleeAvoidChance = { }
			breakdown.multiChain(breakdown.MeleeAvoidChance, {
{ "%.2f ^8(闪避失败的几率)", 1 - output.MeleeEvadeChance / 100 },
{ "%.2f ^8(躲避失败的几率)", 1 - output.AttackDodgeChance / 100 },
{ "%.2f ^8(格挡失败的几率)", 1 - output.BlockChance / 100 },
total = s_format("= %d%% ^8(被近战攻击命中的几率)", 100 - output.MeleeAvoidChance),
			})
			breakdown.ProjectileAvoidChance = { }
			breakdown.multiChain(breakdown.ProjectileAvoidChance, {
{ "%.2f ^8(闪避失败的几率)", 1 - output.ProjectileEvadeChance / 100 },
{ "%.2f ^8(躲避失败的几率)", 1 - output.AttackDodgeChance / 100 },
{ "%.2f ^8(格挡失败的几率)", 1 - output.BlockChance / 100 },
total = s_format("= %d%% ^8(被投射物攻击命中的几率)", 100 - output.ProjectileAvoidChance),
			})
			breakdown.SpellAvoidChance = { }
			breakdown.multiChain(breakdown.SpellAvoidChance, {
{ "%.2f ^8(躲避失败的几率)", 1 - output.SpellDodgeChance / 100 },
{ "%.2f ^8(格挡失败的几率)", 1 - output.SpellBlockChance / 100 },
total = s_format("= %d%% ^8(被法术伤害击中的几率)", 100 - output.SpellAvoidChance),
			})
		end
		local stunChance = 100 - m_min(modDB:Sum("BASE", nil, "AvoidStun"), 100)
		if output.EnergyShield > output.Life * 2 then
			stunChance = stunChance * 0.5
		end
		output.StunAvoidChance = 100 - stunChance
		if output.StunAvoidChance >= 100 then
			output.StunDuration = 0
			output.BlockDuration = 0
		else
			output.StunDuration = 0.35 / (1 + modDB:Sum("INC", nil, "StunRecovery") / 100)
			output.BlockDuration = 0.35 / (1 + modDB:Sum("INC", nil, "StunRecovery", "BlockRecovery") / 100)
			if breakdown then
				breakdown.StunDuration = {
"0.35s ^8(基础)",
s_format("/ %.2f ^8(提高/降低回复)", 1 + modDB:Sum("INC", nil, "StunRecovery") / 100),
					s_format("= %.2fs", output.StunDuration)
				}
				breakdown.BlockDuration = {
"0.35s ^8(基础)",
s_format("/ %.2f ^8(提高/降低回复)", 1 + modDB:Sum("INC", nil, "StunRecovery", "BlockRecovery") / 100),
					s_format("= %.2fs", output.BlockDuration)
				}
			end
		end
		output.LightRadiusMod = calcLib.mod(modDB, nil, "LightRadius")
		if breakdown then
			breakdown.LightRadiusMod = breakdown.mod(nil, "LightRadius")
		end
	end
end
