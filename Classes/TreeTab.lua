-- Path of Building
--
-- Module: Tree Tab
-- Passive skill tree tab for the current build.
--
--local launch, main = ...

local ipairs = ipairs
local t_insert = table.insert
local m_min = math.min

local TreeTabClass = newClass("TreeTab", "ControlHost", function(self, build)
	self.ControlHost()

	self.build = build

	self.viewer = new("PassiveTreeView")

	self.specList = { }
	self.specList[1] = new("PassiveSpec", build, build.targetVersionData.latestTreeVersion)
	self:SetActiveSpec(1)

	self.anchorControls = new("Control", nil, 0, 0, 0, 20)
	self.controls.specSelect = new("DropDownControl", {"LEFT",self.anchorControls,"RIGHT"}, 0, 0, 150, 20, nil, function(index, value)
		if self.specList[index] then
			self.build.modFlag = true
			self:SetActiveSpec(index)
		else
			self:OpenSpecManagePopup()
		end
	end)
	self.controls.specSelect.tooltipFunc = function(tooltip, mode, selIndex, selVal)
		tooltip:Clear()
		if mode ~= "OUT" then
			local spec = self.specList[selIndex]
			if spec then
				local used, ascUsed, sockets = spec:CountAllocNodes()
tooltip:AddLine(16, "职业: "..spec.curClassName)
tooltip:AddLine(16, "升华: "..spec.curAscendClassName)
tooltip:AddLine(16, "已使用: "..used)
				if sockets > 0 then
tooltip:AddLine(16, "珠宝插槽: "..sockets)
				end
				if selIndex ~= self.activeSpec then
					local calcFunc, calcBase = self.build.calcsTab:GetMiscCalculator()
					if calcFunc then
						local output = calcFunc({ spec = spec })
self.build:AddStatComparesToTooltip(tooltip, calcBase, output, "^7切换到这个天赋树会带给你:")
					end
					if spec.curClassId == self.build.spec.curClassId then
						local respec = 0
						for nodeId, node in pairs(self.build.spec.allocNodes) do
							if node.type ~= "ClassStart" and node.type ~= "AscendClassStart" and not spec.allocNodes[nodeId] then
								if node.ascendancyName then
									respec = respec + 5
								else
									respec = respec + 1
								end
							end
						end
						if respec > 0 then
tooltip:AddLine(16, "^7切换到这个天赋树需要 "..respec.." 后悔点.")
						end
					end
				end
				tooltip:AddLine(16, "游戏版本: "..treeVersions[spec.treeVersion].short)
			end
		end
	end
self.controls.reset = new("ButtonControl", {"LEFT",self.controls.specSelect,"RIGHT"}, 8, 0, 60, 20, "重置", function()
main:OpenConfirmPopup("Reset Tree", "确定要重置天赋树吗?", "重置", function()			
			
			self.build.spec:ResetNodes()
			--self.build.spec:resetAllocTimeJew(); 
			self.build.spec:AddUndoState()
			self.build.buildFlag = true
		end)
	end)
self.controls.import = new("ButtonControl", {"LEFT",self.controls.reset,"RIGHT"}, 8, 0, 90, 20, "导入天赋树", function()
		self:OpenImportPopup()
	end)
self.controls.export = new("ButtonControl", {"LEFT",self.controls.import,"RIGHT"}, 8, 0, 90, 20, "导出天赋树", function()
		self:OpenExportPopup()
	end)
self.controls.treeSearch = new("EditControl", {"LEFT",self.controls.export,"RIGHT"}, 8, 0, 300, 20, "", "搜索", "%c%(%)", 100, function(buf)
		self.viewer.searchStr = buf
	end)
self.controls.treeHeatMap = new("CheckBoxControl", {"LEFT",self.controls.treeSearch,"RIGHT"}, 130, 0, 20, "高亮天赋树节点:", function(state)	
		self.viewer.showHeatMap = state
	end)
	self.controls.treeHeatMap.tooltipText = function()
		local offCol, defCol = main.nodePowerTheme:match("(%a+)/(%a+)")
return "启用时, 会高亮显示你已点亮的天赋树路径\n未点亮的天赋会更加暗淡.\n攻击型大点会显示 "..offCol:lower().."色, 防御型大点会显示"..defCol:lower().."色."
	end
self.controls.specConvertText = new("LabelControl", {"BOTTOMLEFT",self.controls.specSelect,"TOPLEFT"}, 0, -14, 0, 16, "^7这是一个旧版本的天赋树，也许无法完整地转换为当前游戏版本.")
	self.controls.specConvertText.shown = function()
		return self.showConvert
	end
self.controls.specConvert = new("ButtonControl", {"LEFT",self.controls.specConvertText,"RIGHT"}, 8, 0, 120, 20, "^2转化为  "..treeVersions[self.build.targetVersionData.latestTreeVersion].short, function()
		local newSpec = new("PassiveSpec", self.build, self.build.targetVersionData.latestTreeVersion)
		newSpec.title = self.build.spec.title
		newSpec.jewels = copyTable(self.build.spec.jewels)
		--newSpec:DecodeURL(self.build.spec:EncodeURL())
		newSpec:RestoreUndoState(self.build.spec:CreateUndoState())
		newSpec:BuildClusterJewelGraphs()
		
		t_insert(self.specList, self.activeSpec + 1, newSpec)
		self:SetActiveSpec(self.activeSpec + 1)
		self.modFlag = true
main:OpenMessagePopup("天赋树转换完成", "天赋树转化为 "..treeVersions[self.build.targetVersionData.latestTreeVersion].short..".\n注意，游戏天赋树的版本变动可能回导致一些天赋点在转化后会被取消.\n\n你可以使用左下方的天赋树切换来切换到旧版本的.")
	end)
end)

