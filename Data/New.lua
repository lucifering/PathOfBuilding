﻿--
-- Upcoming uniques will live here until their mods/rolls are finalised
--
 
-- Automatically generate Megalomaniac because like heck I'm entering all those variants manually lol


data.uniques.new = {


--3.12
[[
破裂碎片
绯红圆盾
等级需求: 49, 64 Str, 64 Dex
固定基底词缀: 0
你格挡时触发 20 级破盾击
该装备的护甲与闪避提高 (120-150)%
+(80-100) 最大生命
该装备 +(8-12)% 攻击格挡率
]],
[[
海军上将
映彩外套
等级需求: 62, 96 Dex, 96 Int
固定基底词缀: 0
+(30-40) 智慧
该装备的闪避与能量护盾提高 (100-140)%
+(10-20)% 所有元素抗性
(5-10)% 几率使敌人受到冰冻，感电与点燃
你的击中造成的元素伤害由最低的抗性来抵抗
]],
[[
Maw of Mischief
唤骨头盔
等级需求: 73, 76 Str, 76 Int
固定基底词缀: 1
召唤生物的伤害提高 (15-20)%
Grants Level 20 Death Wish Skill
+(45-65) 最大生命
召唤生物技能的魔力消耗降低 (20-30)%
召唤生物转为【侵略】
]],
[[
短暂羁绊
海玉护身符
等级需求: 68
固定基底词缀: 1
{tags:jewellery_attribute}+(20-30) 智慧
{tags:mana}魔力回复速度提高 (25-40)%
{tags:jewellery_resistance}+(15-25)% 所有元素抗性
若你近期内获得过暴击球，则暴击伤害加成 +(30-40)%
{tags:jewellery_elemental}每个暴击球造成 (1-2) - (36-40) 闪电伤害
暴击球总持续时间额外缩短 90%
]],
[[
惊悸剧院
柚木圆盾
等级需求: 58, 74 Str, 74 Dex
固定基底词缀: 1
格挡回复提高 180%
此物品上装备的【辅助技能石】等级 +2
装备时触发 20 级物理神盾
该装备的护甲与闪避提高 (300-400)%
(30-50)% 几率免疫流血
物理神盾消散时，攻击和施法速度加快 (8-15)%
物理神盾消散时，暴击率提高 (50-70)%
物理神盾没有消散时，周围敌人会目盲
]],
[[
支点
艾兹麦长杖
等级需求: 60, 113 Str, 113 Int
固定基底词缀: 1
持长杖时攻击伤害格挡几率 +20%
物理伤害提高 (140-180)%
(0-50)% 的物理伤害转换为火焰伤害
(0-50)% 的物理伤害转换为冰霜伤害
物理伤害的 (0-50)% 转换为闪电伤害
你施加的元素异常状态反射给你自己
你被感电时，元素伤害击中特别幸运
你被冰缓时，伤害穿透 (8-10)% 元素抗性
你被点燃时，将物理伤害的 (30-40)% 视为一种随机元素额外伤害
]],
[[
隐匿之刃
伏击刺刃
等级需求: 60, 113 Dex, 113 Int
固定基底词缀: 1
攻击和法术暴击率提高 30%
迷踪状态下，每隔 0.5 秒便触发 20 级隐形打击
+(20-40) 敏捷
物理伤害提高 (230-260)%
迷踪状态下，攻击速度减慢 30%
]],
[[
绿林豪侠
金光戒指
等级需求: 44
固定基底词缀: 1
物品稀有度提高 (6-15)%
物品稀有度提高 (15-25)%
移动速度提高 5%
击中时有 25% 几率偷取暴击，狂怒和耐力球
若你的耐力球、狂怒球或暴击球总共有 5 个时，将伤害的 0.5% 转化为生命偷取
生命偷取每秒总恢复量翻倍
]],
[[
意志交锋
黄金之面
等级需求: 35, 40 Dex, 40 Int
固定基底词缀: 0
该装备的闪避与能量护盾提高 (350-400)%
每个暴击球可使法术伤害格挡几率 +5%
每个暴击球可使元素伤害提高 (3-5)%
若你近期内没有失去暴击球，则每秒获得一个暴击球
你格挡时失去所有暴击球
]],
[[
低谷状态
钴蓝珠宝
仅限: 1
等级需求: 20
固定基底词缀: 0
法术伤害提高 (20-25)%
每层强化使法术暴击几率提高 30%
法术近期有获得强化则每 0.5 秒丢失 1 层强化
]],
[[
巅峰状态
钴蓝珠宝
仅限: 1
等级需求: 20
固定基底词缀: 0
法术伤害提高 (20-25)%
每层强化使法术暴击几率降低 10%
法术近期有获得强化则每 0.5 秒可以获得 1 层强化
]],
[[
钢铁之主
翠绿珠宝
仅限: 1
等级需求: 20
固定基底词缀: 0
版本: 穿刺几率
版本: 穿刺压制
版本: 穿刺效果
{variant:1}攻击击中时有 10% 几率穿刺敌人
{variant:2}你对已穿刺的敌人造成的穿刺伤害压制 10% 物理伤害减免
{variant:3}穿刺的效果提高 5%
{variant:1,3}钢铁呼唤反射伤害的效果区域扩大 (40-50)%
{variant:2,3}钢铁呼唤使用速度加快 (80-100)%
{variant:1,2}钢铁呼唤反射伤害提高 (40-50)%
]],

[[
火爆之拥
皮革腰带
等级需求: 43
固定基底词缀: 1
{tags:life}+(25-40) 最大生命
{tags:jewellery_attribute}+(30-40) 敏捷
{tags:jewellery_defense}+(300-500) 点闪避值
敌人受到的元素异常状态时间延长 (10-15)%
被你点燃的敌人将它们物理伤害的 (10-15)% 转化为火焰伤害
被你感电的敌人将物理伤害的 (10-15)% 转化为闪电伤害
]],
[[
佣兵领地
迷踪手套
等级需求: 70, 95 Dex
固定基底词缀: 0
+(80-120) 点闪避值
攻击与施法速度提高 (5-8)%
咒印技能的施法速度加快 (10-15)%
对抗标记的敌人时，击中和异常状态伤害提高 (30-50)%
被标记的敌人被击败后，你的咒印转移给另一个敌人
]],
[[
雷鸣洗礼
钢镜刺盾
等级需求: 66, 85 Dex, 85 Int
固定基底词缀: 1
4% 几率躲避攻击击中
该装备的闪避与能量护盾提高 (500-600)%
魔力回复速度提高 (25-40)%
+50% 几率被感电
将承受的 40% 冰霜伤害视为闪电伤害
将承受的 40% 火焰伤害视为闪电伤害

]],
[[
命中注定
海灵戒指
等级需求: 38
固定基底词缀: 1
{tags:mana}+(20-30) 最大魔力
{tags:jewellery_attribute}+(20-40) 智慧
诅咒技能的施法速度提高 (8-12)%
你造成的咒术效果为厄运的 2 倍
魔蛊的灭能获取率降低 (-20-20)%
魔蛊抵达最大灭能 0.5 秒后开始消减
]],
[[
远征尽头
哨兵之衣
等级需求: 59, 86 Dex, 86 Int
固定基底词缀: 0
该装备的闪避与能量护盾提高 (100-150)%
最大生命提高 (5-10)%
你的所有伤害均可造成冰冻
冻结冰缓的敌人如同总伤害额外提高 (50-100)%
周围敌人被【冰缓】
]],
[[
渴望之冠
全罩战盔
等级需求: 58, 64 Str, 64 Dex
固定基底词缀: 0
有 1 个插槽
此物品上装备的技能石等级 +(5-8)
此物品上装备的【技能石】品质 +(30-50)%
插入的技能伤害翻倍
该装备的护甲与闪避提高 (100-150)%
]],
[[
蹒跚巨兽
星芒战铠
等级需求: 62, 180 Str
固定基底词缀: 1
+(8-12)% 所有元素抗性
+(500-700) 力量需求
该装备的护甲提高 (80-120)%
神殿效果提高 (50-75)%
你具有次级狂击神龛效果
你具有次级威猛神龛效果
]],
[[
灵枢行者
禁礼之靴
等级需求: 55, 52 Dex, 52 Int
固定基底词缀: 0
装备时触发 20 级灵枢行走
该装备的闪避与能量护盾提高 (80-120)%
移动速度提高 25%
近期内你若有消耗灵柩，则伤害提高 (20-40)%
周围每个灵枢都使你每秒再生 0.25% 生命，最多 3%
]],
[[
脱缚之锁
扣链腰带
等级需求: 61
固定基底词缀: 1
{tags:jewellery_defense}+(9-20) 最大能量护盾
{tags:life}+(60-80) 最大生命
{tags:jewellery_resistance}+(17-23)% 混沌抗性
敌人的击中给你施加时空锁链
你失去时空锁链时，获得最大怒火
你至少有 25 点怒火时免疫诅咒
]],
[[
阿克顿
屠戮之斧
等级需求: 63, 149 Str, 76 Dex
固定基底词缀: 0
没有插槽
物理伤害提高 (200-250)%
你没有智慧
用该武器击中时，暴击率为 (20-30)%
]],
[[
无尽之苦
钴蓝珠宝
等级需求: 20
仅限: 1
固定基底词缀: 0
元素伤害提高 (7-10)%
若范围内至少有 40 点智慧，解放的冷却时间为 250 毫秒
若范围内至少有 40 点智慧，解放的总伤害额外降低 60%
若范围内至少有 40 点智慧，解放的总效果区域额外缩小 60%
]],
[[
复苏之药
饰布腰带
等级需求: 48
固定基底词缀: 1
晕眩回复和格挡回复提高 (15-25)%
{tags:jewellery_attribute}+(20-30) 全属性
药剂充能获取提高 (15-25)%
药剂充能使用提高 (10-20)%
药剂效果的持续时间延长 (10-20)%
生命药剂每 3 秒获得 1 次使用次数
药剂回复的 100% 生命改为给周围友军回复
]],
[[
钢铁质量
斗士长剑
等级需求: 60, 113 Str, 113 Dex
固定基底词缀: 1
命中值提高 40%
物理伤害提高 (140-175)%
攻击速度提高 (14-18)%
不洁之力
用该武器击中时有 (20-25)% 几率施加 2 秒凋零
召唤魔侍勇士时，它会持握你主手武器的副本
召唤魔侍勇士时，若你近期用该武器击中过敌人则它用该武器造成三倍伤害
]],
[[
内布利斯【仿品】
虚影短杖
联盟: 夺宝奇兵
等级需求: 68, 104 Str, 122 Int
replica: true
固定基底词缀: 1
元素伤害提高 40%
施法速度提高 (15-20)%
每失去 1% 冰霜抗性，就使冰霜伤害提高 (3-5)%
每失去 1% 火焰抗性，就使火焰伤害提高 (3-5)%
]],
[[
收割者【仿品】
灵玉巨斧
等级需求: 37, 100 Str, 29 Dex
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
物理伤害提高 (120-140)%
暴击时偷取等同 1.2% 伤害的生命
攻击和法术暴击率每级提高 3%
暴击获得【灵巧】
]],
[[
议会之握【仿品】
秘术手套
等级需求: 60, 95 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
+30 力量
+(30-50) 最大生命
+(20-40)% 火焰抗性
召唤生物的最大生命降低 10%
召唤生物的火焰抗性 +40%
召唤生物获得等同于 20% 物理伤害的额外火焰伤害
]],
[[
霜息【仿品】
华丽之锤
等级需求: 50, 161 Str
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
敌人晕眩门槛降低 15%
附加 (53-67) - (71-89) 基础混沌伤害
攻击速度提高 (8-12)%
+(23-31)% 混沌抗性
你的混沌伤害可以造成冰缓
此武器的攻击对冰缓的敌人造成双倍伤害
]],
[[
脆弱的繁华【仿品】
赤红珠宝
等级需求: 20
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
赤红珠宝
仅限: 1
最多 5 次【脆弱重生】
每次【脆弱重生】都每秒回复 0.7% 生命
被击中时，获得脆弱重生并达到上限
每秒失去 1 脆弱重生
]],
[[
绿藤【仿品】
朽木之干
等级需求: 4, 12 Str, 12 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
持长杖时攻击伤害格挡几率 +18%
此物品上的技能石受到 1 级的 多重图腾 辅助
全局伤害提高 (40-50)%
最大生命提高 (10-20)%
最大魔力提高 (10-20)%
]],
[[
大地之护【仿品】
胜利盔甲
等级需求: 69, 95 Str, 116 Dex
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
该装备的护甲与闪避提高 (100-150)%
+(90-100) 最大生命
猫之敏捷持续时间 +2 秒
【猫之势】不保留魔力值
你获得猫之敏捷时，狂怒球和耐力球获得至数量上限
你有猫之敏捷时，具有猛攻效果
]],
[[
永恒幽影【仿品】
血色之衣
等级需求: 65, 107 Str, 90 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
被击中时触发 20 级暗影姿态
该装备的闪避与能量护盾提高 (100-150)%
+(70-100) 最大生命
+(17-23)% 混沌抗性
每装备一个裂界者物品，就将物理伤害的 (3-5)% 视为额外混沌伤害
若全套装备均为裂界者物品，则击中无视敌人的混沌抗性
]],
[[
余烬之痕【仿品】
红玉戒指
等级需求: 16
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
{tags:jewellery_resistance}+(20-30)% 火焰抗性
{tags:jewellery_elemental}火焰伤害提高 (30-40)%
{tags:caster}施法速度提高 (5-10)%
敌人被点燃的持续时间缩短 90%
{tags:jewellery_elemental}有 10% 几率点燃
{tags:jewellery_elemental}你造成的点燃的伤害生效速度加快 (35-45)%
]],
[[
叶兰德尔的拥抱【仿品】
远古之祭
等级需求: 35, 62 Str, 62 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
元素伤害提高 18%
+(20-30) 全属性
召唤生物的伤害提高 (30-40)%
魔卫复苏击中时让敌人受到【灰烬缠身】
魔卫复苏每秒将其最大生命的 (15-30)% 转化为火焰伤害
魔卫复苏获得【火之化身】
]],
[[
宵晓【仿品】
风暴长杖
等级需求: 64, 113 Str, 113 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
持长杖时攻击伤害格挡几率 +25%
持长杖时攻击伤害格挡几率 +10%
该装备的攻击暴击率提高 (40-50)%
获得额外混沌伤害，其数值等同于元素伤害的 (10-20)%
每 1% 攻击伤害格挡几率 +1% 基础暴击伤害加成
近期内你若造成非暴击伤害，则 +60% 暴击伤害加成
近期若打出过暴击，则元素伤害提高 (120-150)%
]],
[[
幻梦飞羽【仿品】
永恒之剑
等级需求: 66, 104 Str, 122 Dex
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
+475 命中值
附加 (40-65) - (70-100) 基础物理伤害
攻击速度提高 (5-10)%
+(180-200) 护甲
移动速度降低 3%
+(280-300) 命中值
每 450 点护甲值可使攻击伤害提高 1%
]],
[[
德瑞的魔具【仿品】
海灵戒指
等级需求: 5
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
{tags:mana}+(20-30) 最大魔力
{tags:jewellery_attribute}+(5-10) 智慧
{tags:jewellery_resistance}+5% 所有元素抗性
{tags:mana}击败敌人回复 +5 魔力
可以对敌人施放 -1 个额外诅咒
你所施放诅咒的效果提高 (25-35)%
]],
[[
征服者的迅捷【仿品】
赤红珠宝
等级需求: 20
仅限: 1
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
技能效果持续时间延长 4%
+5 最大怒火
非持续吟唱技能总魔力消耗 -9
]],
[[
寒铁刃【仿品】
艾兹麦之匕
等级需求: 62, 95 Str, 131 Dex
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
攻击和法术暴击率提高 30%
所有冰霜法术技能石等级 +3
无法造成冰霜伤害
]],
[[
廉价建设【仿品】
翠绿珠宝
等级需求: 20
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
陷阱暴击率提高 (100-120)%
最多同时可额外放置的陷阱数量 -5
]],
[[
灵骸之履【仿品】
丝绸便鞋
等级需求: 22, 42 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
该装备的能量护盾提高 (40-60)%
+20 最大生命
+20 最大魔力
移动速度提高 (5-15)%
召唤的幻灵击中传奇敌人时，有 10% 几率刷新持续时间
召唤的愤怒狂灵击中传奇敌人时有 10% 几率刷新持续时间
]],
[[
血谑【仿品】
锐利刺匕
等级需求: 15, 30 Dex, 30 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
攻击和法术暴击率提高 30%
+20 力量
物理伤害提高 (20-40)%
附加 (3-6) - (9-13) 基础物理伤害
攻击速度提高 10%
对流血敌人的攻击和法术暴击率提高 (100-150)%
更明显打击效果
]],
[[
血棘【仿品】
朽木之干
等级需求: 4, 12 Str, 12 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
持长杖时攻击伤害格挡几率 +18%
持长杖时攻击伤害格挡几率 +12%
物理伤害提高 100%
攻击速度提高 (5-10)%
格挡成功时对敌人施放提高 20% 效果的【易燃】
攻击者格挡时反射 (22-44) 物理伤害
]],
[[
血牺【仿品】
赤红珠宝
等级需求: 20
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
击败敌人时回复 1% 生命
击败敌人回复 1% 能量护盾
无法偷取或自然回复魔力
]],
[[
凝息【仿品】
扣链腰带
等级需求: 22
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
{tags:jewellery_defense}+(9-20) 最大能量护盾
{tags:jewellery_attribute}+(15-25) 智慧
伤害提高 10%
钓鱼池消耗量提高 50%
钓鱼范围扩大 20%
钓鱼稀有度提高 (20-30)%
]],
[[
极地之眼【仿品】
罪者之帽
等级需求: 64, 138 Dex
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
此物品上装备的【捷技能石】等级 +4
闪避值提高 (80-100)%
+(20-30)% 混沌抗性
25% 几率免疫中毒
魔力保留降低 8%
你无法被缓速
]],
[[
魅惑【仿品】
瓦尔战爪
等级需求: 66, 95 Dex, 131 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
物理攻击伤害的 2% 会转化为生命偷取
物理伤害提高 (110-130)%
附加 (15-20) - (30-40) 基础物理伤害
攻击速度提高 (8-12)%
每嘲讽 1 个敌人回复 +50 生命
击败被嘲讽的敌人获得 1 秒【猛攻】状态
受到你嘲讽的敌人所承受的伤害提高 10%
]],
[[
相生相克【仿品】
术士手套
等级需求: 69, 97 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
获得 22 级的主动技能【冬潮烙印】，且可被此道具上的技能石辅助
持续伤害效果提高 (20-30)%
该装备的能量护盾提高 (100-120)%
范围效果扩大 10%
免疫冰缓
【冬潮烙印】的冰缓效果提高 (20-30)%
]],
[[
阿尔贝隆的征途【仿品】
战士之靴
等级需求: 49, 47 Str, 47 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 0
力量提高 (15-18)%
+(180-220) 护甲
+(9-12)% 混沌抗性
移动速度提高 20%
无法造成非混沌伤害
每 50 点力量可使攻击附加 1 - 80 基础混沌伤害
]],
[[
超越壁垒【仿品】
裂脏钩
等级需求: 46, 80 Dex, 80 Int
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
攻击击中每个敌人会回复 +44 生命
此物品上的技能石受到 12 级的 受伤时施放 辅助
15% 攻击伤害格挡率
物理伤害提高 (100-120)%
+(30-50) 最大生命
从盾牌获取的防御提高 50%
近期内你若有格挡，则附加 45 - 75 基础火焰伤害
]],
[[
玛拉凯的巧技【仿品】
潜能之戒
等级需求: 5
联盟: 夺宝奇兵
replica: true
固定基底词缀: 1
有 1 个插槽
插入的技能石具有苦难秘辛
-20% 所有元素抗性
插上 1 个红色技能石时获得 +(75-100)% 火焰抗性
插上 1 个绿色技能石时获得 +(75-100)% 冰霜抗性
插上 1 个蓝色技能石时获得 +(75-100)% 闪电抗性
所有插槽都是白色的
]],
[[
阿兹里圣徽【仿品】
海灵护身符
等级需求: 16
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
每秒回复 1.62% 生命
+100 最大生命
生命回复速度提高 21% 
装备和技能石的属性需求降低 25%
]],
[[
冈姆的壮志【仿品】
荣耀战铠
等级需求: 68, 191 Str
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
没有插槽
闪电伤害提高 (20-40)%
+500 最大魔力
]],
[[
灵魂羁绊【仿品】
饰布腰带
等级需求: 48
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
晕眩回复和格挡回复提高 (15-25)%
{tags:jewellery_attribute}+(20-40) 力量
{tags:jewellery_defense,life}获得等同 (4-6)% 最大生命的额外能量护盾
腐化的灵魂
]],
[[
泯光寿衣【仿品】
禁礼之甲
等级需求: 71, 88 Dex, 122 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
+(20-25) 最大魔力
拥有 6 个深渊插槽
]],
[[
图克哈玛堡垒【仿品】
乌木塔盾
等级需求: 61, 159 Str
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
+(20-30) 最大生命
烙印的伤害提高 40%
+(80-100) 最大生命
可以施放 1 个额外烙印
每个烙印可使暴击几率提高 20%
血魔法
凡人的信念
]],
[[
苦梦【仿品】
影语短杖
等级需求: 32, 52 Str, 62 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
元素伤害提高 22%
此物品上的技能石受到 1 级的 元素穿透 辅助
此物品上的技能石受到 10 级的 献祭 辅助
此物品上的技能石受到 1 级的 异常爆发 辅助
此物品上的技能石受到 10 级的 霜咬 辅助
此物品上的技能石受到 1 级的 启迪 辅助
此物品上的技能石受到 10 级的 闪电支配 辅助
]],
[[
神圣哀悼【仿品】
硫磺药剂
等级需求: 35
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
使用时制造奉献地面
持续时间延长 (25-50)%
药剂持续期间获得【异能魔力】
从药剂获得的生命回复同样作用于能量护盾
]],
[[
狮眼的斗志【仿品】
铜影长靴
等级需求: 30, 30 Str, 30 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
你用弓类攻击时触发 5 级毒雨
+(40-60) 力量
+(40-60) 敏捷
攻击附加 12 - 24 基础火焰伤害
移动速度提高 20%
低血时移动速度降低 40%
]],
[[
卡莉莎的优雅之影【仿品】
绣布手套
等级需求: 47, 68 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
此物品上的技能石受到 18 级的释出辅助
+(20-30) 智慧
+(50-80) 最大能量护盾
+(50-70) 最大生命
当你总计消耗超过 800 点魔力后，获得范围效果提高 40% ，持续 2 秒
]],
[[
钢铁指挥【仿品】
死亡之弓
等级需求: 32, 107 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
该装备的攻击暴击率提高 (30-50)%
攻击速度提高 (14-20)%
图腾的生命提高 (14-20)%
附加 (8-12) - (16-24) 基础物理伤害
图腾放置速度提高 (14-20)%
每 200 点力量都使散射弩炮的召唤图腾上限 +1
每 25 点力量都使攻击附加 1 到 3 点物理伤害
]],

[[
阿兹里的捷思【仿品】
瓦尔护手
等级需求: 63, 100 Str
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
+(60-80) 智慧
+(60-75) 最大生命
该装备的护甲提高 (200-220)%
攻击和法术暴击率提高 (25-35)%
近期内你若打出过暴击，则获得【完美苦痛】
]],
[[
安姆布的战甲【仿品】
圣战锁甲
等级需求: 43, 64 Str, 64 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
该装备的护甲与能量护盾提高 (180-220)%
+(60-80) 最大生命
+15% 所有元素抗性
被击中时获得 1 个耐力球
与周围玩家分享耐力球
近期内你若被击中，则每秒失去 2% 生命
]],
[[
深渊之唤【仿品】
艾兹麦坚盔
等级需求: 60, 138 Str
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
+(20-25) 全属性
攻击附加 40 - 75 基础火焰伤害
攻击附加 30 - 65 基础冰霜伤害
攻击附加 10 - 130 基础闪电伤害
+(100-125)% 近战攻击暴击伤害加成
该装备的护甲提高 (100-120)%
受到的元素伤害提高 (40-50)%
]],
[[
猎首【仿品】
皮革腰带
等级需求: 40
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
{tags:life}+(25-40) 最大生命
{tags:jewellery_attribute}+(40-55) 力量
{tags:jewellery_attribute}+(40-55) 敏捷
{tags:life}+(50-60) 最大生命
对抗魔法怪物时，击中伤害提高 (20-30)%
击败魔法敌人时，有 20% 几率获得它的非血族词缀，持续 20 秒
]],
[[
裂心刃【仿品】
皇家短匕
等级需求: 50, 71 Dex, 102 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
攻击和法术暴击率提高 30%
法术伤害提高 (60-70)%
+50 最大能量护盾
能量护盾启动回复比平常快 10%
+(40-50) 最大生命
穿刺的效果提高 20%
法术击中有 20% 几率穿刺敌人
]],
[[
鲁莽【仿品】
翠绿珠宝
等级需求: 20
replica: true
联盟: 夺宝奇兵
仅限: 1
固定基底词缀: 0
冰缓时，攻击速度加快 (10-20)%
冰缓时，施法速度加快 (10-20)%
冰缓时，移动速度加快 (10-20)%
]],
[[
西里的真相【仿品】
翠玉护身符
等级需求: 64
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
{tags:jewellery_attribute}+(20-30) 敏捷
获得 22 级的主动技能【憎恨】，且可被此道具上的技能石辅助
{tags:jewellery_attribute}+(25-35) 敏捷
{tags:attack}攻击附加 (12-15) - (24-28) 基础物理伤害
{tags:jewellery_elemental,attack}攻击附加 (11-15) - (23-28) 基础冰霜伤害
+(23-28)% 攻击和法术暴击伤害加成
{tags:attack,life}冰霜伤害的 (0.8-1)% 转化为生命偷取
{tags:mana}憎恨的总魔力保留额外降低 50%
]],
[[
穿云【仿品】
猎魂之弓
等级需求: 53, 170 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
该装备的攻击暴击率提高 (30-50)%
+(20-30) 敏捷
附加 (25-35) - (36-45) 基础物理伤害
物理伤害提高 (110-125)%
移动速度提高 10%
+(350-400) 命中值
不能偷取魔力
来自攻击的投射物会分叉
来自攻击的投射物会额外分叉一次
]],
[[
英斯贝理之极【仿品】
智者长剑
等级需求: 47, 81 Str, 81 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
+330 命中值
物理伤害提高 (100-140)%
混沌伤害的 0.2% 转化为生命偷取
50% 的物理伤害转换为混沌伤害
受到击中物理伤害的 10% 转化为混沌伤害
用该武器击中时施加 2 秒凋零
]],
[[
茵雅的启蒙【仿品】
秘术便鞋
等级需求: 61, 119 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
智慧提高 (5-8)%
+(50-70) 最大生命
每个暴击球可使伤害提高 5%
每个暴击球可使每秒回复 0.5% 生命
每个暴击球可使移动速度提高 5%
]],
[[
卡鲁的战徽【仿品】
翠玉护身符
等级需求: 5
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
{tags:jewellery_attribute}+(20-30) 敏捷
{tags:jewellery_attribute}+(20-30) 智慧
{tags:attack}+100 命中值
移动速度提高 10%
范围效果扩大 30%
范围伤害提高 30%
]],
[[
康戈的战炎【仿品】
惧灵重锤
等级需求: 67, 212 Str
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
有 25% 几率使晕眩时间延长 1 倍
附加 (43-56) - (330-400) 基础物理伤害
暴击后获得 4 秒的【猛攻】状态
+(15-20)% 所有元素抗性
攻击和法术无法被闪避
你的暴击不造成额外暴击伤害
若你近期内用该武器造成暴击，则每秒再生 20% 的能量护盾
]],
[[
终息【仿品】
拳钉
等级需求: 3, 11 Dex, 11 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
攻击击中每个敌人会回复 +3 生命
低血时攻击速度提高 50%
物理伤害提高 (80-100)%
低血时命中值提高 100%
在低血时，爪类伤害提高 200%
非低血状态时不造成伤害
]],
[[
拉维安加之泉【仿品】
圣化魔力药剂
等级需求: 50
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
回复量提高 (30-50)%
回复速度降低 50%
药剂持续期间，攻击速度提高 (5-15)%
药剂持续期间，施法速度提高 (5-15)%
药剂持续期间，技能魔力消耗提高 10%
]],
[[
共鸣之面【仿品】
节庆之面
等级需求: 28, 33 Dex, 33 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
伤害降低 30%
+(20-30) 最大生命
+(20-30) 最大魔力
魔力回复速度降低 60%
你和周围友军的魔力再生率提高 30%
魔力回复速度提高 30%
]],
[[
满溢之甲【仿品】
权贵环甲
等级需求: 64, 90 Str, 105 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
有 6 个插槽
攻击附加 (4-10) - (14-36) 基础物理伤害
+(8-24) 全属性
攻击和法术暴击率提高 (120-160)%
+(150-200) 最大能量护盾
+(120-160) 最大生命
+(120-160) 最大魔力
物品稀有度提高 (6-30)%
元素伤害提高 (15-50)%
你的最大抗性为 (70-72)%
]],
[[
马洛尼的技巧【仿品】
华美箭袋
等级需求: 45
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
有 1 个插槽
有 2 个插槽
持弓类施放法术时，触发一个插入的弓类技能
施法速度提高 (7-12)%
+(50-70) 最大生命
攻击击中有 5% 几率致盲敌人
]],
[[
冥约【仿品】
符文法杖
等级需求: 40, 131 Int
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
法术伤害提高 (22-26)%
+(10-20) 智慧
召唤生物的移动速度提高 (40-50)%
召唤生物的伤害提高 (50-70)%
+6 愤怒狂灵数量上限
保留 30% 生命
不能搭配【异灵之体】
召唤的幻灵数量上限 +3
]],
[[
迷雾之墙【仿品】
漆彩轻盾
等级需求: 60, 159 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
移动速度提高 6%
闪避值提高 (120-150)%
移动速度提高 10%
+(10-20)% 火焰与冰霜抗性
若你近期内没有格挡过敌人，则法术伤害格挡率 +75%
迷踪状态下，被击中时避免物理伤害的几率 +(8-15)%
若近期内有过格挡，你则获得【迷踪】状态
]],
[[
欧罗的贡品【仿品】
狱炎重剑
等级需求: 67, 113 Str, 113 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
攻击技能的元素伤害提高 30%
没有物理伤害
附加 (385-440) - (490-545) 基础冰霜伤害
攻击速度提高 (10-15)%
对被冰冻敌人造成伤害的 1% 转化为生命偷取
20% 几率使用冰霜伤害击中时冰冻敌人
受到的物理伤害提高 10%
承受的冰霜伤害提高 10%
若攻击冻结了敌人，则获得一个耐力球
]],
[[
悖论【仿品】
瓦尔细剑
等级需求: 66, 212 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
+25% 攻击和法术暴击伤害加成
【未鉴定词缀】
【未鉴定词缀】
【未鉴定词缀】
【未鉴定词缀】
【未鉴定词缀】
【未鉴定词缀】
]],
[[
完美姿态【仿品】
星辰皮甲
等级需求: 65, 197 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
敏捷提高 (5-10)%
闪避值提高 (30-50)%
+(50-80) 最大生命
-30% 冰霜抗性
【血肉与岩石】的魔力保留降低 100%
闪避值将随绝对冰霜抗性提高
空明之掌
]],
[[
起源力量【仿品】
赤红珠宝
等级需求: 20
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
最多可同时召唤额外 -1 个魔像
在召唤魔像后的 8 秒内伤害提高 (25-30)%
魔像在召唤后的 8 秒内伤害提高 (100-125)%
魔像的最大生命提高 (18-22)%
起源珠宝
召唤的魔像转为【侵略】
]],
[[
幻彩菱织【仿品】
素布腰带
等级需求: 25
replica: true
联盟: 夺宝奇兵
固定基底词缀: 1
物理伤害提高 (12-24)%
{tags:jewellery_elemental,caster}法术附加 (7-8) - (15-16) 基础火焰伤害
{tags:jewellery_elemental,caster}法术附加 (5-6) - (12-14) 基础冰霜伤害
{tags:jewellery_elemental,caster}法术附加 1 - (30-34) 基础闪电伤害
{tags:jewellery_resistance}+(6-8)% 所有元素抗性
{tags:jewellery_elemental}元素伤害提高 10%
{tags:jewellery_elemental}药剂持续期间，元素伤害提高 30%
]],
[[
骤雨之弦【仿品】
短弓
等级需求: 5, 26 Dex
replica: true
联盟: 夺宝奇兵
固定基底词缀: 0
插槽内的技能石被等级 1 的【箭之新星】辅助
+(10-20) 敏捷
物理伤害提高 100%
攻击速度提高 (25-30)%
攻击击中每个敌人会回复 +2 魔力
投射物速度提高 (50-100)%
+(25-50) 命中值
]],
[[
鲁莽防御【仿品】
钴蓝珠宝
等级需求: 20
联盟: 夺宝奇兵
固定基底词缀: 0
+(2-4)% 格挡法术伤害几率
+(2-4)% 攻击伤害格挡几率
被冻结、感电、点燃 几率 +10%
]],
[[
赤红踪迹【仿品】
巨人胫甲
等级需求: 68, 120 Str
联盟: 夺宝奇兵
固定基底词缀: 0
该装备的护甲提高 (60-80)%
+(60-70) 最大生命
移动速度提高 25%
中毒时，击中获得一个暴击球
静止时，混沌抗性 +30%
中毒时，移动速度加快 15%
幽魂之息
对你的法术击中有 50% 几率施加中毒
]],
[[
无尽之卫【仿品】
禁礼之甲
等级需求: 71, 88 Dex, 122 Int
联盟: 夺宝奇兵
固定基底词缀: 0
+(20-25) 最大魔力
该装备的闪避与能量护盾提高 (220-250)%
+(60-80) 最大生命
每个狂怒球可使移动速度提高 6%
-2 耐力球数量上限
-2 狂怒球数量上限
每个耐力球每秒回复 (100-140) 生命
]],
[[
鲁米的灵药【仿品】
坚岩药剂
等级需求: 27
联盟: 夺宝奇兵
固定基底词缀: 0
使用时获得 1 个耐力球
药剂持续期间，攻击伤害格挡几率 +(35-50)%
药剂持续期间，法术伤害格挡几率 +(20-30)%
药剂持续期间被石化
持续时间缩短 90%
]],
[[
突围者【仿品】
重革腰带
等级需求: 10
联盟: 夺宝奇兵
固定基底词缀: 1
{tags:jewellery_attribute}+(25-35) 力量
{tags:jewellery_defense}最大能量护盾提高 (6-10)%
{tags:life}最大生命提高 (6-10)%
{tags:jewellery_resistance}+(15-25)% 火焰抗性
{tags:jewellery_elemental}你的召唤生物死亡时产生燃烧地面，每秒造成等同它们最大生命 20% 的火焰伤害
{tags:attack}召唤生物的攻击击中有 5% 几率瘫痪敌人
]],
[[
灵魂打击【仿品】
刺锋箭袋
等级需求: 45
联盟: 夺宝奇兵
固定基底词缀: 1
攻击和法术暴击率提高 (20-30)%
+30 敏捷
攻击附加 (13-18) - (26-32) 基础混沌伤害
攻击速度提高 (8-12)%
+(60-80) 最大生命
从生命偷取中获得的最大总恢复量降低 80%
从生命偷取中获得的每秒最大总恢复量提高 40%
]],
[[
开膛斧【仿品】
破城斧
等级需求: 45, 119 Str, 82 Dex
联盟: 夺宝奇兵
固定基底词缀: 0
物理伤害提高 (100-140)%
附加 10 - 20 基础物理伤害
该装备的攻击暴击率提高 (60-80)%
+(20-25)% 冰霜抗性
你的物理伤害可以造成冰冻
异能魔力
]],
[[
溃败【仿品】
暗影之靴
等级需求: 63, 62 Dex, 62 Int
联盟: 夺宝奇兵
固定基底词缀: 0
该装备的闪避与能量护盾提高 (100-150)%
晕眩回复和格挡回复提高 (30-40)%
插入的旅行技能的总伤害额外提高 80%
当移动时，魔力回复速度提高 (30-40)%
你的移动速度变为基础值的 150%
]],
[[
塔萨里奥之印【仿品】
蓝玉戒指
等级需求: 20
联盟: 夺宝奇兵
固定基底词缀: 1
+(20-30)% 冰霜抗性
攻击和法术附加 (15-20) - (25-35) 基础冰霜伤害
+(200-300) 点闪避值
你的冰霜伤害无法冰冻
免疫冰缓
对冰缓敌人附加 60 - 80 基础冰霜伤害
]],
[[
暴风之钢【仿品】
征战之剑
等级需求: 20, 41 Str, 35 Dex
联盟: 夺宝奇兵
固定基底词缀: 1
命中值提高 40%
附加 (5-8) - (15-20) 基础物理伤害
攻击速度提高 (8-14)%
命中值降低 100%
近战单手武器攻击 +(60-100)% 暴击伤害加成
此武器的攻击穿透 30% 元素抗性
获得等同 15% 物理攻击伤害的火焰伤害
获得等同 15% 物理攻击伤害的闪电伤害
]],
[[
强袭者【仿品】
粗革短靴
等级需求: 55, 97 Dex
联盟: 夺宝奇兵
固定基底词缀: 0
+(30-40) 敏捷
闪避值提高 (20-40)%
+(50-70) 最大生命
移动速度提高 25%
灵巧效果提高 (10-30)%
近期内你若击中敌人，则移动速度提高 10%
]],
[[
裂颅【仿品】
刚猛巨锤
等级需求: 40, 131 Str
联盟: 夺宝奇兵
固定基底词缀: 1
敌人被晕眩时间延长 30%
-5000 命中值
此武器进行的所有攻击皆是暴击
]],
[[
托沃卧【仿品】
狂风法杖
等级需求: 65, 212 Int
联盟: 夺宝奇兵
固定基底词缀: 1
法术伤害提高 (35-39)%
施法速度提高 (15-25)%
暴击球达到最大数量时，失去所有的暴击球
暴击球达到最大数量时，获得 1 个狂怒球
每个狂怒球可使冰霜伤害提高 (15-20)%
你击中冻结的敌人时，有 50% 几率获得一个暴击球
暴击球抵达上限时承受 500 冰霜伤害
]],
[[
峡湾之星【仿品】
贤者法杖
等级需求: 30, 119 Int
联盟: 夺宝奇兵
固定基底词缀: 1
法术伤害提高 (17-21)%
攻击速度提高 (5-10)%
该装备的攻击暴击率提高 (20-40)%
攻击可以额外发射 1 个投射物
]],
[[
恩吉尔的叉刃【仿品】
窃者短刃
等级需求: 20, 31 Dex, 45 Int
联盟: 夺宝奇兵
固定基底词缀: 1
攻击和法术暴击率提高 30%
双持时攻击伤害格挡几率 +18%
+(10-20) 敏捷
攻击速度提高 10%
攻击和法术暴击率提高 50%
格挡时冰缓攻击者 4 秒
格挡时使攻击者感电 4 秒
]],
[[
不稳定承载【仿品】
钴蓝珠宝
等级需求: 20
联盟: 夺宝奇兵
固定基底词缀: 0
你的陷阱被敌人触发时回复 (20-30) 生命
]],
[[
夜幕【仿品】
巨盔
等级需求: 22, 27 Str, 27 Int
联盟: 夺宝奇兵
固定基底词缀: 0
晕眩回复和格挡回复提高 (20–22)%
照亮范围缩小 40%
格挡攻击时反射 1 - (180-220) 闪电伤害
防御为零
元素抗性提高 (18-22)%
]],
[[
维多里奥的贡献【仿品】
合板鸢盾
等级需求: 50, 64 Str, 64 Int
联盟: 夺宝奇兵
固定基底词缀: 1
+8% 所有元素抗性
+(50-70) 最大生命
+(20-30)% 闪电抗性
+11% 混沌抗性
你技能的非诅咒类光环效果提高 10%
击中时有 5% 几率为周围友军提供一个耐力球
击败敌人时，有 10% 几率为周围友军提供一个狂怒球
]],
[[
虚空慧眼【仿品】
潜能之戒
等级需求: 45
联盟: 夺宝奇兵
固定基底词缀: 1
有 1 个插槽
此物品上装备的【技能石】品质 +30%
]],
[[
虚空行者【仿品】
暗影者长靴
等级需求: 62, 82 Dex, 42 Int
联盟: 夺宝奇兵
固定基底词缀: 0
+(30-50) 敏捷
该装备的闪避与能量护盾提高 (140-180)%
移动速度提高 30%
迷踪状态下，承受的伤害提高 10%
近期内你若有击败敌人，则进入【迷踪】状态
你在迷踪状态下，投射物连锁次数 +1
绚丽众星行走特效
]],
[[
福库尔的手【仿品】
狂热者手套
等级需求: 43, 34 Str, 34 Int
联盟: 夺宝奇兵
固定基底词缀: 0
附加 (17-23) - (29-31) 基础混沌伤害
+(60-70) 最大生命
+(29-41)% 混沌抗性
你的混沌伤害可以点燃敌人
混沌技能有 20% 几率点燃敌人
总点燃持续时间额外缩短 50%
]],
[[
裂风【仿品】
帝国之弓
等级需求: 66, 212 Dex
联盟: 夺宝奇兵
固定基底词缀: 1
攻击技能的元素伤害提高 (20-24)%
附加 (48-60) - (72-90) 基础冰霜伤害
附加 1 - (120-150) 基础闪电伤害
攻击速度提高 (10-15)%
该装备的攻击暴击率提高 (30-40)%
被你冰冻的敌人额外承受 20% 伤害
击败每个感电的敌人回复 +(90-120) 能量护盾
]],
[[
乱世之翼【仿品】
艾兹麦巨斧
等级需求: 62, 140 Str, 86 Dex
联盟: 夺宝奇兵
固定基底词缀: 0
(7-10)% 法术伤害格挡几率
双持时攻击伤害格挡几率 +(8-12)%
物理伤害提高 (60-80)%
视作双持武器
副手暴击率 +(8-10)%
主手总攻击速度额外加快 (50-70)%
]],
[[
冬之心【仿品】
帝金护身符
等级需求: 42
联盟: 夺宝奇兵
固定基底词缀: 1
物品稀有度提高 (12-20)%
{tags:jewellery_attribute}+(20-30) 敏捷
{tags:jewellery_defense}+(50-70) 最大能量护盾
{tags:jewellery_resistance}+75% 闪电抗性
{tags:jewellery_defense}感电时，每秒回复 5% 能量护盾
不受感电影响
]],
[[
纯才【仿品】
翠绿珠宝
仅限: 1
等级需求: 20
固定基底词缀: 0
你在天赋树上连接到野蛮人的出发位置时，你获得：每秒生命再生 1%
你在天赋树上连接到决斗者的出发位置时，你获得：近战打击距离 +2
你在天赋树上连接到游侠的出发位置时，你获得：药剂充能获取率提高 20%
你在天赋树上连接到暗影的出发位置时，你获得：攻击和施法速度提高 12%
你在天赋树上连接到女巫的出发位置时，你获得：技能效果持续时间延长 20%
你在天赋树上连接到圣堂武僧的出发位置时，你获得：攻击和法术伤害格挡率 +4%
你在天赋树上连接到贵族的出发位置时，你获得：伤害提高 30%
]],
--3.11 升级装




--3.11


--3.10


--3.9














}


