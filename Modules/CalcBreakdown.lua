﻿-- Path of Building
--
-- Module: Calc Breakdown
-- Calculation breakdown generators
--
local modDB, output, actor = ...

local unpack = unpack
local ipairs = ipairs
local t_insert = table.insert
local m_sqrt = math.sqrt
local s_format = string.format

local breakdown = { }


function breakdown.multiShow(out, chain)
	local base = chain.base
	local lines = 0
	for _, mult in ipairs(chain) do
		if mult[2] and mult[2] ~= 1 then
			if lines == 0 then
				if base then
					if chain.label then
						t_insert(out, chain.label)
					end
					t_insert(out, base)
					t_insert(out, s_format(unpack(mult)))
					lines = 2
				else
					base = s_format(unpack(mult))
				end
			else
				t_insert(out, s_format(unpack(mult)))
				lines = lines + 1
			end
		end
	end
	if lines > 0 then
		t_insert(out, chain.total)
	end
	return lines
end



function breakdown.multiChain(out, chain)
	local base = chain.base
	local lines = 0
	for _, mult in ipairs(chain) do
		if mult[2] and mult[2] ~= 1 then
			if lines == 0 then
				if base then
					if chain.label then
						t_insert(out, chain.label)
					end
					t_insert(out, base)
					t_insert(out, "x "..s_format(unpack(mult)))
					lines = 2
				else
					base = s_format(unpack(mult))
				end
			else
				t_insert(out, "x "..s_format(unpack(mult)))
				lines = lines + 1
			end
		end
	end
	if lines > 0 then
		t_insert(out, chain.total)
	end
	return lines
end

function breakdown.simple(extraBase, cfg, total, ...)
	extraBase = extraBase or 0
	local base = modDB:Sum("BASE", cfg, (...))
	if (base + extraBase) ~= 0 then
		local inc = modDB:Sum("INC", cfg, ...)
		local more = modDB:More(cfg, ...)
		if inc ~= 0 or more ~= 1 or (base ~= 0 and extraBase ~= 0) then
			local out = { }
			if base ~= 0 and extraBase ~= 0 then
out[1] = s_format("(%g + %g) ^8(基础)", extraBase, base)
			else
out[1] = s_format("%g ^8(基础)", base + extraBase)
			end
			if inc ~= 0 then
t_insert(out, s_format("x %.2f ^8(提高/降低)", 1 + inc/100))
			end
			if more ~= 1 then
t_insert(out, s_format("x %.2f ^8(额外提高/降低)", more))
			end
			t_insert(out, s_format("= %g", total))
			return out
		end
	end
end

function breakdown.mod(cfg, ...)
	local inc = modDB:Sum("INC", cfg, ...)
	local more = modDB:More(cfg, ...)
	if inc ~= 0 and more ~= 1 then
		return { 
s_format("%.2f ^8(提高/降低)", 1 + inc/100),
s_format("x %.2f ^8(额外提高/降低)", more),
			s_format("= %.2f", (1 + inc/100) * more),
		}
	end
end

function breakdown.slot(source, sourceName, cfg, base, total, ...)
	local inc = modDB:Sum("INC", cfg, ...)
	local more = modDB:More(cfg, ...)
	t_insert(breakdown[...].slots, {
		base = base,
		inc = (inc ~= 0) and s_format(" x %.2f", 1 + inc/100),
		more = (more ~= 1) and s_format(" x %.2f", more),
		total = s_format("%.2f", total or (base * (1 + inc / 100) * more)),
		source = source,
		sourceName = sourceName,
		item = actor.itemList[source],
	})
end

function breakdown.area(base, areaMod, total, label)
	if base ~= total then
		return {
s_format("%d ^8(基础半径)", base),
s_format("x %.2f ^8(面积加成开平方根)", m_sqrt(areaMod)),
			s_format("= %d", total),
			label,
			radius = total
		}
	else
		return {
			label,
			radius = total
		}
	end
end

function breakdown.effMult(damageType, resist, pen, taken, mult,takenMore,spString)
	local out = { }
local resistForm = (damageType == "物理") and "物理伤害减伤" or "抗性"
	
	if spString then 
		t_insert(out, spString)
	end 
	if resist ~= 0 then
		t_insert(out, s_format("敌人 %s: %d%%", resistForm, resist))
	end	
	if pen ~= 0 then
		t_insert(out, "有效抗性:")
		t_insert(out, s_format("%d%% ^8(抗性)", resist))
		t_insert(out, s_format("- %d%% ^8(穿透)", pen))
		t_insert(out, s_format("= %d%%", resist - pen))
	else 
		if damageType ~= "物理" and  isIgnorePen then 
			t_insert(out, s_format("无视抗性穿透"))
		end 
	end 
	
	
	breakdown.multiChain(out, {
		label = "有效 DPS 加成:",
		{ "%.2f ^8(%s)", 1 - (resist - pen) / 100, resistForm },
		{ "%.2f ^8(提高/降低承受的伤害)", 1 + taken / 100 },
		{ "%.2f ^8(额外提高/降低承受的总伤害)", takenMore },
		total = s_format("= %.3f", mult),
	})
	
	return out
