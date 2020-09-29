-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games
local itemBases = ...

itemBases["粗制弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 5, PhysicalMax = 13, CritChanceBase = 5, AttackRateBase = 1.4, Range = 120, },
	req = { dex = 14, },
}
itemBases["短弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 6, PhysicalMax = 16, CritChanceBase = 5, AttackRateBase = 1.5, Range = 120, },
	req = { level = 5, dex = 26, },
}
itemBases["长弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 6, PhysicalMax = 25, CritChanceBase = 6, AttackRateBase = 1.3, Range = 120, },
	req = { level = 9, dex = 38, },
}
itemBases["合成弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 12, PhysicalMax = 26, CritChanceBase = 6, AttackRateBase = 1.3, Range = 120, },
	req = { level = 14, dex = 53, },
}
itemBases["反曲弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "damage", "critical" }, },
	implicit = "+(15-25)% 攻击和法术暴击伤害加成",
	weapon = { PhysicalMin = 11, PhysicalMax = 34, CritChanceBase = 6.7, AttackRateBase = 1.25, Range = 120, },
	req = { level = 18, dex = 65, },
}
itemBases["骨制弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 11, PhysicalMax = 34, CritChanceBase = 6.5, AttackRateBase = 1.4, Range = 120, },
	req = { level = 23, dex = 80, },
}
itemBases["皇家猎弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "attack" }, },
	implicit = "攻击技能的元素伤害提高 (20-24)%",
	weapon = { PhysicalMin = 10, PhysicalMax = 41, CritChanceBase = 5, AttackRateBase = 1.45, Range = 120, },
	req = { level = 28, dex = 95, },
}
itemBases["死亡之弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "attack", "critical" }, },
	implicit = "该装备的攻击暴击率提高 (30-50)%",
	weapon = { PhysicalMin = 20, PhysicalMax = 53, CritChanceBase = 5, AttackRateBase = 1.2, Range = 120, },
	req = { level = 32, dex = 107, },
}
itemBases["反射弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, not_for_sale = true, maraketh = true, },
	implicitModTypes = { { "speed" }, },
	implicit = "移动速度提高 6%",
	weapon = { PhysicalMin = 27, PhysicalMax = 40, CritChanceBase = 5.5, AttackRateBase = 1.4, Range = 120, },
	req = { level = 36, dex = 124, },
}
itemBases["丛林猎弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 15, PhysicalMax = 44, CritChanceBase = 5, AttackRateBase = 1.5, Range = 120, },
	req = { level = 35, dex = 116, },
}
itemBases["直弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 17, PhysicalMax = 69, CritChanceBase = 6, AttackRateBase = 1.25, Range = 120, },
	req = { level = 38, dex = 125, },
}
itemBases["复合弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 26, PhysicalMax = 55, CritChanceBase = 6, AttackRateBase = 1.3, Range = 120, },
	req = { level = 41, dex = 134, },
}
itemBases["狙击弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "damage", "critical" }, },
	implicit = "+(15-25)% 攻击和法术暴击伤害加成",
	weapon = { PhysicalMin = 23, PhysicalMax = 68, CritChanceBase = 6.7, AttackRateBase = 1.25, Range = 120, },
	req = { level = 44, dex = 143, },
}
itemBases["象牙弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 20, PhysicalMax = 61, CritChanceBase = 6.5, AttackRateBase = 1.4, Range = 120, },
	req = { level = 47, dex = 152, },
}
itemBases["贵族之弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "attack" }, },
	implicit = "攻击技能的元素伤害提高 (20-24)%",
	weapon = { PhysicalMin = 17, PhysicalMax = 67, CritChanceBase = 5, AttackRateBase = 1.45, Range = 120, },
	req = { level = 50, dex = 161, },
}
itemBases["猎魂之弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "attack", "critical" }, },
	implicit = "该装备的攻击暴击率提高 (30-50)%",
	weapon = { PhysicalMin = 31, PhysicalMax = 81, CritChanceBase = 5, AttackRateBase = 1.2, Range = 120, },
	req = { level = 53, dex = 170, },
}
itemBases["钢木之弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, not_for_sale = true, maraketh = true, },
	implicitModTypes = { { "speed" }, },
	implicit = "移动速度提高 6%",
	weapon = { PhysicalMin = 40, PhysicalMax = 60, CritChanceBase = 5.5, AttackRateBase = 1.4, Range = 120, },
	req = { level = 57, dex = 190, },
}
itemBases["林野猎弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 22, PhysicalMax = 67, CritChanceBase = 5, AttackRateBase = 1.5, Range = 120, },
	req = { level = 56, dex = 179, },
}
itemBases["城塞战弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 25, PhysicalMax = 100, CritChanceBase = 6, AttackRateBase = 1.25, Range = 120, },
	req = { level = 58, dex = 185, },
}
itemBases["游侠弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 39, PhysicalMax = 81, CritChanceBase = 6, AttackRateBase = 1.3, Range = 120, },
	req = { level = 60, dex = 212, },
}
itemBases["暗影弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "damage", "critical" }, },
	implicit = "+(15-25)% 攻击和法术暴击伤害加成",
	weapon = { PhysicalMin = 30, PhysicalMax = 89, CritChanceBase = 6.7, AttackRateBase = 1.25, Range = 120, },
	req = { level = 62, dex = 212, },
}
itemBases["脊弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { },
	weapon = { PhysicalMin = 26, PhysicalMax = 78, CritChanceBase = 6.5, AttackRateBase = 1.4, Range = 120, },
	req = { level = 64, dex = 212, },
}
itemBases["帝国之弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "attack" }, },
	implicit = "攻击技能的元素伤害提高 (20-24)%",
	weapon = { PhysicalMin = 20, PhysicalMax = 78, CritChanceBase = 5, AttackRateBase = 1.45, Range = 120, },
	req = { level = 66, dex = 212, },
}
itemBases["先驱者之弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, },
	implicitModTypes = { { "attack", "critical" }, },
	implicit = "该装备的攻击暴击率提高 (30-50)%",
	weapon = { PhysicalMin = 35, PhysicalMax = 92, CritChanceBase = 5, AttackRateBase = 1.2, Range = 120, },
	req = { level = 68, dex = 212, },
}
itemBases["马拉克斯弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, not_for_sale = true, maraketh = true, },
	implicitModTypes = { { "speed" }, },
	implicit = "移动速度提高 10%",
	weapon = { PhysicalMin = 44, PhysicalMax = 66, CritChanceBase = 5.5, AttackRateBase = 1.4, Range = 120, },
	req = { level = 71, dex = 222, },
}

itemBases["多面弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, not_for_sale = true, },
	implicit = "该装备附加 (40-48) - (60-72) 基础火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	weapon = { PhysicalMin = 9, PhysicalMax = 13, CritChanceBase = 5.5, AttackRateBase = 1.3, Range = 120, },
	req = { level = 30, dex = 101, },
}
itemBases["铸造弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, not_for_sale = true, },
	implicit = "该装备附加 (70-84) - (110-124) 基础火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	weapon = { PhysicalMin = 13, PhysicalMax = 20, CritChanceBase = 5.5, AttackRateBase = 1.3, Range = 120, },
	req = { level = 50, dex = 161, },
}
itemBases["日裔弓"] = {
	type = "Bow",
	socketLimit = 6,
	tags = { default = true, weapon = true, twohand = true, bow = true, ranged = true, two_hand_weapon = true, not_for_sale = true, },
	implicit = "该装备附加 (105-116) - (160-172) 基础火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	weapon = { PhysicalMin = 16, PhysicalMax = 24, CritChanceBase = 5.5, AttackRateBase = 1.3, Range = 120, },
	req = { level = 70, dex = 212, },
}