local lines = {
	"妄想症",
	"中型星团珠宝",
	"联盟: 惊悸迷雾",
	"源: 「梦魇拟像」限定掉落",
	"Has Alt Variant: true",
	"Has Alt Variant Two: true",
	"增加 4 个天赋技能",
	"增加的小天赋无效果",
}
local notables = { }
for name in pairs(data["3_0"].clusterJewels.notableSortOrder) do
	table.insert(notables, name)
end
table.sort(notables)
for index, name in ipairs(notables) do
	table.insert(lines, "版本: "..name)
	table.insert(lines, "{variant:"..index.."}其中 1 个增加的天赋为【"..name.."】")
end
table.insert(data.uniques.new, table.concat(lines, '\n'))




local linesForbiddenShako = {
	"禁断的军帽",
	"强化巨盔",
	"联盟: 古灵庄园",
	"源: 由传奇Boss【庄园化身欧莱娜】 专属掉落",
	"等级需求: 68, 59 Str, 59 Int",
	"Has Alt Variant: true",	
	"+(25-30) 全属性",
}
local linesForbiddenShakoReplica = {
	"禁断的军帽【仿品】",
	"强化巨盔",
	"联盟: 夺宝奇兵",	
	"等级需求: 53, 59 Str, 59 Int",
	"Has Alt Variant: true",
	"（第一个辅助等级1~10，第二个辅助25~35）",
	"+(25-30) 全属性",
}
local supports = { }
for name, grantedEffect in pairs(data["3_0"].skills) do

	if not grantedEffect.hidden and not grantedEffect.fromItem  and  grantedEffect.support and not grantedEffect.plusVersionOf then
		local gem= grantedEffect.name:gsub("%(辅%)",""):gsub("（辅）","")
		table.insert(supports,gem)
	end
end
table.sort(supports)
for index, name in ipairs(supports) do
	table.insert(linesForbiddenShako, "版本: "..name)
	table.insert(linesForbiddenShakoReplica, "版本: "..name)	
	table.insert(linesForbiddenShako, "{variant:"..index.."}此物品上的技能石受到 (15-25) 级的 "..name.." 辅助")
	table.insert(linesForbiddenShakoReplica, "{variant:"..index.."}此物品上的技能石受到 (1-35) 级的 "..name.." 辅助")
	
	
end
table.insert(data.uniques.new, table.concat(linesForbiddenShako, '\n'))
table.insert(data.uniques.new, table.concat(linesForbiddenShakoReplica, '\n'))