end

function breakdown.dot(out, baseVal, inc, more, mult, rate, effMult, total)
	breakdown.multiChain(out, {
base = s_format("%.1f ^8(每秒基础伤害)", baseVal), 
{ "%.2f ^8(提高/降低)", 1 + inc/100 },
{ "%.2f ^8(额外提高/降低)", more },
{ "%.2f ^8(额外加成)", 1 + (mult or 0)/100 },
{ "%.2f ^8(速率加成)", rate },
{ "%.3f ^8(有效 DPS 加成)", effMult },
total = s_format("= %.1f ^8每秒", total),
	})
end


function breakdown.critDot(dotMulti, critMulti, dotChance, critChance)
	local combined = (dotMulti * dotChance) + (critMulti * critChance)
	local out = { }
	if dotChance > 0 then
		t_insert(out, s_format("非暴击:"))
		t_insert(out, s_format("%.2f ^8(非暴击的持续伤害加成)", dotMulti))
		t_insert(out, s_format("x %.4f ^8(非暴击创建的实例)", dotChance))
		t_insert(out, s_format("= %.2f", dotMulti * dotChance))
	end
	if critChance > 0 then
		t_insert(out, s_format("暴击:"))
		t_insert(out, s_format("%.2f ^8(暴击时的持续伤害加成)", critMulti))
		t_insert(out, s_format("x %.4f ^8(暴击创建的实例)", critChance))
		t_insert(out, s_format("= %.2f", critMulti * critChance))
	end
	if (dotChance > 0 and critChance > 0) and (dotMulti ~= critMulti)then
		t_insert(out, s_format("有效持续伤害加成:"))
		t_insert(out, s_format("%.2f + %.2f", dotMulti * dotChance, critMulti * critChance))
		t_insert(out, s_format("= %.2f", combined))
	end
	return out
end		


function breakdown.leech(instant, instantRate, instances, pool, rate, max, dur)
	local out = { }
	if actor.mainSkill.skillData.showAverage then
		if instant > 0 then
t_insert(out, s_format("瞬间偷取: %.1f", instant))
		end
		if instances > 0 then
t_insert(out, "每个实例总偷取:")
t_insert(out, s_format("%d ^8(偷取池大小)", pool))
t_insert(out, "x 0.02 ^8(基础偷取速率是 2% 每秒)")
			local rateMod = calcLib.mod(modDB, skillCfg, rate)
			if rateMod ~= 1 then
t_insert(out, s_format("x %.2f ^8(偷取速率加成)", rateMod))
			end
t_insert(out, s_format("x %.2fs ^8(实例持续时间)", dur))
			t_insert(out, s_format("= %.1f", pool * 0.02 * rateMod * dur))
		end
	else
		if instantRate > 0 then
t_insert(out, s_format("每次击中瞬间偷取: %.1f", instant))
t_insert(out, s_format("每秒瞬间偷取: %.1f", instantRate))
		end
		if instances > 0 then
t_insert(out, "每个实例偷取速率:")
t_insert(out, s_format("%d ^8(偷取池大小)", pool))
t_insert(out, "x 0.02 ^8(基础偷取速率是 2% 每秒)")
			local rateMod = calcLib.mod(modDB, skillCfg, rate)
			if rateMod ~= 1 then
t_insert(out, s_format("x %.2f ^8(偷取速率加成)", rateMod))
			end
t_insert(out, s_format("= %.1f ^8每秒", pool * 0.02 * rateMod))
t_insert(out, "对单体目标最大偷取速率:")
			t_insert(out, s_format("%.1f", pool * 0.02 * rateMod))
t_insert(out, s_format("x %.1f ^8(平均实例)", instances))
			local total = pool * 0.02 * rateMod * instances
t_insert(out, s_format("= %.1f ^8每秒", total))
			if total <= max then
t_insert(out, s_format("达到最大所需时间: %.1fs", dur))
			end
t_insert(out, s_format("偷取速率上限: %.1f", max))
			if total > max then
t_insert(out, s_format("达到上限所需时间: %.1fs", dur / total * max))
			end
		end
	end
	return out
end

return breakdown
