-- This file is automatically generated, do not edit!
-- Path of Building
--
-- Spectre Data
-- Monster data (c) Grinding Gear Games
--
local minions, mod = ...

-- Blackguard
minions["Metadata/Monsters/Axis/AxisCaster"] = {
	name = "乌旗守卫法师",
	life = 0.9,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.305,
	attackRange = 40,
	weaponType1 = "Wand",
	weaponType2 = "Shield",
	skillList = {
		"Melee",
		"SkeletonSpark",
		"MonsterLightningThorns",
		"AxisClaimSoldierMinions",
	},
	modList = {
		-- MonsterCastsSparkText
		-- MonsterCastsLightningThornsText
	},
}
minions["Metadata/Monsters/Axis/AxisCasterArc"] = {
	name = "乌旗守卫雷使",
	life = 0.9,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.305,
	attackRange = 40,
	weaponType1 = "Wand",
	weaponType2 = "Shield",
	skillList = {
		"Melee",
		"MonsterLightningThorns",
		"MonsterArc",
		"AxisClaimSoldierMinions",
	},
	modList = {
		-- MonsterCastsArcText
		-- MonsterCastsLightningThornsText
	},
}
minions["Metadata/Monsters/Axis/AxisEliteSoldier3Champion"] = {
	name = "日耀斗士",
	life = 1.5,
	fireResist = 20,
	coldResist = 20,
	lightningResist = 20,
	chaosResist = 0,
	damage = 1.12,
	damageSpread = 0.2,
	attackTime = 1.245,
	attackRange = 9,
	weaponType1 = "Two Handed Sword",
	skillList = {
		"Melee",
		"BreachCleave",
		"AxisDoubleStrikeTrigger",
		"SummonFlamingAnimatedWeapons",
		"SolarisChampionFlameVortex",
	},
	modList = {
		mod("PhysicalDamageGainAsFire", "BASE", 100), -- MonsterPhysicalAddedAsFireSkeletonMaps
	},
}
minions["Metadata/Monsters/Axis/AxisExperimenter"] = {
	name = "生灵实验者",
	life = 0.96,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 75,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Wand",
	skillList = {
		"Melee",
		"SkeletonTemporalChains",
		"MonsterDetonateDeadExperimenter",
	},
	modList = {
		-- MonsterCastsTemporalChainsText
		-- MonsterDetonatesCorpsesText
	},
}
minions["Metadata/Monsters/Axis/AxisExperimenter2"] = {
	name = "躯体雕塑者",
	life = 0.96,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 75,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Wand",
	skillList = {
		"Melee",
		"MonsterEnfeeble",
		"MonsterProjectileWeakness",
		"MonsterDetonateDeadExperimenter",
	},
	modList = {
		-- MonsterDetonatesCorpsesText
		-- MonsterCastsEnfeebleCurseText
		-- MonsterCastsProjectileWeaknessCurseText
	},
}
minions["Metadata/Monsters/Axis/AxisExperimenterRaiseZombie"] = {
	name = "复生师",
	life = 0.96,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 75,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Wand",
	skillList = {
		"Melee",
		"MonsterEnfeeble",
		"NecromancerRaiseZombie",
	},
	modList = {
		-- MonsterCastsEnfeebleCurseText
		-- MonsterRaisesZombiesText
	},
}
-- Bandit
minions["Metadata/Monsters/Bandits/BanditBowExplosiveArrow"] = {
	name = "克雷顿的狙击手",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"BanditExplosiveArrow",
	},
	modList = {
		-- MonsterFiresExplosiveArrowText
	},
}
minions["Metadata/Monsters/Bandits/BanditBowPoisonArrow"] = {
	name = "阿莉亚的穿心之弓",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterCausticArrow",
	},
	modList = {
		-- MonsterFiresCausticArrowsText
	},
}
minions["Metadata/Monsters/Bandits/BanditMeleeWarlordsMarkMaul"] = {
	name = "欧克的信徒",
	life = 1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.35,
	attackRange = 5,
	weaponType1 = "Two Handed Mace",
	skillList = {
		"Melee",
		"MonsterWarlordsMark",
	},
	modList = {
		-- MonsterCastsWarlordsMarkCurseText
	},
}
-- Beast
minions["Metadata/Monsters/Beasts/BeastCaveDegenAura"] = {
	name = "毒息巨兽",
	life = 2.1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.605,
	attackRange = 12,
	damageFixup = 0.33,
	skillList = {
		"Melee",
		"ChaosDegenAura",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupComplete
	},
}
minions["Metadata/Monsters/Beasts/BeastCleaveEnduringCry"] = {
	name = "长毛碎骨兽",
	life = 2.1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.605,
	attackRange = 12,
	damageFixup = 0.33,
	skillList = {
		"Melee",
		"MonsterEnduringCry",
		"BeastCleave",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupComplete
		-- MonsterUsesEnduringCryText
		-- MonsterCleavesText
	},
}
-- Blood apes
minions["Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage"] = {
	name = "冷血酋长",
	life = 1.5,
	fireResist = 75,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.905,
	attackRange = 5,
	damageFixup = 0.22,
	weaponType1 = "One Handed Mace",
	skillList = {
		"Melee",
		"BloodChieftainSummonMonkeys",
		"MassFrenzy",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupLarge
		-- MonsterSummonsMonkeysText
		-- MonsterCastsMassFrenzyText
	},
}
-- Bull
minions["Metadata/Monsters/Bull/Bull"] = {
	name = "战斗公牛",
	life = 2.38,
	fireResist = 0,
	coldResist = 40,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.28,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	weaponType1 = "One Handed Mace",
	skillList = {
		"Melee",
		"BullCharge",
	},
	modList = {
	},
}
-- Cage Spider
minions["Metadata/Monster/CageSpider/CageSpider2"] = {
	name = "恶魔奴隶",
	life = 4.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1.28,
	damageSpread = 0.2,
	attackTime = 1.755,
	attackRange = 10,
	skillList = {
		"Melee",
		"CageSpiderCycloneTriggerSandstorms",
		"CageSpiderSandSpark",
	},
	modList = {
	},
}
-- Cannibals
minions["Metadata/Monsters/Cannibal/CannibalMaleChampion"] = {
	name = "食人族拥护者",
	life = 1.44,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.2,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 5,
	weaponType1 = "One Handed Mace",
	skillList = {
		"Melee",
		"MonsterFlameRedCannibal",
	},
	modList = {
		-- StanceScavengerRun
	},
}
-- Goatmen
minions["Metadata/Monsters/Goatman/GoatmanLeapSlam"] = {
	name = "羊人",
	life = 1,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.455,
	attackRange = 5,
	skillList = {
		"MonsterLeapSlam",
		"Melee",
		"GoatmanWait",
		"GoatmanWait2",
	},
	modList = {
		-- MonsterLeapsOntoEnemiesText
	},
}
minions["Metadata/Monsters/Goatman/GoatmanLightningLeapSlamMaps"] = {
	name = "长须羊人",
	life = 1,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.8,
	damageSpread = 0.2,
	attackTime = 1.455,
	attackRange = 5,
	skillList = {
		"MonsterLeapSlam",
		"Melee",
		"GoatmanWait",
		"GoatmanWait2",
	},
	modList = {
		mod("PhysicalDamageGainAsLightning", "BASE", 100), -- MonsterPhysicalAddedAsLightningSkeletonMaps
		-- MonsterLeapsOntoEnemiesText
	},
}
minions["Metadata/Monsters/Goatman/GoatmanShamanFireball"] = {
	name = "羊人术师",
	life = 1,
	energyShield = 0.2,
	fireResist = 75,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	weaponType1 = "Staff",
	skillList = {
		"MonsterFireball",
		"GoatmanMoltenShell",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		mod("Speed", "INC", -50, ModFlag.Cast), -- MonsterGoatmanShamanCastSpeed
		-- MonsterCastsFireballText
		-- MonsterCastsMoltenShellText
	},
}
minions["Metadata/Monsters/Goatman/GoatmanShamanFireChampion"] = {
	name = "羊人炎咒师",
	life = 1.4,
	energyShield = 0.2,
	fireResist = 75,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	weaponType1 = "Staff",
	skillList = {
		"MonsterFireball",
		"GoatmanMoltenShell",
		"GoatmanFireMagmaOrb",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		mod("Speed", "INC", -50, ModFlag.Cast), -- MonsterGoatmanShamanCastSpeed
	},
}
minions["Metadata/Monsters/Goatman/GoatmanShamanLightning"] = {
	name = "长须术师",
	life = 1,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	weaponType1 = "Staff",
	skillList = {
		"Melee",
		"MonsterShockNova",
		"MonsterSpark",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		mod("Speed", "INC", -50, ModFlag.Cast), -- MonsterGoatmanShamanCastSpeed
		-- MonsterCastsShockNovaText
		-- MonsterCastsSparkText
	},
}
minions["Metadata/Monsters/Goatman/MountainGoatmanShamanIceSpear"] = {
	name = "羊人萨满",
	life = 1,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	weaponType1 = "Staff",
	skillList = {
		"MountainGoatmanIceSpear",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		mod("Speed", "INC", -50, ModFlag.Cast), -- MonsterGoatmanShamanCastSpeed
		-- MonsterCastsIceSpearText
	},
}
-- Miscreation
minions["Metadata/Monsters/DemonFemale/DemonFemale"] = {
	name = "古灵实验者: 长鞭",
	life = 0.99,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.88,
	damageSpread = 0.2,
	attackTime = 2.445,
	attackRange = 16,
	skillList = {
		"Melee",
	},
	modList = {
		-- MonsterChanceToVulnerabilityOnHit2
	},
}
minions["Metadata/Monsters/DemonModular/DemonFemaleRanged"] = {
	name = "古灵实验者: 扫荡者",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.84,
	damageSpread = 0.2,
	attackTime = 3,
	attackRange = 4,
	skillList = {
		"DemonFemaleRangedProjectile",
	},
	modList = {
		mod("PhysicalDamageConvertToFire", "BASE", 50), -- MonsterConvertToFireDamage2
	},
}
minions["Metadata/Monsters/DemonModular/DemonModularBladeVortex"] = {
	name = "派蒂的古灵实验者",
	life = 1.5,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	skillList = {
		"Melee",
		"DemonModularBladeVortex",
		"DemonModularBladeVortexSpectre",
	},
	modList = {
	},
}
minions["Metadata/Monsters/DemonModular/DemonModularFire"] = {
	name = "古灵实验者: 烈火",
	life = 1,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	skillList = {
		"Melee",
		"MonsterRighteousFire",
		"MonsterRighteousFireWhileSpectred",
	},
	modList = {
		-- MonsterCastsUnholyFireText
	},
}
-- Maw
minions["Metadata/Monsters/Frog/Frog"] = {
	name = "恶臭裂齿兽",
	life = 1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.455,
	attackRange = 5,
	skillList = {
		"MonsterLeapSlam",
		"Melee",
	},
	modList = {
		-- MonsterLeapsOntoEnemiesText
	},
}
minions["Metadata/Monsters/Frog/Frog2"] = {
	name = "阴暗之兽",
	life = 1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.455,
	attackRange = 5,
	skillList = {
		"MonsterLeapSlam",
		"Melee",
	},
	modList = {
		-- MonsterLeapsOntoEnemiesText
	},
}
-- Chimeral
minions["Metadata/Monsters/GemMonster/Iguana"] = {
	name = "彩羽龙蜥",
	life = 1.25,
	energyShield = 0.2,
	fireResist = 52,
	coldResist = 52,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.12,
	damageSpread = 0.2,
	attackTime = 1.005,
	attackRange = 7,
	skillList = {
		"IguanaProjectile",
		"Melee",
	},
	modList = {
		-- MonsterSuppressingFire
		-- DisplayMonsterSuppressingFire
	},
}
-- Ghost pirate
minions["Metadata/Monsters/GhostPirates/GhostPirateBlackBowMaps"] = {
	name = "怨灵弓手",
	life = 0.96,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.48,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterPuncture",
	},
	modList = {
		mod("PhysicalDamageGainAsLightning", "BASE", 100), -- MonsterPhysicalAddedAsLightningSkeletonMaps
		-- MonsterCastsPunctureText
	},
}
minions["Metadata/Monsters/GhostPirates/GhostPirateBlackFlickerStrikeMaps"] = {
	name = "水手咒灵",
	life = 1,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.8,
	damageSpread = 0.2,
	attackTime = 1.65,
	attackRange = 6,
	weaponType1 = "One Handed Sword",
	weaponType2 = "Shield",
	skillList = {
		"Melee",
		"MonsterFlickerStrike",
	},
	modList = {
		mod("PhysicalDamageGainAsLightning", "BASE", 100), -- MonsterPhysicalAddedAsLightningSkeletonMaps
		-- MonsterUsesFlickerStrikeText
	},
}
minions["Metadata/Monsters/GhostPirates/GhostPirateGreenBladeVortex"] = {
	name = "恶棍怨灵",
	life = 1.5,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.65,
	attackRange = 6,
	weaponType1 = "One Handed Sword",
	weaponType2 = "Shield",
	skillList = {
		"Melee",
		"GhostPirateBladeVortex",
		"GhostPirateBladeVortexSpectre",
	},
	modList = {
		mod("PhysicalDamageConvertToLightning", "BASE", 50), -- MonsterElementalSkeletonLightning
	},
}
-- Undying grappler
minions["Metadata/Monsters/Grappler/Grappler"] = {
	name = "不朽格斗者",
	life = 1,
	fireResist = 20,
	coldResist = 20,
	lightningResist = 20,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.245,
	attackRange = 5,
	skillList = {
		"Melee",
		"MonsterFlickerStrike",
		"MonsterDischarge",
	},
	modList = {
		-- MonsterGainsPowerChargeOnKinDeath
		-- MonsterUsesFlickerStrikeText
		-- MonsterCastsDischargeText
	},
}
minions["Metadata/Monsters/Grappler/GrapplerLabyrinth"] = {
	name = "阴影潜伏者",
	life = 1,
	fireResist = 20,
	coldResist = 20,
	lightningResist = 20,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.245,
	attackRange = 5,
	skillList = {
		"Melee",
		"MonsterFlickerStrike",
		"MonsterDischarge",
	},
	modList = {
		-- MonsterGainsPowerChargeOnKinDeath
		-- MonsterUsesFlickerStrikeText
		-- MonsterCastsDischargeText
	},
}
-- Ribbon
minions["Metadata/Monsters/Guardians/GuardianFire"] = {
	name = "火炎哨带",
	life = 1.8,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.2,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	skillList = {
		"MonsterMultiFireball",
		"MonsterSplitFireball",
		"MonsterLesserMultiFireball",
		"MonsterMultiFireballSpectre",
		"MonsterSplitFireballSpectre",
		"MonsterLesserMultiFireballSpectre",
	},
	modList = {
		-- MonsterCastsAugmentedFireballsText
	},
}
minions["Metadata/Monsters/Guardians/GuardianFire_BlueMaps"] = {
	name = "寒霜哨带",
	life = 1.8,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.2,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	skillList = {
		"MonsterMultiIceSpear",
		"MonsterSplitIceSpear",
		"MonsterLesserMultiIceSpear",
	},
	modList = {
	},
}
minions["Metadata/Monsters/Guardians/GuardianLightning"] = {
	name = "雷电之带",
	life = 1.8,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 85,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.2,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	skillList = {
		"GuardianArc",
	},
	modList = {
		-- MonsterChannelsLightningText
	},
}
-- Gut flayer
minions["Metadata/Monsters/HalfSkeleton/HalfSkeleton"] = {
	name = "裂脏剥皮刃",
	life = 1.32,
	fireResist = 20,
	coldResist = 20,
	lightningResist = 20,
	chaosResist = 0,
	damage = 1.1,
	damageSpread = 0.3,
	attackTime = 1.5,
	attackRange = 8,
	weaponType1 = "Dagger",
	skillList = {
		"Melee",
		"HalfSkeletonPuncture",
	},
	modList = {
		-- MonsterCastsPunctureText
	},
}
-- Solar Guard
minions["Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam"] = {
	name = "太阳军卫",
	life = 1.98,
	energyShield = 0.1,
	fireResist = 75,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.12,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"SpecialBeamCannon",
		"HolyFireElementalFireball",
	},
	modList = {
		mod("PhysicalDamageGainAsFire", "BASE", 60), -- MonsterPhysicalAddedAsFireHolyFireElemental
	},
}
-- Construct
minions["Metadata/Monsters/incaminion/Fragment"] = {
	name = "远古创造物",
	life = 0.7,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 40,
	damage = 0.84,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 25,
	skillList = {
		"IncaMinionProjectile",
	},
	modList = {
	},
}
-- Carrion queen
minions["Metadata/Monsters/InsectSpawner/InsectSpawner"] = {
	name = "食腐虫后",
	life = 2.45,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.56,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	skillList = {
		"InsectSpawnerSpit",
		"InsectSpawnerSpawn",
	},
	modList = {
		mod("PhysicalDamageConvertToFire", "BASE", 50), -- MonsterConvertToFireDamage2
	},
}
-- Kaom's Warriors
minions["Metadata/Monsters/KaomWarrior/KaomWarrior2"] = {
	name = "卡鲁族勇士",
	life = 1.43,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.16,
	damageSpread = 0.2,
	attackTime = 1.755,
	attackRange = 7,
	skillList = {
		"Melee",
		"KaomWarriorMoltenStrike",
	},
	modList = {
	},
}
minions["Metadata/Monsters/KaomWarrior/KaomWarrior3"] = {
	name = "卡鲁族勇士",
	life = 1.43,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.16,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	skillList = {
		"Melee",
		"KaomWarriorGroundSlam",
	},
	modList = {
	},
}
minions["Metadata/Monsters/KaomWarrior/KaomWarrior7"] = {
	name = "拉维安加的侍祭（图腾）",
	life = 1.43,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.16,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	skillList = {
		"Melee",
		"KaomFireBeamTotem",
		"KaomFireBeamTotemSpectre",
	},
	modList = {
		-- KaomWarriorSlowFireBeam
		mod("TotemLife", "INC", 250), -- KaomWarriorSlowFireBeam2
		-- MonsterKillTrapsMinesTotemsOnDeath
	},
}
-- Kitava's Cultist
minions["Metadata/Monsters/KitavaCultist/VaalCultistSpearLightningChampionDelve_"] = {
	name = "复活的瓦尔拥护者",
	life = 5.4,
	fireResist = 35,
	coldResist = 35,
	lightningResist = 35,
	chaosResist = 35,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 12,
	weaponType1 = "One Handed Sword",
	skillList = {
		"FireballIncusionLightning",
		"DelayedLightningSpark",
		"SummonedSparkDaemonLightning",
	},
	modList = {
		-- MonsterDelveDropModifiers
	},
}
-- Kitava's Herald
minions["Metadata/Monster/KitavaDemon/KitavaDemon"] = {
	name = "奇塔弗的信使",
	life = 3.6,
	fireResist = 37,
	coldResist = 37,
	lightningResist = 37,
	chaosResist = 0,
	damage = 1.4,
	damageSpread = 0.2,
	attackTime = 1.455,
	attackRange = 8,
	damageFixup = 0.33,
	weaponType1 = "One Handed Sword",
	skillList = {
		"KitavaDemonLeapSlam",
		"KitavaDemonCleave",
		"KitavaDemonWhirlingBlades",
		"KitavaDemonXMortar",
		"Melee",
	},
	modList = {
		-- MonsterInflictsBleedingText
		-- MonsterSpeedAndDamageFixupComplete
	},
}
-- Birdman
minions["Metadata/Monsters/Kiweth/Kiweth"] = {
	name = "丛林反刍鸟",
	life = 1.54,
	energyShield = 0.2,
	fireResist = 0,
	coldResist = 40,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.68,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	damageFixup = 0.11,
	skillList = {
		"Melee",
		"BirdmanConsumeCorpse",
		"BirdmanBloodProjectile",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		-- MonsterLesserFarShot
	},
}
minions["Metadata/Monsters/Kiweth/KiwethSeagull"] = {
	name = "狂食反刍鸟",
	life = 1.3,
	energyShield = 0.12,
	fireResist = 0,
	coldResist = 40,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.56,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	damageFixup = 0.11,
	skillList = {
		"Melee",
		"BirdmanConsumeCorpse",
		"BirdmanBloodProjectile",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		-- MonsterLesserFarShot
	},
}
-- Helion
minions["Metadata/Monsters/Lion/LionDesertSkinPuncture"] = {
	name = "沙丘地狱犬",
	life = 1,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 8,
	skillList = {
		"Melee",
		"MonsterPuncture",
	},
	modList = {
		-- MonsterCastsPunctureText
	},
}
-- Knitted horror
minions["Metadata/Monsters/MassSkeleton/MassSkeleton"] = {
	name = "恐惧创造物",
	life = 2.25,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 9,
	skillList = {
		"Melee",
		"SkeletonMassBowProjectile",
	},
	modList = {
		-- MonsterCastsPunctureText
	},
}
-- Miners
minions["Metadata/Monsters/Miner/MinerLantern"] = {
	name = "疮痕持灯者",
	life = 1.21,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.21,
	damageSpread = 0.2,
	attackTime = 1.395,
	attackRange = 7,
	skillList = {
		"MinerThrowFire",
		"MinerThrowFireSpectre",
	},
	modList = {
		-- IgniteArtVariation
	},
}
minions["Metadata/Monsters/Miner/MinerLanternCrystalVeins"] = {
	name = "疮痕照明者",
	life = 1.21,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.21,
	damageSpread = 0.2,
	attackTime = 1.395,
	attackRange = 7,
	skillList = {
		"MinerThrowFire",
		"MinerThrowFireSpectre",
	},
	modList = {
		-- IgniteArtVariation
	},
}
-- Voidbearer
minions["Metadata/Monsters/Monkeys/FlameBearer"] = {
	name = "虚影炎兽",
	life = 1.1,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 5,
	skillList = {
		"Melee",
		"FlamebearerFlameBlue",
	},
	modList = {
	},
}
-- Stone golem
minions["Metadata/Monsters/MossMonster/FireMonster"] = {
	name = "炽炎魔像",
	life = 2.7,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.695,
	attackRange = 5,
	damageFixup = 0.33,
	skillList = {
		"Melee",
		"FireMonsterWhirlingBlades",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupComplete
		-- MonsterRollsOverEnemiesText
		-- ImmuneToLavaDamage
	},
}
-- Necromancer
minions["Metadata/Monsters/Necromancer/NecromancerConductivity"] = {
	name = "恶咒之主",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerConductivity",
	},
	modList = {
		-- MonsterRaisesUndeadText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
		-- MonsterCastsConductivityText
	},
}
minions["Metadata/Monsters/Necromancer/NecromancerEnfeebleCurse"] = {
	name = "恶魔咒师",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerEnfeeble",
	},
	modList = {
		-- MonsterRaisesUndeadText
		-- MonsterCastsEnfeebleCurseText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
	},
}
minions["Metadata/Monsters/Necromancer/NecromancerFlamability"] = {
	name = "烈火咒师",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerFlammability",
	},
	modList = {
		-- MonsterRaisesUndeadText
		-- MonsterCastsFlammabilityText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
		-- ImmuneToLavaDamage
	},
}
minions["Metadata/Monsters/Necromancer/NecromancerFrostbite"] = {
	name = "死亡咒师",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerFrostbite",
	},
	modList = {
		-- MonsterRaisesUndeadText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
		-- MonsterCastsFrostbiteText
	},
}
minions["Metadata/Monsters/Necromancer/NecromancerElementalWeakness"] = {
	name = "玷污咒师",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerElementalWeakness",
	},
	modList = {
		-- MonsterRaisesUndeadText
		-- MonsterCastsElementralWeaknessCurseText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
	},
}
minions["Metadata/Monsters/Necromancer/NecromancerProjectileWeakness"] = {
	name = "死灵法师",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerProjectileWeakness",
	},
	modList = {
		-- MonsterRaisesUndeadText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
		-- MonsterCastsProjectileWeaknessCurseText
	},
}
minions["Metadata/Monsters/Necromancer/NecromancerVulnerability"] = {
	name = "死灵法师",
	life = 1.86,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 0.98,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 7,
	skillList = {
		"Melee",
		"NecromancerReviveSkeleton",
		"NecromancerVulnerability",
	},
	modList = {
		-- MonsterRaisesUndeadText
		mod("Speed", "INC", -80, ModFlag.Cast, KeywordFlag.Curse), -- MonsterCurseCastSpeedPenalty
		-- MonsterCastsVulnerabilityCurseText
	},
}
-- Undying bomber
minions["Metadata/Monsters/Pyromaniac/PyromaniacFire"] = {
	name = "不朽之炎",
	life = 1,
	fireResist = 75,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 5,
	skillList = {
		"PyroFireball",
		"PyroSuicideExplosion",
		"MonsterFireBomb",
	},
	modList = {
		-- MonsterThrowsFireBombsText
		-- MonsterExplodesOnItsTargetOnLowLifeText
		-- ImmuneToLavaDamage
	},
}
minions["Metadata/Monsters/Pyromaniac/PyromaniacPoison"] = {
	name = "不朽之毒",
	life = 1,
	fireResist = 75,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 5,
	skillList = {
		"Melee",
		"MonsterCausticBomb",
		"PyroChaosFireball",
	},
	modList = {
		-- MonsterThrowsPoisonBombsText
	},
}
-- Stygian revenant
minions["Metadata/Monsters/Revenant/Revenant"] = {
	name = "幽灵亡魂",
	life = 1.82,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 75,
	chaosResist = 0,
	damage = 1.4,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 8,
	skillList = {
		"RevenantReviveUndead",
		"RevenantSpellProjectile",
		"Melee",
		"RevenantSpellProjectileSpectre",
	},
	modList = {
	},
}
-- Sea witch
minions["Metadata/Monsters/Seawitch/SeaWitchFrostBolt"] = {
	name = "莫薇儿的宠儿",
	life = 1.44,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.02,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	skillList = {
		"SeaWitchWave",
		"Melee",
		"SeawitchFrostbolt",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
	},
}
minions["Metadata/Monsters/Seawitch/SeaWitchScreech"] = {
	name = "冥曲海妖",
	life = 1.02,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.02,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	skillList = {
		"SeaWitchWave",
		"Melee",
		"SeaWitchScreech",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
	},
}
minions["Metadata/Monsters/Seawitch/SeaWitchSpawnExploding"] = {
	name = "莫薇儿的侍女",
	life = 1.02,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.02,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	skillList = {
		"SeaWitchWave",
		"Melee",
		"SummonExplodingSpawn",
		"SeaWitchScreech",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		-- MonsterSummonsExplodingSpawnText
	},
}
minions["Metadata/Monsters/Seawitch/SeaWitchSpawnTemporalChains"] = {
	name = "海妖爱女",
	life = 1.02,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.02,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	skillList = {
		"SeaWitchWave",
		"Melee",
		"SkeletonTemporalChains",
		"SummonSpawn",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		-- MonsterSummonsSpawnText
		-- MonsterCastsTemporalChainsText
	},
}
minions["Metadata/Monsters/Seawitch/SeaWitchVulnerabilityCurse"] = {
	name = "海妖家臣",
	life = 1.02,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 75,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.02,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 6,
	damageFixup = 0.11,
	skillList = {
		"SeaWitchWave",
		"Melee",
		"SkeletonVulnerability",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupSmall
		-- MonsterCastsVulnerabilityCurseText
	},
}
-- Skeleton
minions["Metadata/Monsters/Skeletons/SkeletonBowPuncture"] = {
	name = "嗜血枯骨",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterPuncture",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterCastsPunctureText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonBowLightning"] = {
	name = "盗猎者残骨",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterLightningArrow",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterFiresLightningArrowsText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonMeleeLarge"] = {
	name = "巨型骸骨斗士",
	life = 1.98,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1.8,
	damageSpread = 0.2,
	attackTime = 2.25,
	attackRange = 7,
	weaponType1 = "One Handed Mace",
	skillList = {
		"Melee",
	},
	modList = {
		-- MonsterNecromancerRaisable
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonBowLightning3"] = {
	name = "悲语之弦",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterLightningArrow",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterFiresLightningArrowsText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonCasterColdMultipleProjectiles"] = {
	name = "冰霜先锋",
	life = 0.84,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 40,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.605,
	attackRange = 46,
	skillList = {
		"SkeletonProjectileCold",
	},
	modList = {
		mod("ProjectileCount", "BASE", 2), -- MonsterMultipleProjectilesImplicit1
		-- MonsterNecromancerRaisable
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonCasterFireMultipleProjectiles2"] = {
	name = "狂炎术者",
	life = 0.84,
	energyShield = 0.4,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.605,
	attackRange = 46,
	skillList = {
		"SkeletonProjectileFire",
	},
	modList = {
		-- MonsterNecromancerRaisable
		mod("ProjectileCount", "BASE", 2), -- MonsterMultipleProjectilesImplicit1
		-- ImmuneToLavaDamage
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonBowPoison"] = {
	name = "瘟疫弓手",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterCausticArrow",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterFiresCausticArrowsText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonBowLightning2"] = {
	name = "不灭之弦",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterLightningArrow",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterFiresLightningArrowsText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonBowLightning4"] = {
	name = "罪恶之弓",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterLightningArrow",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterFiresLightningArrowsText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonCasterLightningSpark"] = {
	name = "雷能枯灵",
	life = 0.84,
	energyShield = 0.4,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.605,
	attackRange = 46,
	skillList = {
		"SkeletonProjectileLightning",
		"SkeletonSpark",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterCastsSparkText
	},
}
minions["Metadata/Monsters/Skeletons/SkeletonBowProjectileWeaknessCurse"] = {
	name = "咒灵射手",
	life = 0.96,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 0.6,
	damageSpread = 0.2,
	attackTime = 1.995,
	attackRange = 40,
	weaponType1 = "Bow",
	skillList = {
		"Melee",
		"MonsterProjectileWeakness",
	},
	modList = {
		-- MonsterNecromancerRaisable
		-- MonsterCastsProjectileWeaknessCurseText
	},
}
-- Snake
minions["Metadata/Monsters/Snake/SnakeMeleeSpit"] = {
	name = "丛林眼镜蛇",
	life = 0.8,
	fireResist = 30,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 30,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.65,
	attackRange = 7,
	skillList = {
		"Melee",
		"SnakeProjectile",
	},
	modList = {
		mod("PhysicalDamageConvertToChaos", "BASE", 30), -- MonsterSnakeChaos
	},
}
minions["Metadata/Monsters/Snake/SnakeScorpionMultiShot"] = {
	name = "棘刺巨蛇",
	life = 0.94,
	fireResist = 30,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 30,
	damage = 0.75,
	damageSpread = 0.2,
	attackTime = 1.65,
	attackRange = 7,
	skillList = {
		"Melee",
		"SnakeSpineProjectile",
	},
	modList = {
		mod("PhysicalDamageConvertToChaos", "BASE", 30), -- MonsterSnakeChaos
		mod("ProjectileCount", "BASE", 2), -- MonsterMultipleProjectilesImplicit1
	},
}
-- Spider
minions["Metadata/Monsters/Spiders/SpiderThornFlickerStrike"] = {
	name = "跃影巨蛛",
	life = 1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.44,
	attackRange = 6,
	skillList = {
		"Melee",
		"MonsterFlickerStrike",
	},
	modList = {
		-- MonsterUsesFlickerStrikeText
	},
}
-- Statue
minions["Metadata/Monsters/Statue/DaressoStatueLargeMaleSpear"] = {
	name = "巨型创造物",
	life = 5.76,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.3,
	damageSpread = 0.2,
	attackTime = 1.875,
	attackRange = 14,
	damageFixup = 0.33,
	weaponType1 = "One Handed Sword",
	skillList = {
		"Melee",
		"MonsterPuncture",
	},
	modList = {
		-- MonsterSpeedAndDamageFixupComplete
		-- MonsterCastsPunctureText
	},
}
-- Ophidian
minions["Metadata/Monsters/Taster/Taster"] = {
	name = "审阅者",
	life = 1,
	fireResist = 40,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.5,
	attackRange = 4,
	weaponType1 = "Dagger",
	skillList = {
		"Melee",
		"TarMortarTaster",
	},
	modList = {
	},
}
-- Undying
minions["Metadata/Monsters/Undying/CityStalkerMaleCasterArmour"] = {
	name = "不朽福音",
	life = 1.2,
	fireResist = 37,
	coldResist = 37,
	lightningResist = 37,
	chaosResist = 0,
	damage = 1.2,
	damageSpread = 0.2,
	attackTime = 1.245,
	attackRange = 5,
	skillList = {
		"Melee",
		"DelayedBlast",
		"MonsterProximityShield",
		"DelayedBlastSpectre",
	},
	modList = {
	},
}
minions["Metadata/Monsters/Undying/UndyingOutcastPuncture"] = {
	name = "不朽暗影",
	life = 1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.65,
	attackRange = 4,
	skillList = {
		"Melee",
		"MonsterPuncture",
	},
	modList = {
		-- MonsterCastsPunctureText
	},
}
minions["Metadata/Monsters/Undying/UndyingOutcastWhirlingBlades"] = {
	name = "不朽放逐者",
	life = 1,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 40,
	chaosResist = 0,
	damage = 1,
	damageSpread = 0.2,
	attackTime = 1.65,
	attackRange = 4,
	skillList = {
		"Melee",
		"UndyingWhirlingBlades",
	},
	modList = {
	},
}
-- Wicker Man
minions["Metadata/Monsters/WickerMan/WickerMan"] = {
	name = "诡异行者",
	life = 2.25,
	fireResist = 20,
	coldResist = 20,
	lightningResist = 20,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.755,
	attackRange = 8,
	weaponType1 = "One Handed Mace",
	skillList = {
		"Melee",
		"WickerManRighteousFire",
		"WickerManMoltenStrike",
		"MonsterRighteousFireWhileSpectred",
	},
	modList = {
	},
}