function TreeTabClass:Draw(viewPort, inputEvents)
	self.anchorControls.x = viewPort.x + 4
	self.anchorControls.y = viewPort.y + viewPort.height - 24

	for id, event in ipairs(inputEvents) do
		if event.type == "KeyDown" then
			if event.key == "z" and IsKeyDown("CTRL") then
				self.build.spec:Undo()
				self.build.buildFlag = true
				inputEvents[id] = nil
			elseif event.key == "y" and IsKeyDown("CTRL") then
				self.build.spec:Redo()
				self.build.buildFlag = true
				inputEvents[id] = nil
			elseif event.key == "f" and IsKeyDown("CTRL") then
				self:SelectControl(self.controls.treeSearch)
			end
		end
	end
	self:ProcessControlsInput(inputEvents, viewPort)

	local treeViewPort = { x = viewPort.x, y = viewPort.y, width = viewPort.width, height = viewPort.height - (self.showConvert and 64 or 32) }	
	self.viewer:Draw(self.build, treeViewPort, inputEvents)

	self.controls.specSelect.selIndex = self.activeSpec
	wipeTable(self.controls.specSelect.list)
	for id, spec in ipairs(self.specList) do
t_insert(self.controls.specSelect.list, (spec.treeVersion ~= self.build.targetVersionData.latestTreeVersion and ("["..treeVersions[spec.treeVersion].short.."] ") or "")..(spec.title or "Default"))
	end
t_insert(self.controls.specSelect.list, "管理天赋树...")
	if not self.controls.treeSearch.hasFocus then
		self.controls.treeSearch:SetText(self.viewer.searchStr)
	end
	self.controls.treeHeatMap.state = self.viewer.showHeatMap

	SetDrawLayer(1)

	SetDrawColor(0.05, 0.05, 0.05)
	DrawImage(nil, viewPort.x, viewPort.y + viewPort.height - 28, viewPort.width, 28)
	SetDrawColor(0.85, 0.85, 0.85)
	DrawImage(nil, viewPort.x, viewPort.y + viewPort.height - 32, viewPort.width, 4)
	if self.showConvert then
		SetDrawColor(0.05, 0.05, 0.05)
		DrawImage(nil, viewPort.x, viewPort.y + viewPort.height - 60, viewPort.width, 28)
		SetDrawColor(0.85, 0.85, 0.85)
		DrawImage(nil, viewPort.x, viewPort.y + viewPort.height - 64, viewPort.width, 4)
	end
	self:DrawControls(viewPort)
end

function TreeTabClass:Load(xml, dbFileName)
	self.specList = { }
	if xml.elem == "Spec" then
		-- Import single spec from old build
		self.specList[1] = new("PassiveSpec", self.build, self.build.targetVersionData.defaultTreeVersion)
		self.specList[1]:Load(xml, dbFileName)
		self.activeSpec = 1
		self.build.spec = self.specList[1]
		return
	end
	for _, node in pairs(xml) do
		if type(node) == "table" then
			if node.elem == "Spec" then
				if node.attrib.treeVersion and not treeVersions[node.attrib.treeVersion] then
					main:OpenMessagePopup("Unknown Passive Tree Version", "The build you are trying to load uses an unrecognised version of the passive skill tree.\nYou may need to update the program before loading this build.")
					return true
				end
				local newSpec = new("PassiveSpec", self.build, node.attrib.treeVersion or self.build.targetVersionData.defaultTreeVersion)			
				newSpec:Load(node, dbFileName)
				t_insert(self.specList, newSpec)
			end
		end
	end
	if not self.specList[1] then
		self.specList[1] = new("PassiveSpec", self.build, self.build.targetVersionData.latestTreeVersion)
	end
	self:SetActiveSpec(tonumber(xml.attrib.activeSpec) or 1)
