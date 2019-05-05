-- Path of Building
--
-- Minion Data
-- Monster data (c) Grinding Gear Games
--
local minions, mod = ...

minions["RaisedZombie"] = {
	name = "魔卫",
	life = 2.55,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 2.19,
	damageSpread = 0.4,
	attackTime = 1.17,
	attackRange = 9,
	limit = "ActiveZombieLimit",
	skillList = {
		"Melee",
		"ZombieSlam",
	},
	modList = {
		mod("Armour", "INC", 40),
		mod("CannotBeEvaded", "FLAG", true, 0, 0, { type = "SkillId", skillId = "ZombieSlam" }) -- Still can't export minion skills, so...
	},
}
minions["SummonedChaosGolem"] = {
	name = "混沌魔像",
	life = 4.8,
	energyShield = 0.2,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 60,
	damage = 2.9,
	damageSpread = 0.2,
	attackTime = 1,
	attackRange = 6,
	limit = "ActiveGolemLimit",
	skillList = {
		"Melee",
		"ChaosElementalCascadeSummoned",
		"SandstormChaosElementalSummoned",
	},
	modList = {
	},
}
minions["SummonedFlameGolem"] = {
	name = "烈焰魔像",
	life = 3.75,
	energyShield = 0.4,
	fireResist = 70,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1,
	attackRange = 4,
	damageFixup = 0.22,
	limit = "ActiveGolemLimit",
	skillList = {
		"FireElementalFlameRedSummoned",
		"FireElementalMortarSummoned",
		"FireElementalConeSummoned",
	},
	modList = {
	},
}
minions["SummonedIceGolem"] = {
	name = "寒冰魔像",
	life = 4.05,
	energyShield = 0.4,
	fireResist = 40,
	coldResist = 70,
	lightningResist = 40,
	chaosResist = 20,
	damage = 3.06,
	damageSpread = 0.2,
	attackTime = 0.85,
	attackRange = 4,
	limit = "ActiveGolemLimit",
	skillList = {
		"Melee",
		"IceElementalIceCyclone",
		"IceElementalSpearSummoned",
	},
	modList = {
	},
}
minions["SummonedLightningGolem"] = {
	name = "闪电魔像",
	life = 3.75,
	energyShield = 0.2,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 70,
	chaosResist = 20,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.17,
	attackRange = 6,
	damageFixup = 0.22,
	limit = "ActiveGolemLimit",
	skillList = {
		"LightningGolemArcSummoned",
		"MonsterProjectileSpellLightningGolemSummoned",
		"LightningGolemWrath",
	},
	modList = {
	},
}
minions["SummonedStoneGolem"] = {
	name = "巨石魔像",
	life = 5.25,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 3,
	damageSpread = 0.2,
	attackTime = 1,
	attackRange = 8,
	weaponType1 = "One Handed Sword",
	limit = "ActiveGolemLimit",
	skillList = {
		"Melee",
		"RockGolemSlam",
		"RockGolemWhirlingBlades",
	},
	modList = {
	},
}
minions["SummonedRagingSpirit"] = {
	name = "愤怒的狂灵",
	life = 1.8,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1.02,
	damageSpread = 0.2,
	attackTime = 0.57,
	attackRange = 6,
	limit = "ActiveRagingSpiritLimit",
	skillList = {
		"Melee",
	},
	modList = {
		mod("PhysicalDamageConvertToFire", "BASE", 50),
		mod("PhysicalMin", "BASE", 4, ModFlag.Attack),
		mod("PhysicalMax", "BASE", 5, ModFlag.Attack),
		mod("Speed", "MORE", 40, ModFlag.Attack),
	},
}
minions["SummonedEssenceSpirit"] = {
	name = "精华之灵",
	life = 1.8,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 0.77,
	damageSpread = 0.2,
	attackTime = 0.57,
	attackRange = 6,
	skillList = {
		"RagingSpiritMeleeAttack",
		"SpectralSkullShieldCharge",
	},
	modList = {
		mod("Speed", "MORE", 40, ModFlag.Attack),
		mod("Condition:FullLife", "FLAG", true),
	},
}
minions["SummonedSpectralWolf"] = {
	name = "幽狼",
	life = 4.5,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1,
	attackRange = 9,
	weaponType1 = "Dagger",
	limit = "ActiveWolfLimit",
	skillList = {
		"Melee",
	},
	modList = {
	},
}
minions["RaisedSkeleton"] = {
	name = "异灵魔侍",
	life = 1.05,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 4.05,
	damageSpread = 0.4,
	attackTime = 0.8,
	attackRange = 6,
	weaponType1 = "One Handed Sword",
	weaponType2 = "Shield",
	limit = "ActiveSkeletonLimit",
	skillList = {
		"Melee",
	},
	modList = {
		mod("BlockChance", "BASE", 20),
	},
}
minions["RaisedSkeletonCaster"] = {
	name = "异灵魔侍术者",
	life = 1.05,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 0.98,
	damageSpread = 0.3,
	attackTime = 1.07,
	attackRange = 46,
	damageFixup = 0.33,
	limit = "ActiveSkeletonLimit",
	skillList = {
		"SkeletonProjectileFire",
		"SkeletonProjectileCold",
		"SkeletonProjectileLightning",
	},
	modList = {
	},
}
minions["RaisedSkeletonArcher"] = {
	name = "异灵魔侍弓箭手",
	life = 1.05,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 0.98,
	damageSpread = 0.16,
	attackTime = 1.33,
	attackRange = 40,
	weaponType1 = "Bow",
	limit = "ActiveSkeletonLimit",
	skillList = {
		"Melee",
	},
	modList = {
	},
}
minions["Clone"] = {
	name = "克隆体",
	life = 1,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1,
	damageSpread = 0,
	attackTime = 0.83,
	attackRange = 4,
	skillList = {
		"Melee",
	},
	modList = {
		mod("EnergyShield", "BASE", 10),
	},
}
minions["SpiderMinion"] = {
	name = "蜘蛛爪牙",
	life = 1.8,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1.76,
	damageSpread = 0.2,
	attackTime = 0.96,
	attackRange = 5,
	weaponType1 = "One Handed Sword",
	limit = "ActiveSpiderLimit",
	skillList = {
		"SummonedSpiderViperStrike",
	},
	modList = {
	},
}
minions["AnimatedWeapon"] = {
	name = "幻灵武器",
	life = 4,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 0,
	damageSpread = 0,
	attackTime = 1.5,
	attackRange = 4,
	skillList = {
		"Melee",
	},
	modList = {
	},
}
minions["AnimatedArmour"] = {
	name = "幻灵守卫",
	life = 4.5,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 0,
	damageSpread = 0,
	attackTime = 1.5,
	attackRange = 4,
	skillList = {
		"Melee",
	},
	modList = {
		mod("Speed", "MORE", 10, ModFlag.Attack, 0, { type = "Condition", var = "DualWielding" }),
		mod("PhysicalDamage", "MORE", 20, ModFlag.Attack, 0, { type = "Condition", var = "DualWielding" }),
		mod("BlockChance", "BASE", 15, 0, 0, { type = "Condition", var = "DualWielding" }),
	},
}
minions["IcyRagingSpirit"] = {
	name = "悲墓之灵",
	life = 3,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 2,
	damageSpread = 0.2,
	attackTime = 0.57,
	attackRange = 6,
	skillList = {
		"RagingSpiritMeleeAttack",
	},
	modList = {
		mod("PhysicalDamageConvertToCold", "BASE", 50),
		mod("Speed", "MORE", 40, ModFlag.Attack),
	},
}
minions["UniqueAnimatedWeapon"] = {
	name = "狂舞德尔维希",
	life = 4,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 0,
	damageSpread = 0,
	attackTime = 1,
	attackRange = 60,
	skillList = {
		"Melee",
		"DancingDervishCyclone",
	},
	modList = {
	},
}
minions["SummonedPhantasm"] = {
	name = "异界凶灵",
	life = 1.58,
	energyShield = 0.2,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1.1,
	damageSpread = 0.2,
	attackTime = 1.17,
	attackRange = 4,
	limit = "ActivePhantasmLimit",
	skillList = {
		"SummonPhantasmFadingProjectile",
	},
	modList = {
	},
}
minions["HeraldOfAgonySpiderPlated"] = {
	name = "苦痛爬行者",
	life = 1.5,
	fireResist = 0,
	coldResist = 0,
	lightningResist = 0,
	chaosResist = 0,
	damage = 1.5,
	damageSpread = 0.2,
	attackTime = 1.3,
	attackRange = 10,
	accuracy = 3,
	weaponType1 = "One Handed Sword",
	skillList = {
		"HeraldOfAgonyMinionMortar",
		"HeraldOfAgonyMinionTailSpike",
		"HeraldOfAgonyMinionCleave",
	},
	modList = {
		mod("PhysicalDamageConvertToChaos", "BASE", 40),
		mod("Condition:FullLife", "FLAG", true),
	},
}
minions["AxisEliteSoldierHeraldOfLight"] = {
	name = "纯净哨兵",
	life = 5.6,
	armour = 0.5,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 2.66,
	damageSpread = 0.2,
	attackTime = 0.83,
	attackRange = 10,
	accuracy = 2.2,
	weaponType1 = "Staff",
	limit = "ActiveSentinelOfPurityLimit",
	skillList = {
		"Melee",
		"HeraldOfLightMinionSlam",
	},
	modList = {
	},
}
minions["HolyLivingRelic"] = {
	name = "圣物",
	life = 6.0,
	energyShield = 0.6,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 1,
	damageSpread = 0,
	attackTime = 1,
	attackRange = 4,
	accuracy = 1,
	limit = "ActiveHolyRelicLimit",
	skillList = {
		"RelicTriggeredNova",
	},
	modList = {
	},
}
minions["AxisEliteSoldierDominatingBlow"] = {
	name = "统御哨兵",
	life = 4,
	armour = 0.5,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 2.8,
	damageSpread = 0.2,
	attackTime = 0.83,
	attackRange = 9,
	accuracy = 2.2,
	weaponType1 = "One Handed Mace",
	weaponType2 = "Shield",
	skillList = {
		"Melee",
		"DominatingBlowMinionCharge",
	},
	modList = {
		mod("BlockChance", "BASE", 30),
	},
}
minions["RhoaUniqueSummoned"] = {
	name = "召唤兽化恐喙鸟",
	life = 7.5,
	armour = 0.2,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 3.42,
	damageSpread = 0.2,
	attackTime = 0.93,
	attackRange = 10,
	accuracy = 1,
	limit = "ActiveBeastMinionLimit",
	skillList = {
		"Melee",
		"SummonedRhoaShieldCharge",
	},
	modList = {
		mod("CannotBeEvaded", "FLAG", true),
	},
}
minions["SnakeSpitUniqueSummoned"] = {
	name = "召唤兽化巨蛇",
	life = 7.5,
	armour = 0.15,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 2.55,
	damageSpread = 0.2,
	attackTime = 1.1,
	attackRange = 7,
	accuracy = 1,
	limit = "ActiveBeastMinionLimit",
	skillList = {
		"SummonedSnakeProjectile",
	},
	modList = {
		mod("PhysicalDamageConvertToChaos", "BASE", 30),
		mod("CannotBeEvaded", "FLAG", true),
	},
}
minions["DropBearUniqueSummoned"] = {
	name = "召唤兽化之爪",
	life = 7.5,
	armour = 0.5,
	fireResist = 40,
	coldResist = 40,
	lightningResist = 40,
	chaosResist = 20,
	damage = 2.55,
	damageSpread = 0.2,
	attackTime = 1.1,
	attackRange = 4,
	accuracy = 1,
	weaponType1 = "One Handed Mace",
	limit = "ActiveBeastMinionLimit",
	skillList = {
		"Melee",
		"DropBearSummonedGroundSlam",
		"DropBearSummonedRallyingCry",
	},
	modList = {
		mod("CannotBeEvaded", "FLAG", true),
	},
}
