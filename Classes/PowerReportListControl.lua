-- Path of Building
--
-- Class: Power Report
-- Power Report control.
--

local t_insert = table.insert
local t_remove = table.remove
local t_sort = table.sort

local PowerReportListClass = newClass("PowerReportListControl", "ListControl", function(self, anchor, x, y, width, height, report, powerLabel, nodeSelectCallback)

	self.originalList = report

	self.ListControl(anchor, 0, 75, width, height-50, 20, false, false, self:ReList())

	self.colList = {
		{ width = width * 0.15, label = "天赋点类型" },
		{ width = width * 0.50, label = "节点名称" },
		{ width = width * 0.18, label = powerLabel },
		{ width = width * 0.12, label = "距离" }
	}
	self.label = "点击在天赋树查看节点"
	self.colLabels = true
	self.nodeSelectCallback = nodeSelectCallback
	self.showClusters = false
	self.onlyNotables = false
	
	self.controls.showClusters = new("CheckBoxControl", {"BOTTOMRIGHT",self,"TOPRIGHT"}, 0, -2, 18, "显示星团珠宝:", function(state)
		self.showClusters = state
		self:ReList()
		self:ReSort()
	end, "显示星团珠宝的节点")
	self.controls.onlyNotables = new("CheckBoxControl", {"BOTTOMRIGHT", self.controls.showClusters, "TOPRIGHT"}, 0, 0, 18, "只显示核心天赋:", function(state)
		self.onlyNotables = state
		self:ReList()
		self:ReSort()
	end)

	self.controls.sortLabel = new("LabelControl", {"BOTTOMLEFT", self, "TOPLEFT"}, 0, -22, 0, 16, "^7排序:")
	self.controls.sortBy = new("DropDownControl", {"LEFT", self.controls.sortLabel, "RIGHT"}, 5, 0, 150, 20, {powerLabel, "距离"}, function(sel)
		self:ReSort()		
	end)

end)

function PowerReportListClass:ReSort()
	if (self.controls.sortBy.selIndex == 1) then
		t_sort(self.list, function (a,b)
			return (a.power) > (b.power)
		end)
	elseif (self.controls.sortBy.selIndex == 2) then
		t_sort(self.list, function (a,b)
			if (a.pathDist == "Anoint") or (a.pathDist == "Cluster") then
				return false
			end
			if (b.pathDist == "Anoint") or (b.pathDist == "Cluster") then
				return true
			end
			if (a.pathDist == b.pathDist) then
				return (a.power) > (b.power)
			end
			return (a.pathDist) < (b.pathDist)
		end)
	end
end

function PowerReportListClass:ReList()
	local filteredList = { }
	local iterate = 1
	local insert = true

	while(true) do

		if (self.originalList[iterate].power <= 0) then
			insert = false
		end
		if (not self.showClusters) and (self.originalList[iterate].pathDist == "Cluster") then
			insert = false
		end
		if (self.onlyNotables) and (self.originalList[iterate].type ~= "Notable") then
			insert = false
		end

		if insert then
			t_insert(filteredList, self.originalList[iterate])
		end

		iterate = iterate + 1
		insert = true

		if iterate > #self.originalList then
			break
		end		
	end

	if (next(filteredList)) then
		self.list = filteredList
		return filteredList
	else 
		self.list = self.originalList
		return self.originalList
	end
end

function PowerReportListClass:OnSelClick(index, report, doubleClick)
	if self.nodeSelectCallback then
		self.nodeSelectCallback(report)
	end
end

function PowerReportListClass:GetRowValue(column, index, report)
	if column == 1 then
		return report.type
	elseif column == 2 then
		return report.name
	elseif column == 3 then
		return report.powerStr
	elseif column == 4 then
		if report.pathDist == 1000 then
			return "Anoint"
		else
			return report.pathDist
		end
	else
		return ""
	end
end