end

function TreeTabClass:PostLoad()
	for _, spec in ipairs(self.specList) do
		spec:PostLoad()
	end
end

function TreeTabClass:Save(xml)
	xml.attrib = { 
		activeSpec = tostring(self.activeSpec)
	}
	for specId, spec in ipairs(self.specList) do
		if specId == self.activeSpec then
			-- Update this spec's jewels from the socket slots
			for _, slot in pairs(self.build.itemsTab.slots) do
				if slot.nodeId then
					spec.jewels[slot.nodeId] = slot.selItemId
				end
			end
		end
		local child = {
			elem = "Spec"
		}
		spec:Save(child)
		t_insert(xml, child)
	end
	self.modFlag = false
end

function TreeTabClass:SetActiveSpec(specId)
	local prevSpec = self.build.spec
	self.activeSpec = m_min(specId, #self.specList)
	local curSpec = self.specList[self.activeSpec]
	self.build.spec = curSpec
	self.build.buildFlag = true
	for _, slot in pairs(self.build.itemsTab.slots) do
		if slot.nodeId then
			if prevSpec then
				-- Update the previous spec's jewel for this slot
				prevSpec.jewels[slot.nodeId] = slot.selItemId
			end
			if curSpec.jewels[slot.nodeId] then
				-- Socket the jewel for the new spec
				slot.selItemId = curSpec.jewels[slot.nodeId]
			end
		end
	end
	self.showConvert = curSpec.treeVersion ~= self.build.targetVersionData.latestTreeVersion
	if self.build.itemsTab.itemOrderList[1] then
		-- Update item slots if items have been loaded already
		self.build.itemsTab:PopulateSlots()
	end
	--self.build.spec:resetAllocTimeJew(); 
			--	self.build.spec:allocTimeJew(); 
				
end

function TreeTabClass:OpenSpecManagePopup()
main:OpenPopup(370, 290, "天赋树管理", {
		new("PassiveSpecListControl", nil, 0, 50, 350, 200, self),
		new("ButtonControl", nil, 0, 260, 90, 20, "Done", function()
			main:ClosePopup()
		end),
	})
end

function TreeTabClass:OpenImportPopup()
	local controls = { }
	local function decodeTreeLink(treeLink)
		local errMsg = self.build.spec:DecodeURL(treeLink)
		if errMsg then
			controls.msg.label = "^1"..errMsg
		else
			self.build.spec:AddUndoState()
			--self.build.spec:resetAllocTimeJew(); 
		--	self.build.spec:allocTimeJew(); 
			self.build.buildFlag = true
			main:ClosePopup()
		end
	end
controls.editLabel = new("LabelControl", nil, 0, 20, 0, 16, "天赋树链接:")
	controls.edit = new("EditControl", nil, 0, 40, 350, 18, "", nil, nil, nil, function(buf)
		controls.msg.label = ""
	end)
	controls.msg = new("LabelControl", nil, 0, 58, 0, 16, "")
controls.import = new("ButtonControl", nil, -45, 80, 80, 20, "导入", function()
		local treeLink = controls.edit.buf
		if #treeLink == 0 then
			return
		end
		if treeLink:match("poeurl%.com/") then
			controls.import.enabled = false
controls.msg.label = "解析PoEURL链接..."
			local id = LaunchSubScript([[
				local treeLink = ...
				local curl = require("lcurl.safe")
				local easy = curl.easy()
				easy:setopt_url(treeLink)
				easy:setopt_writefunction(function(data)
					return true
				end)
				easy:perform()
				local redirect = easy:getinfo(curl.INFO_REDIRECT_URL)
				easy:close()
				if not redirect or redirect:match("poeurl%.com/") then
					return nil, "Failed to resolve PoEURL link"
				end
				return redirect
			]], "", "", treeLink)
			if id then
				launch:RegisterSubScript(id, function(treeLink, errMsg)
					if errMsg then
						controls.msg.label = "^1"..errMsg
						controls.import.enabled = true
					else
						decodeTreeLink(treeLink)
					end
				end)
			end
		else
			decodeTreeLink(treeLink)
		end
	end)
controls.cancel = new("ButtonControl", nil, 45, 80, 80, 20, "取消", function()
		main:ClosePopup()
	end)
main:OpenPopup(380, 110, "导入天赋树", controls, "import", "edit")
end

function TreeTabClass:OpenExportPopup()
	local treeLink = self.build.spec:EncodeURL(treeVersions[self.build.spec.treeVersion].export)
	local popup
	local controls = { }
controls.label = new("LabelControl", nil, 0, 20, 0, 16, "天赋树链接:")
	controls.edit = new("EditControl", nil, 0, 40, 350, 18, treeLink, nil, "%Z")
	controls.shrink = new("ButtonControl", nil, -90, 70, 140, 20, "Shrink with PoEURL", function()
		controls.shrink.enabled = false
		controls.shrink.label = "Shrinking..."
		launch:DownloadPage("http://poeurl.com/shrink.php?url="..treeLink, function(page, errMsg)
			controls.shrink.label = "Done"
			if errMsg or not page:match("%S") then
main:OpenMessagePopup("PoEURL Shortener", "分享PoEURL链接失败（可能被墙了？）. 可以考虑稍后重试.")
			else
				treeLink = "http://poeurl.com/"..page
				controls.edit:SetText(treeLink)
				popup:SelectControl(controls.edit)
			end
		end)
	end)
controls.copy = new("ButtonControl", nil, 30, 70, 80, 20, "复制", function()
		Copy(treeLink)
	end)
controls.done = new("ButtonControl", nil, 120, 70, 80, 20, "关闭", function()
		main:ClosePopup()
	end)
popup = main:OpenPopup(380, 100, "导出天赋树链接", controls, "done", "edit")
end



function TreeTabClass:ModifyNodePopup(selectedNode)
	local controls = { }
	local modGroups = { }
	local smallAdditions = {"力量", "敏捷", "奉献"}
	if not self.build.latestTree.legion.editedNodes then
		self.build.latestTree.legion.editedNodes = { }
	end
	print(selectedNode.conqueredBy.conqueror.type)
	local function buildMods(selectedNode)
		wipeTable(modGroups)
		for _, node in pairs(self.build.latestTree.legion.nodes) do
			if node.id:match("^"..selectedNode.conqueredBy.conqueror.type.."_.+") and node["not"] == (selectedNode.isNotable or false) and not node.ks then
				t_insert(modGroups, {
					label = node.dn,
					descriptions = copyTable(node.sd),
					type = selectedNode.conqueredBy.conqueror.type,
					id = node.id,
				})
			end
		end
		for _, addition in pairs(self.build.latestTree.legion.additions) do
			-- exclude passives that are already added (vaal, attributes, devotion)
			if addition.id:match("^"..selectedNode.conqueredBy.conqueror.type.."_.+") and not isValueInArray(smallAdditions, addition.dn) and selectedNode.conqueredBy.conqueror.type ~= "vaal" then
				t_insert(modGroups, {
					label = addition.dn,
					descriptions = copyTable(addition.sd),
					type = selectedNode.conqueredBy.conqueror.type,
					id = addition.id,
				})
			end
		end
	end
	local function addModifier(selectedNode)
		local newLegionNode = self.build.latestTree.legion.nodes[modGroups[controls.modSelect.selIndex].id]
		-- most nodes only replace or add 1 mod, so we need to just get the first control
		local modDesc = string.gsub(controls[1].label, "%^7", "")
		if  selectedNode.conqueredBy.conqueror.type == "eternal" or selectedNode.conqueredBy.conqueror.type == "templar" then
			self.specList[1]:NodeAdditionOrReplacementFromString(selectedNode, modDesc, true)
			selectedNode.dn = newLegionNode.dn
			selectedNode.sprites = newLegionNode.sprites
			selectedNode.icon = newLegionNode.icon
			selectedNode.spriteId = newLegionNode.id
		elseif selectedNode.conqueredBy.conqueror.type == "vaal" then
			selectedNode.dn = newLegionNode.dn
			selectedNode.sprites = newLegionNode.sprites
			selectedNode.icon = newLegionNode.icon
			selectedNode.spriteId = newLegionNode.id
			self.specList[1]:NodeAdditionOrReplacementFromString(selectedNode, modDesc, true)

			-- Vaal is the exception
			if controls[2] then
				modDesc = string.gsub(controls[2].label, "%^7", "")
				self.specList[1]:NodeAdditionOrReplacementFromString(selectedNode, modDesc, false)
			end
		else
			-- Replace the node first before adding the new line so we don't get multiple lines
			if self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id] and self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id][selectedNode.id] then
				self.specList[1]:ReplaceNode(selectedNode, self.build.latestTree.nodes[selectedNode.id])
			end
			self.specList[1]:NodeAdditionOrReplacementFromString(selectedNode, modDesc, false)
		end
		if self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id] == nil then 
			self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id] = {}
		end 
		if not self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id] then			
			t_insert(self.build.latestTree.legion.editedNodes, selectedNode.conqueredBy.id, {})
		end
		print("selectedNode.id="..selectedNode.id)
		print(self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id])
		print(selectedNode)
		t_insert(self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id], selectedNode.id, copyTable(selectedNode, true))
	end

	local function constructUI(modGroup)
		local totalHeight = 43
		local i = 1
		while controls[i] or controls["slider"..i] do
			controls[i] = nil
			controls["slider"..i] = nil
			i = i + 1
		end
		for idx, desc in ipairs(modGroup.descriptions) do
			controls[idx] = new("LabelControl", {"TOPLEFT", controls["slider"..idx-1] or controls[idx-1] or controls.modSelect,"TOPLEFT"}, 0, 20, 600, 16, "^7"..desc)
			totalHeight = totalHeight + 20
			if desc:match("%(%-?[%d%.]+%-[%d%.]+%)") then
				controls["slider"..idx] = new("SliderControl", {"TOPLEFT",controls[idx],"BOTTOMLEFT"}, 0, 2, 300, 16, function(val)
					controls[idx].label = itemLib.applyRange(modGroup.descriptions[idx], val)
				end)
				controls["slider"..idx]:SetVal(.5)
				controls["slider"..idx].width = function()
					return controls["slider"..idx].divCount and 300 or 100
				end
				totalHeight = totalHeight + 20
			end
		end
		main.popups[1].height = totalHeight + 30
		controls.save.y = totalHeight
		controls.reset.y = totalHeight
		controls.close.y = totalHeight
	end

	buildMods(selectedNode)
	controls.modSelectLabel = new("LabelControl", {"TOPRIGHT",nil,"TOPLEFT"}, 150, 25, 0, 16, "^7词缀:")
	controls.modSelect = new("DropDownControl", {"TOPLEFT",nil,"TOPLEFT"}, 155, 25, 579, 18, modGroups, function(idx) constructUI(modGroups[idx]) end)
	controls.modSelect.tooltipFunc = function(tooltip, mode, index, value)
		tooltip:Clear()
		if mode ~= "OUT" and value then
			for _, line in ipairs(value.descriptions) do
				tooltip:AddLine(16, "^7"..line)
			end
		end
	end
	controls.save = new("ButtonControl", nil, -90, 75, 80, 20, "添加", function()
		addModifier(selectedNode)
		self.build.buildFlag = true
		main:ClosePopup()
	end)
	controls.reset = new("ButtonControl", nil, 0, 75, 80, 20, "重置词缀", function()
		if self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id] then
			self.build.latestTree.legion.editedNodes[selectedNode.conqueredBy.id][selectedNode.id] = nil
		end
		if selectedNode.conqueredBy.conqueror.type == "vaal" and selectedNode.type == "Normal" then
			local legionNode = self.build.latestTree.legion.nodes["vaal_small_fire_resistance"]
			selectedNode.dn = "瓦尔小天赋"
			selectedNode.sd = {"右键设置词缀"}
			selectedNode.sprites = legionNode.sprites
			selectedNode.mods = {""}
			selectedNode.modList = new("ModList")
			selectedNode.modKey = ""
		elseif selectedNode.conqueredBy.conqueror.type == "vaal" and selectedNode.type == "Notable" then
			local legionNode = self.build.latestTree.legion.nodes["vaal_notable_curse_1"]
			selectedNode.dn = "瓦尔核心天赋"
			selectedNode.sd = {"右键设置词缀"}
			selectedNode.sprites = legionNode.sprites
			selectedNode.mods = {""}
			selectedNode.modList = new("ModList")
			selectedNode.modKey = ""
		else
			self.specList[1]:ReplaceNode(selectedNode, self.build.latestTree.nodes[selectedNode.id])
			if selectedNode.conqueredBy.conqueror.type == "templar" then
				self.specList[1]:NodeAdditionOrReplacementFromString(selectedNode,"+5 奉献")
			end
		end
		self.build.buildFlag = true
		main:ClosePopup()
	end)
	controls.close = new("ButtonControl", nil, 90, 75, 80, 20, "取消", function()
		main:ClosePopup()
	end)
	main:OpenPopup(800, 105, "替换天赋点词缀", controls, "save")
	constructUI(modGroups[1])
end
