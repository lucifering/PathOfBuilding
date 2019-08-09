-- Path of Building
--
-- Class: Passive Spec
-- Passive tree spec class.
-- Manages node allocation and pathing for a given passive spec
--
--local launch, main = ...

local pairs = pairs
local ipairs = ipairs
local t_insert = table.insert
local m_min = math.min
local m_max = math.max
local m_floor = math.floor

local nodeMigrate32_33 = {
	[17788] = 38129,
	[38807] = 63639,
	[5607] = 62069,
	[61547] = 31583,
	[29619] = 1600,
}
local _build=nil


local PassiveSpecClass = newClass("PassiveSpec", "UndoHandler", function(self, build, treeVersion)
	self.UndoHandler()
	_build=build;
	self.build = build
	self.treeVersion = treeVersion
	self.tree = main.tree[treeVersion]

	-- Make a local copy of the passive tree that we can modify
	self.nodes = { }
	for _, treeNode in pairs(self.tree.nodes) do
		self.nodes[treeNode.id] = setmetatable({ 
			linked = { },
			power = { }
		}, treeNode.meta)
	end
	for id, node in pairs(self.nodes) do
		for _, otherId in ipairs(node.linkedId) do
			t_insert(node.linked, self.nodes[otherId])
		end
	end

	-- List of currently allocated nodes
	-- Keys are node IDs, values are nodes
	self.allocNodes = { }

	-- Table of jewels equipped in this tree
	-- Keys are node IDs, values are items
	self.jewels = { }

	self:SelectClass(0)
end)

function PassiveSpecClass:Load(xml, dbFileName)
	local url
	self.title = xml.attrib.title
	for _, node in pairs(xml) do
		if type(node) == "table" then
			if node.elem == "URL" then
				if type(node[1]) ~= "string" then
					launch:ShowErrMsg("^1Error parsing '%s': 'URL' element missing content", dbFileName)
					return true
				end
				url = node[1]
			elseif node.elem == "Sockets" then
				for _, child in ipairs(node) do
					if child.elem == "Socket" then
						if not child.attrib.nodeId then
							launch:ShowErrMsg("^1Error parsing '%s': 'Socket' element missing 'nodeId' attribute", dbFileName)
							return true
						end
						if not child.attrib.itemId then
							launch:ShowErrMsg("^1Error parsing '%s': 'Socket' element missing 'itemId' attribute", dbFileName)
							return true
						end
						self.jewels[tonumber(child.attrib.nodeId)] = tonumber(child.attrib.itemId)
					end
				end
			end
		end
	end
	if url then
		self:DecodeURL(url)
	end
	self:ResetUndo()
	

				

 
end

function PassiveSpecClass:Save(xml)
	xml.attrib = { 
		title = self.title,
		treeVersion = self.treeVersion,
	}
	t_insert(xml, {
		elem = "URL", 
[1] = self:EncodeURL("https://poe.game.qq.com/passive-skill-tree/")
	})
	local sockets = {
		elem = "Sockets"
	}
	for nodeId, itemId in pairs(self.jewels) do
		t_insert(sockets, { elem = "Socket", attrib = { nodeId = tostring(nodeId), itemId = tostring(itemId) } })
	end
	t_insert(xml, sockets)
	self.modFlag = false
end

function PassiveSpecClass:MigrateNodeId(nodeId)
	if self.build.targetVersion == "3_0" then
		-- Migration for 3.2 -> 3.3
		return nodeMigrate32_33[nodeId] or nodeId
	end
	return nodeId
end

-- Import passive spec from the provided class IDs and node hash list
function PassiveSpecClass:ImportFromNodeList(classId, ascendClassId, hashList)
	self:ResetNodes()	
	self:SelectClass(classId)
	for _, id in pairs(hashList) do
		id = self:MigrateNodeId(id)
		local node = self.nodes[id]
		if node then
			node.alloc = true
			self.allocNodes[id] = node
		end
	end
	self:SelectAscendClass(ascendClassId)
	
	self:resetAllocTimeJew();
end

-- Decode the given passive tree URL
-- Supports both the official skill tree links as well as PoE Planner links
function PassiveSpecClass:DecodeURL(url)
	local b = common.base64.decode(url:gsub("^.+/",""):gsub("-","+"):gsub("_","/"))
	if not b or #b < 6 then
		return "Invalid tree link (unrecognised format)"
	end
	local classId, ascendClassId, bandits, nodes
	if b:byte(1) == 0 and b:byte(2) == 2 then
		-- Hold on to your headgear, it looks like a PoE Planner link
		-- Let's grab a scalpel and start peeling back the 50 layers of base 64 encoding
		local treeLinkLen = b:byte(4) * 256 + b:byte(5)
		local treeLink = b:sub(6, 6 + treeLinkLen - 1)
		b = common.base64.decode(treeLink:gsub("^.+/",""):gsub("-","+"):gsub("_","/"))
		classId = b:byte(3)
		ascendClassId = b:byte(4)
		bandits = b:byte(5)
		nodes = b:sub(8, -1)
	elseif b:byte(1) == 0 and b:byte(2) == 4 then
		-- PoE Planner version 4
		-- Now with 50% fewer layers of base 64 encoding
		classId = b:byte(6) % 16
		ascendClassId = m_floor(b:byte(6) / 16)
		bandits = b:byte(7)
		local numNodes = b:byte(8) * 256 + b:byte(9)
		nodes = b:sub(10, 10 + numNodes * 2 - 1)
	else
		local ver = b:byte(1) * 16777216 + b:byte(2) * 65536 + b:byte(3) * 256 + b:byte(4)
		if ver > 4 then
			return "Invalid tree link (unknown version number '"..ver.."')"
		end
		classId = b:byte(5)	
		ascendClassId = 0--(ver >= 4) and b:byte(6) or 0   -- This value would be reliable if the developer of a certain online skill tree planner *cough* PoE Planner *cough* hadn't bollocked up
														   -- the generation of the official tree URL. The user would most likely import the PoE Planner URL instead but that can't be relied upon.
		nodes = b:sub(ver >= 4 and 8 or 7, -1)
	end	
	if not self.tree.classes[classId] then
		return "Invalid tree link (bad class ID '"..classId.."')"
	end
	self:ResetNodes()
	self:SelectClass(classId)
	for i = 1, #nodes - 1, 2 do
		local id = self:MigrateNodeId(nodes:byte(i) * 256 + nodes:byte(i + 1))
		local node = self.nodes[id]
		if node then
			node.alloc = true
			self.allocNodes[id] = node
			if ascendClassId == 0 and node.ascendancyName then
				-- Just guess the ascendancy class based on the allocated nodes
				ascendClassId = self.tree.ascendNameMap[node.ascendancyName].ascendClassId
			end
		end
	end
	self:SelectAscendClass(ascendClassId)
	if bandits then
		-- Decode bandits from PoEPlanner
		local lookup = { [0] = "None", "Alira", "Kraityn", "Oak" }
		self.build.banditNormal = lookup[bandits % 4]
		self.build.banditCruel = lookup[m_floor(bandits / 4) % 4]
		self.build.banditMerciless = lookup[m_floor(bandits / 16) % 4]
	end
	self:resetAllocTimeJew();
	
	
end

-- Encodes the current spec into a URL, using the official skill tree's format
-- Prepends the URL with an optional prefix
function PassiveSpecClass:EncodeURL(prefix)
	local a = { 0, 0, 0, 4, self.curClassId, self.curAscendClassId, 0 }
	for id, node in pairs(self.allocNodes) do
		if node.type ~= "ClassStart" and node.type ~= "AscendClassStart" then
			t_insert(a, m_floor(id / 256))
			t_insert(a, id % 256)
		end
	end

	return (prefix or "")..common.base64.encode(string.char(unpack(a))):gsub("+","-"):gsub("/","_")
end

-- Change the current class, preserving currently allocated nodes if they connect to the new class's starting node
function PassiveSpecClass:SelectClass(classId)
	if self.curClassId then
		-- Deallocate the current class's starting node
		local oldStartNodeId = self.curClass.startNodeId
		self.nodes[oldStartNodeId].alloc = false
		self.allocNodes[oldStartNodeId] = nil
	end

	self.curClassId = classId
	local class = self.tree.classes[classId]
	self.curClass = class 
	self.curClassName = class.name

	-- Allocate the new class's starting node
	local startNode = self.nodes[class.startNodeId]
	startNode.alloc = true
	self.allocNodes[startNode.id] = startNode

	-- Reset the ascendancy class
	-- This will also rebuild the node paths and dependancies
	self:SelectAscendClass(0)
end

function PassiveSpecClass:SelectAscendClass(ascendClassId)
	self.curAscendClassId = ascendClassId
	local ascendClass = self.curClass.classes[ascendClassId] or self.curClass.classes[0]
	self.curAscendClass = ascendClass
	self.curAscendClassName = ascendClass.name

	-- Deallocate any allocated ascendancy nodes that don't belong to the new ascendancy class
	for id, node in pairs(self.allocNodes) do
		if node.ascendancyName and node.ascendancyName ~= ascendClass.name then
			node.alloc = false
			self.allocNodes[id] = nil
		end
	end

	if ascendClass.startNodeId then
		-- Allocate the new ascendancy class's start node
		local startNode = self.nodes[ascendClass.startNodeId]
		startNode.alloc = true
		self.allocNodes[startNode.id] = startNode
	end

	-- Rebuild all the node paths and dependancies
	self:BuildAllDependsAndPaths()
end

-- Determines if the given class's start node is connected to the current class's start node
-- Attempts to find a path between the nodes which doesn't pass through any ascendancy nodes (i.e Ascendant)
function PassiveSpecClass:IsClassConnected(classId)
	for _, other in ipairs(self.nodes[self.tree.classes[classId].startNodeId].linked) do
		-- For each of the nodes to which the given class's start node connects...
		if other.alloc then
			-- If the node is allocated, try to find a path back to the current class's starting node
			other.visited = true
			local visited = { }
			local found = self:FindStartFromNode(other, visited, true)
			for i, n in ipairs(visited) do
				n.visited = false
			end
			other.visited = false
			if found then
				-- Found a path, so the given class's start node is definately connected to the current class's start node
				-- There might still be nodes which are connected to the current tree by an entirely different path though
				-- E.g via Ascendant or by connecting to another "first passive node"
				return true
			end
		end
	end
	return false
end

-- Clear the allocated status of all non-class-start nodes
--重置天赋节点
function PassiveSpecClass:ResetNodes()
	
	for id, node in pairs(self.nodes) do
		if node.type ~= "ClassStart" and node.type ~= "AscendClassStart" then
			node.alloc = false
			self.allocNodes[id] = nil
		end
	end
end

function PassiveSpecClass:getAllocNodes()
	
	return self.allocNodes;
end 

-- Allocate the given node, if possible, and all nodes along the path to the node
-- An alternate path to the node may be provided, otherwise the default path will be used
-- The path must always contain the given node, as will be the case for the default path
function PassiveSpecClass:AllocNode(node, altPath)
	if not node.path then
		-- Node cannot be connected to the tree as there is no possible path
		return
	end

	-- Allocate all nodes along the path
	if node.dependsOnIntuitiveLeap then
		node.alloc = true
		self.allocNodes[node.id] = node
	else
		for _, pathNode in ipairs(altPath or node.path) do
			pathNode.alloc = true
			self.allocNodes[pathNode.id] = pathNode
		end
	end

	if node.isMultipleChoiceOption then
		-- For multiple choice passives, make sure no other choices are allocated
		local parent = node.linked[1]
		for _, optNode in ipairs(parent.linked) do
			if optNode.isMultipleChoiceOption and optNode.alloc and optNode ~= node then
				optNode.alloc = false
				self.allocNodes[optNode.id] = nil
			end
		end
	end

	-- Rebuild all dependancies and paths for all allocated nodes
	self:BuildAllDependsAndPaths()
end

-- Deallocate the given node, and all nodes which depend on it (i.e which are only connected to the tree through this node)
function PassiveSpecClass:DeallocNode(node)
	for _, depNode in ipairs(node.depends) do
		depNode.alloc = false
		self.allocNodes[depNode.id] = nil
	end

	-- Rebuild all paths and dependancies for all allocated nodes
	self:BuildAllDependsAndPaths()
end

-- Count the number of allocated nodes and allocated ascendancy nodes
function PassiveSpecClass:CountAllocNodes()
	local used, ascUsed, sockets = 0, 0, 0
	for _, node in pairs(self.allocNodes) do
		if node.type ~= "ClassStart" and node.type ~= "AscendClassStart" then
			if node.ascendancyName then
				if not node.isMultipleChoiceOption then
					ascUsed = ascUsed + 1
				end
			else
				used = used + 1
			end
			if node.type == "Socket" then
				sockets = sockets + 1
			end
		end
	end
	return used, ascUsed, sockets
end

-- Attempt to find a class start node starting from the given node
-- Unless noAscent == true it will also look for an ascendancy class start node 
function PassiveSpecClass:FindStartFromNode(node, visited, noAscend)
	-- Mark the current node as visited so we don't go around in circles
	node.visited = true
	t_insert(visited, node)

	-- For each node which is connected to this one, check if...
	for _, other in ipairs(node.linked) do
		-- Either:
		--  - the other node is a start node, or
		--  - there is a path to a start node through the other node which didn't pass through any nodes which have already been visited
		local startIndex = #visited + 1
		if other.alloc and 
		  (other.type == "ClassStart" or other.type == "AscendClassStart" or 
		    (not other.visited and self:FindStartFromNode(other, visited, noAscend))
		  ) then
			if node.ascendancyName and not other.ascendancyName then
				-- Pathing out of Ascendant, un-visit the outside nodes
				for i = startIndex, #visited do
					visited[i].visited = false
					visited[i] = nil
				end
			elseif not noAscend or other.type ~= "AscendClassStart" then
				return true
			end
		end
	end
end

-- Perform a breadth-first search of the tree, starting from this node, and determine if it is the closest node to any other nodes
function PassiveSpecClass:BuildPathFromNode(root)
	root.pathDist = 0
	root.path = { }
	local queue = { root }
	local o, i = 1, 2 -- Out, in
	while o < i do
		-- Nodes are processed in a queue, until there are no nodes left
		-- All nodes that are 1 node away from the root will be processed first, then all nodes that are 2 nodes away, etc
		local node = queue[o]
		o = o + 1
		local curDist = node.pathDist + 1
		-- Iterate through all nodes that are connected to this one
		for _, other in ipairs(node.linked) do
			-- Paths must obey two rules:
			-- 1. They must not pass through class or ascendancy class start nodes (but they can start from such nodes)
			-- 2. They cannot pass between different ascendancy classes or between an ascendancy class and the main tree
			--    The one exception to that rule is that a path may start from an ascendancy node and pass into the main tree
			--    This permits pathing from the Ascendant 'Path of the X' nodes into the respective class start areas
			if other.type ~= "ClassStart" and other.type ~= "AscendClassStart" and other.pathDist > curDist and (node.ascendancyName == other.ascendancyName or (curDist == 1 and not other.ascendancyName)) then
				-- The shortest path to the other node is through the current node
				other.pathDist = curDist
				other.path = wipeTable(other.path)
				other.path[1] = other
				for i, n in ipairs(node.path) do
					other.path[i+1] = n
				end
				-- Add the other node to the end of the queue
				queue[i] = other
				i = i + 1
			end
		end
	end
	
end

-- Rebuilds dependancies and paths for all nodes
function PassiveSpecClass:BuildAllDependsAndPaths()
	-- This table will keep track of which nodes have been visited during each path-finding attempt
	local visited = { }

	-- Check all nodes for other nodes which depend on them (i.e are only connected to the tree through that node)
	for id, node in pairs(self.nodes) do
		node.depends = wipeTable(node.depends)
		node.dependsOnIntuitiveLeap = false
		if node.type ~= "ClassStart" then
			for nodeId, itemId in pairs(self.jewels) do
				if self.allocNodes[nodeId] and self.nodes[nodeId].nodesInRadius[1][node.id] then
					if itemId ~= 0 and self.build.itemsTab.items[itemId] and self.build.itemsTab.items[itemId].jewelData and self.build.itemsTab.items[itemId].jewelData.intuitiveLeap then
						-- This node depends on Intuitive Leap
						-- This flag:
						-- 1. Prevents generation of paths from this node
						-- 2. Prevents this node from being deallocted via dependancy
						-- 3. Prevents allocation of path nodes when this node is being allocated
						node.dependsOnIntuitiveLeap = true
						break
					end
				end
			end
		end
		if node.alloc then
			node.depends[1] = node -- All nodes depend on themselves
		end
	end
	for id, node in pairs(self.allocNodes) do
		node.visited = true

		local anyStartFound = (node.type == "ClassStart" or node.type == "AscendClassStart")
		for _, other in ipairs(node.linked) do
			if other.alloc and not isValueInArray(node.depends, other) then
				-- The other node is allocated and isn't already dependant on this node, so try and find a path to a start node through it
				if other.type == "ClassStart" or other.type == "AscendClassStart" then
					-- Well that was easy!
					anyStartFound = true
				elseif self:FindStartFromNode(other, visited) then
					-- We found a path through the other node, therefore the other node cannot be dependant on this node
					anyStartFound = true
					for i, n in ipairs(visited) do
						n.visited = false
						visited[i] = nil
					end
				else
					-- No path was found, so all the nodes visited while trying to find the path must be dependant on this node
					for i, n in ipairs(visited) do
						if not n.dependsOnIntuitiveLeap then
							t_insert(node.depends, n)
						end
						n.visited = false
						visited[i] = nil
					end
				end
			end
		end
		node.visited = false
		if not anyStartFound then
			-- No start nodes were found through ANY nodes
			-- Therefore this node and all nodes depending on it are orphans and should be pruned
			for _, depNode in ipairs(node.depends) do
				local prune = true
				for nodeId, itemId in pairs(self.jewels) do
					if self.allocNodes[nodeId] and self.nodes[nodeId].nodesInRadius[1][depNode.id] then
						if itemId ~= 0 and (not self.build.itemsTab.items[itemId] or (self.build.itemsTab.items[itemId].jewelData and self.build.itemsTab.items[itemId].jewelData.intuitiveLeap)) then
							-- Hold off on the pruning; this node is within the radius of a jewel that is or could be Intuitive Leap
							prune = false
							t_insert(self.nodes[nodeId].depends, depNode)
							break
						end
					end
				end
				if prune then
					depNode.alloc = false
					self.allocNodes[depNode.id] = nil
				end
			end
		end
	end

	-- Reset and rebuild all node paths
	for id, node in pairs(self.nodes) do
		node.pathDist = (node.alloc and not node.dependsOnIntuitiveLeap) and 0 or 1000
		node.path = nil
	end
	for id, node in pairs(self.allocNodes) do
		if not node.dependsOnIntuitiveLeap then
			self:BuildPathFromNode(node)
		end
	end
	
		
end

function PassiveSpecClass:CreateUndoState()
	return self:EncodeURL()
end

function PassiveSpecClass:RestoreUndoState(state)
	self:DecodeURL(state)
end
 
function table.shallow_copy(t)

	if t==nil then
		return nil;
	end 
  local t2 = {}
  for k,v in pairs(t) do
    t2[k] = v
  end
  return t2
end

function PassiveSpecClass:hasDiyMod(theModList)

if  theModList then
	for i = 1, #theModList do
		local  themod=theModList[i]
		if themod and  themod.isDIY and themod.isDIY==1 then 		
			return true
		end 
		 
	end
end 
return false

end

function PassiveSpecClass:hasDiyModItem(theModItem)
if  theModItem then 		 
		if   theModItem.isDIY and theModItem.isDIY==1 then 		 
			return true
		end 
end 
return false
end


function PassiveSpecClass:resetAll()
 
self:resetAllocTimeJew()

end
function PassiveSpecClass:resetAllocTimeJew()

 
local build=_build
if not build or  not build.spec or  not build.spec.nodes  then 
	return
end 

  				
	for nodeId, specNode in pairs(build.spec.nodes) do
		if specNode.dn_bak then 
			specNode.dn=specNode.dn_bak;
		end 
		if specNode.reminderText_bak then 
			specNode.reminderText=table.shallow_copy(specNode.reminderText_bak);
		elseif specNode.reminderText then 
			specNode.reminderText=nil;
		end 
		if specNode and specNode.type == "Keystone" then
			if self:hasDiyModItem(specNode.keystoneMod) then 
				
			
			specNode.dn=specNode.dn_bak;
			specNode.sd=table.shallow_copy(specNode.sd_bak);
			specNode.reminderText=table.shallow_copy(specNode.reminderText_bak);
			specNode.isTimeless=0;	
			  
			specNode.keystoneMod=specNode.keystoneMod_bak;
			 
			for i = 1, #specNode.mods do
				specNode.mods[i]=nil
			end
			specNode.mods=table.shallow_copy(specNode.mods_bak);
			
			for i = 1, #specNode.mods_bak do
				specNode.mods[i]=table.shallow_copy(specNode.mods_bak[i]									)
			end
			specNode.mods_bak=nil
		--	specNode.modList_bak=nil
			specNode.sd_bak=nil;
			specNode.dn_bak=nil;
			specNode.reminderText_bak=nil;
				 		
			end 
		elseif specNode then
			if self:hasDiyMod(specNode.modList)   then 
				
			 
			specNode.dn=specNode.dn_bak; 
			if specNode.sd_bak then 
				 
				specNode.sd=table.shallow_copy(specNode.sd_bak);
				for i = 1, #specNode.sd_bak do
					specNode.sd[i]=specNode.sd_bak[i]
				end
			end 
			
			specNode.reminderText=table.shallow_copy(specNode.reminderText_bak);
			specNode.isTimeless=0;	
			for i = 1, #specNode.modList do
				specNode.modList[i]=nil
			end
			
			
			--specNode.modList=table.shallow_copy(specNode.modList_bak);
			--specNode.modList.ModStore=table.shallow_copy(specNode.modList.ModStore_bak);		 
			--specNode.modList.Object =table.shallow_copy(specNode.modList.Object_bak);	
			if specNode.modList_bak~=nil then 
				for i = 1, #specNode.modList_bak do
					specNode.modList[i]=table.shallow_copy(specNode.modList_bak[i])		
					specNode.modList[i].isDIY=nil
					
				end 
			end 
			if specNode.mods ~= nil then 
				for i = 1, #specNode.mods do
					specNode.mods[i]=nil
				end
			end 
			
			if specNode.mods_bak ~=nil then
				specNode.mods=table.shallow_copy(specNode.mods_bak);
				for i = 1, #specNode.mods_bak do
					specNode.mods[i]=table.shallow_copy(specNode.mods_bak[i]									)
					
					specNode.mods[i].isDIY=nil
				end
			end 
			--specNode.mods_bak=nil
		--	specNode.modList_bak=nil
			--specNode.sd_bak=nil;
			--specNode.dn_bak=nil;
			specNode.reminderText_bak=nil;
				 	
			end 
		end --end of type
		
	end --end of for
	
	self:allocTimeJew();
end
local TimelessJewelList={"残酷的约束",
"优雅的狂妄",
"光彩夺目",
"致命的骄傲",
"好战的信仰"}

function PassiveSpecClass:allocTimeJew()
	 local build=_build
	if not build or  not build.spec or  not build.spec.nodes then 
		return
	end 
	
	for nodeId, node in pairs(build.spec.allocNodes) do
		if  node.type == "Socket"  then 
			local socket, jewel = build.itemsTab:GetSocketAndJewelForNodeID(nodeId)
			if  jewel and  jewel.name and jewel.baseModList then
					 
				
					if node.nodesInRadius and node.nodesInRadius[3] then 
					
					local jewName="";
					local npcName="";
					for i = 1, #jewel.baseModList do
						 for _, timelessJewelname in pairs(TimelessJewelList) do 
							 if jewel.baseModList[i].name==timelessJewelname then
								jewName=jewel.baseModList[i].name;
							 end 
						 end				
						
						 if string.find(jewel.baseModList[i].name, 'TimelessJewelNPC')  then
							npcName=string.sub(jewel.baseModList[i].name,17);
						 end 
						 --TimelessJewelNPC
						 
					end
					--print(">>>>>>>>>>>jewName="..jewName);
					--print(">>>>>>>>>>>npcName="..npcName);
					if  string.find(jewName, '残酷的约束') then  
					
						 for effectNodeId in pairs(node.nodesInRadius[3]) do
							local specNode = build.spec.nodes[effectNodeId];
							if specNode and specNode.type == "Normal" then
							-- 
								if not self:hasDiyMod(specNode.modList) then 
									specNode.sd_bak=table.shallow_copy(specNode.sd);
									specNode.dn_bak=specNode.dn;
									specNode.reminderText_bak=specNode.reminderText;
									 specNode.modList_bak={};
									 
									local addNum=2;
									
									if specNode.dn=='智慧' or specNode.dn=='敏捷' or specNode.dn=='力量' then		 
									 
										addNum=2;
									else									 
										 
										addNum=4;
									end	 
									specNode.dn="马拉克斯";
									specNode.reminderText={"范围中的天赋被马拉克斯抑制","(该天赋会多一条【+"..addNum.." 敏捷】词缀，未支持)"};								 
								end 							
							elseif specNode and specNode.type == "Notable" then
								if not self:hasDiyMod(specNode.modList) then 
									specNode.sd_bak=table.shallow_copy(specNode.sd);
									specNode.dn_bak=specNode.dn;
									specNode.reminderText_bak=specNode.reminderText;
									 specNode.modList_bak={};
									specNode.dn="马拉克斯";
									specNode.reminderText={"范围中的天赋被马拉克斯抑制","(该天赋会额外多一条随机词缀，未支持)"};
								end 
							elseif specNode and specNode.type == "Keystone" then
								if npcName =='迪虚瑞特' then 
									if not self:hasDiyModItem(specNode.keystoneMod) then 
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										specNode.modList_bak={};
										  
										specNode.mods_bak=table.shallow_copy(specNode.mods);
										
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end								
										
										specNode.dn="风舞者";
										specNode.sd={"近期内如果没有被击中，则承受的伤害降低 20%","近期内如果没有被击中，则闪避值降低 40%","如果近期内被击中，则闪避值提高 20%"};
										specNode.reminderText={"( 近期内意指 4 秒内 )"};
										specNode.isTimeless=1;									 
										newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
										newmod1.isDIY=1;	
										specNode.keystoneMod=newmod1;			
										specNode.hide=nil;						
										
										list1={}
										list2={}
										list3={}
										newmodList1={}
										newmodList2={}	
										newmodList3={}												
										t_insert( list1,modLib.createMod("DamageTaken", "INC", -20,"Tree"..specNode.id, { type = "Condition", var = "BeenHitRecently" , neg = true}))
										t_insert( list2,modLib.createMod("Evasion", "INC", -40,"Tree"..specNode.id, { type = "Condition", var = "BeenHitRecently" , neg = true}))
										t_insert( list3,modLib.createMod("Evasion", "INC", 20,"Tree"..specNode.id, { type = "Condition", var = "BeenHitRecently" }))
										newmodList1["list"] =  list1
										newmodList2["list"] =  list2
										newmodList3["list"] =  list3
										specNode.mods={newmodList1,newmodList2,newmodList3}
									end 
								elseif npcName =='安赛娜丝' then 
									if not self:hasDiyModItem(specNode.keystoneMod) then 
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										specNode.modList_bak={};
										  
										specNode.mods_bak=table.shallow_copy(specNode.mods);
										
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end								
										
										specNode.dn="与亡共舞";
										specNode.sd={"无法使用头部装备","暴击率特别幸运","暴击伤害特别幸运","敌人对你造成的暴击伤害特别幸运"};
										specNode.reminderText={"(重复判断2次数值, 取其中好的结果生效）"};
										specNode.isTimeless=1;									 
										newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
										newmod1.isDIY=1;	
										specNode.keystoneMod=newmod1;			
										specNode.hide=nil;						
										
										list1={}
										 
										newmodList1={}
										newmodList2={}	
										newmodList3={}
										newmodList4={}											
										t_insert( list1,modLib.createMod("CritChanceLucky", "FLAG", true,"Tree"..specNode.id))										 
										newmodList1["list"] =  nil
										newmodList2["list"] =  list1
										newmodList3["list"] =  nil
										newmodList4["list"] =  nil
										specNode.mods={newmodList1,newmodList2,newmodList3,newmodList4}
									end 
								
								elseif npcName =='纳西玛' or npcName =='娜斯玛' then 
									if not self:hasDiyModItem(specNode.keystoneMod) then 
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										specNode.modList_bak={};
										  
										specNode.mods_bak=table.shallow_copy(specNode.mods);
										
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end								
										
										specNode.dn="先见之明";
										specNode.sd={"你瞎了","目盲不影响你的照亮范围","目盲时总近战暴击率额外提高 25%"};
										specNode.reminderText={"( 你被致盲 )","( 被致盲时命中率减半 )"};
										specNode.isTimeless=1;									 
										newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
										newmod1.isDIY=1;	
										specNode.keystoneMod=newmod1;			
										specNode.hide=nil;	
										list1={}
										list2={}
										list3={}
										newmodList1={}
										newmodList2={}	
										newmodList3={}									 								
										t_insert(list1,modLib.createMod("Condition:Blinded", "FLAG", true,"Tree"..specNode.id))
										t_insert( list2, nil)
										t_insert( list3,modLib.createMod("CritChance", "MORE", 25,"Tree"..specNode.id, ModFlag.Melee,{ type = "Condition", var = "Blinded" }))
										newmodList1["list"] =  list1
										newmodList2["list"] =  list2
										newmodList3["list"] =  list3
										specNode.mods={newmodList1,newmodList2,newmodList3,newmodList4}
									end 
								end
							end --end of specNode.type == "Normal"
							
						 end
					elseif string.find(jewName, '好战的信仰') then 
						 for effectNodeId in pairs(node.nodesInRadius[3]) do
							local specNode = build.spec.nodes[effectNodeId];
							if specNode and specNode.type == "Normal" then
							-- diy词缀：奉献
								if not self:hasDiyMod(specNode.modList) then 
									
									specNode.sd_bak=table.shallow_copy(specNode.sd);
									specNode.dn_bak=specNode.dn;
									specNode.reminderText_bak=specNode.reminderText;
									 specNode.modList_bak={};
									specNode.modList.Object_bak=table.shallow_copy(specNode.modList.Object);
									specNode.modList.ModStore_bak=table.shallow_copy(specNode.modList.ModStore);
									for i = 1, #specNode.modList do
										specNode.modList_bak[i]=table.shallow_copy(specNode.modList[i]									)
									end
									
									specNode.mods_bak=table.shallow_copy(specNode.mods);
									
									for i = 1, #specNode.mods do
										 
										specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
																		 
									end	

									local addNum=5;
									
									if specNode.dn=='智慧' or specNode.dn=='敏捷' or specNode.dn=='力量' then		 
									 
										addNum=10;
									else									 
										 
										addNum=5;
									end	
									
									
									specNode.dn="奉献";
									specNode.sd={"+"..addNum.." 奉献"};
									specNode.reminderText={"(范围内的天赋被圣堂抑制)"};
									specNode.isTimeless=1;
									specNode.modList = new("ModList")
									newmod = modLib.createMod("Devotion", "BASE", addNum,"Tree:"..specNode.id);
									newmod.isDIY=1;
									specNode.modList[#specNode.modList+1]=newmod;								
									
									list={}
									newmodList={}
									--list.isTimeless=1
									t_insert( list,newmod)
									newmodList["list"] =  list
									specNode.mods={newmodList}
									
									
								end 
								
							elseif specNode and specNode.type == "Notable" then
								if not self:hasDiyMod(specNode.modList) then 
									specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										 specNode.modList_bak={};
										specNode.modList.Object_bak=table.shallow_copy(specNode.modList.Object);
										specNode.modList.ModStore_bak=table.shallow_copy(specNode.modList.ModStore);
										for i = 1, #specNode.modList do
											specNode.modList_bak[i]=table.shallow_copy(specNode.modList[i]									)
										end									
										specNode.mods_bak=table.shallow_copy(specNode.mods);								
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end
										 
										specNode.sd={};
										specNode.reminderText={"范围内的天赋被圣堂抑制","(总奉献值达到150的时候，该天赋有可能会被替换成一条随机词缀或新增一条 +5 奉献，未支持)","(总奉献值小于150的时候，该天赋新增一条 +5 奉献，未支持)"};
										specNode.isTimeless=1;
										specNode.modList = new("ModList")
										newmod = modLib.createMod("好战的信仰", "BASE", 0);
										newmod.isDIY=1;
										specNode.modList[#specNode.modList+1]=newmod;
										list={}
										newmodList={}
									--	list.isTimeless=1
										t_insert( list,newmod)
										newmodList["list"] =  list
										specNode.mods={newmodList}
										 
								end
							elseif specNode and specNode.type == "Keystone" then
								--重点核心
								
								if npcName =='神主' then 
									if not self:hasDiyModItem(specNode.keystoneMod) then 
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										specNode.modList_bak={};
										  
										specNode.mods_bak=table.shallow_copy(specNode.mods);
										
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end								
										
										specNode.dn="内在信念";
										specNode.sd={"每个暴击球使法术总伤害额外提高 3%","获得暴击球来替代狂怒球"};
										specNode.reminderText={"（每个暴击球使法术总伤害额外提高 3%。获得暴击球来替代狂怒球）"};
										specNode.isTimeless=1;									 
										newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
										newmod1.isDIY=1;	
										specNode.keystoneMod=newmod1;			
										specNode.hide=nil;						
										
										list1={}
										list2={}
										newmodList1={}
										newmodList2={}										 
										t_insert( list1,modLib.createMod("Damage", "MORE", 3,"Tree"..specNode.id, ModFlag.Spell,{ type = "Multiplier", var = "PowerCharge" }))										 
										newmodList1["list"] =  list1
										newmodList2["list"] =  nil
										specNode.mods={newmodList1,newmodList2}
									end 
								elseif npcName =='威纳留斯' or npcName =='维纳留斯'  then 
									if not self:hasDiyModItem(specNode.keystoneMod) then 
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										specNode.modList_bak={};
										  
										specNode.mods_bak=table.shallow_copy(specNode.mods);
										
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end								
										
										specNode.dn="惘信者";
										specNode.sd={"最大能量护盾为 0","非满血状态时，每秒献祭 20% 魔力来回复同等数值的生命"};
										specNode.reminderText=nil;
										specNode.isTimeless=1;									 
										newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
										newmod1.isDIY=1;	
										specNode.keystoneMod=newmod1;			
										specNode.hide=nil;						
										
										list1={}
										list2={}
										newmodList1={}
										newmodList2={}										 
										t_insert( list1,modLib.createMod("EnergyShield", "OVERRIDE", 0, "Tree"..specNode.id))										 
										newmodList1["list"] =  list1
										newmodList2["list"] =  nil
										specNode.mods={newmodList1,newmodList2}
									end 
									
								elseif npcName =='阿瓦留斯' then 
									
									if not self:hasDiyModItem(specNode.keystoneMod) then 
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										specNode.modList_bak={};
										  
										specNode.mods_bak=table.shallow_copy(specNode.mods);
										
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end								
										
										specNode.dn="决心之力";
										specNode.sd={"最大魔力的 80% 转化为双倍的护甲"};
										specNode.reminderText=nil;
										specNode.isTimeless=1;									 
										newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
										newmod1.isDIY=1;	
										specNode.keystoneMod=newmod1;			
										specNode.hide=nil;						
										
										list1={}										
										newmodList1={}																	 
										t_insert( list1,modLib.createMod("ManaConvertToDoubleArmour", "BASE", 80, "Tree"..specNode.id))										 
										newmodList1["list"] =  list1										 
										specNode.mods={newmodList1}
									end 
								
								end 
							
								
								
							
							end --end of specNode.type == "Normal"
							
						 end--end of  for
					
					
					elseif string.find(jewName, '致命的骄傲') then 
					
						for effectNodeId in pairs(node.nodesInRadius[3]) do
								local specNode = build.spec.nodes[effectNodeId];
								if specNode and specNode.type == "Normal" then
								-- diy词缀：力量
									if not self:hasDiyMod(specNode.modList) then 
										
									 specNode.sd_bak=table.shallow_copy(specNode.sd);
									specNode.dn_bak=specNode.dn;
									specNode.reminderText_bak=specNode.reminderText;
									 specNode.modList_bak={};
									 
									local addNum=2;
									
									 if specNode.dn=='智慧' or specNode.dn=='敏捷' or specNode.dn=='力量' then		 
									 
										addNum=2;
									else									 
										 
										addNum=4;
									end									
									specNode.dn="卡鲁";	
									specNode.reminderText={"范围内的天赋被卡鲁抑制","(该天赋会多一条【+"..addNum.." 力量】词缀，未支持)"};
									 
									end 
								elseif specNode and specNode.type == "Notable" then
								if not self:hasDiyMod(specNode.modList) then 
									specNode.sd_bak=table.shallow_copy(specNode.sd);
									specNode.dn_bak=specNode.dn;
									specNode.reminderText_bak=specNode.reminderText;
									 specNode.modList_bak={};
									specNode.dn="卡鲁";
									specNode.reminderText={"范围内的天赋被卡鲁抑制","(该天赋会额外多一条随机词缀，未支持)"};
								end
								
								elseif specNode and specNode.type == "Keystone" then
									--重点核心
									
									if npcName =='冈姆' then 
											if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="鲜血之力";
												specNode.sd={"无法使用生命偷取的恢复效果","生命偷取的每秒恢复效果每 2% 使受到的总伤害额外降低 1%"};
												specNode.reminderText=nil;
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												newmodList1={}
												newmodList2={}										 
												t_insert( list1,modLib.createMod("LifeLeechRate", "MORE", -100, "Tree"..specNode.id));
												
												t_insert( list2,modLib.createMod("DamageTaken", "MORE", -1, "Tree"..specNode.id,{ type = "PerStat", stat = "MaxLifeLeechRatePercentage", div = 2 },{ type = "Condition", var = "LeechingLife" } ));									 
												newmodList1["list"] =  list1
												newmodList2["list"] =  list2
												specNode.mods={newmodList1,newmodList2}
											end 	
									elseif npcName =='拉其塔' or npcName =='拉凯尔塔' then 
										 if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="战争锤炼";
												specNode.sd={"受到的冰霜和闪电伤害有 50% 视为火焰伤害","总冰霜抗性额外降低 50%","总闪电抗性额外降低 50%"};
												specNode.reminderText=nil;
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												list3={}
												newmodList1={}
												newmodList2={}	
												newmodList3={}												
												t_insert( list1,modLib.createMod("ColdDamageTakenAsFire", "BASE", 50, "Tree"..specNode.id))
												t_insert( list1,modLib.createMod("LightningDamageTakenAsFire", "BASE", 50, "Tree"..specNode.id))					 
												t_insert( list2,modLib.createMod("ColdResist", "MORE", -50, "Tree"..specNode.id))	
												t_insert( list3,modLib.createMod("LightningResist", "MORE", -50, "Tree"..specNode.id))													
												newmodList1["list"] =  list1
												newmodList2["list"] =  list2
												newmodList3["list"] =  list3
												specNode.mods={newmodList1,newmodList2,newmodList3}
											end 	
										
									elseif npcName =='基洛瓦'  or  npcName =='克洛瓦' then 
										if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="斗转星移";
												specNode.sd={"攻击格挡率翻倍","法术格挡率翻倍","被格挡的击中对你造成 50% 伤害"};
												specNode.reminderText=nil;
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												list3={}
												newmodList1={}
												newmodList2={}	
												newmodList3={}												
										 
												t_insert( list1,modLib.createMod("BlockChance", "MORE", 100, "Tree"..specNode.id))					 
												t_insert( list2,modLib.createMod("SpellBlockChance", "MORE", 100, "Tree"..specNode.id))	
												--t_insert( list3,modLib.createMod("LightningResist", "MORE", -50, "Tree"..specNode.id))													
												newmodList1["list"] =  list1
												newmodList2["list"] =  list2
												newmodList3["list"] =  nil
												specNode.mods={newmodList1,newmodList2,newmodList3}
											end 
										 
									
									end 
								
									
									
								
								end --end of specNode.type == "Normal"
								
						end--end of  for
					
					elseif string.find(jewName, '优雅的狂妄') then 
						for effectNodeId in pairs(node.nodesInRadius[3]) do
								local specNode = build.spec.nodes[effectNodeId];
								if specNode and specNode.type == "Normal" then
								-- 
									if not self:hasDiyMod(specNode.modList) then 
								
									
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										 specNode.modList_bak={};
										specNode.modList.Object_bak=table.shallow_copy(specNode.modList.Object);
										specNode.modList.ModStore_bak=table.shallow_copy(specNode.modList.ModStore);
										for i = 1, #specNode.modList do
											specNode.modList_bak[i]=table.shallow_copy(specNode.modList[i]									)
										end									
										specNode.mods_bak=table.shallow_copy(specNode.mods);								
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end
										specNode.dn="荣耀的代价";
										specNode.sd={};
										specNode.reminderText={"(范围内的天赋被永恒帝国抑制)"};
										specNode.isTimeless=1;
										specNode.modList = new("ModList")
										newmod = modLib.createMod("荣耀的代价", "BASE", 0);
										newmod.isDIY=1;
										specNode.modList[#specNode.modList+1]=newmod;
										list={}
										newmodList={}
									--	list.isTimeless=1
										t_insert( list,newmod)
										newmodList["list"] =  list
										specNode.mods={newmodList}
										 
									end 
								elseif specNode and specNode.type == "Notable" then
								if not self:hasDiyMod(specNode.modList) then 
									specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										 specNode.modList_bak={};
										specNode.modList.Object_bak=table.shallow_copy(specNode.modList.Object);
										specNode.modList.ModStore_bak=table.shallow_copy(specNode.modList.ModStore);
										for i = 1, #specNode.modList do
											specNode.modList_bak[i]=table.shallow_copy(specNode.modList[i]									)
										end									
										specNode.mods_bak=table.shallow_copy(specNode.mods);								
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end
										 
										specNode.sd={};
										specNode.reminderText={"范围内的天赋被永恒帝国抑制","(该天赋会被替换成一条随机词缀，未支持)"};
										specNode.isTimeless=1;
										specNode.modList = new("ModList")
										newmod = modLib.createMod("优雅的狂妄", "BASE", 0);
										newmod.isDIY=1;
										specNode.modList[#specNode.modList+1]=newmod;
										list={}
										newmodList={}
									--	list.isTimeless=1
										t_insert( list,newmod)
										newmodList["list"] =  list
										specNode.mods={newmodList}
										 
								end
								elseif specNode and specNode.type == "Keystone" then
									--重点核心
									
									if npcName =='卡迪罗' then 
											if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="无上衰败";
												specNode.sd={"从药剂获得的生命回复同样作用于能量护盾","从药剂获得的生命回复额外降低 30%"};
												specNode.reminderText={"(生命药剂的效果维持到生命全满)"};
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												newmodList1={}
												newmodList2={}										 
												t_insert( list2,modLib.createMod("FlaskLifeRecovery", "MORE", -30, "Tree"..specNode.id))										 
												newmodList1["list"] =  nil
												newmodList2["list"] =  nil
												specNode.mods={newmodList1,newmodList2}
											end 	
									elseif npcName =='维多里奥'  then 
										 if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="无上之秀";
												specNode.sd={"周围的友军和敌人跟你共享能量球","击中你的敌人有 10% 的几率获得一个耐力球，狂怒球或暴击球"};
												specNode.reminderText=nil;
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												newmodList1={}
												newmodList2={}										 
												t_insert( list1,newmod1)										 
												newmodList1["list"] =  nil
												newmodList2["list"] =  nil
												specNode.mods={newmodList1,newmodList2}
											end 
									elseif npcName =='切特斯'   then 
										 
										  if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="无上自我";
												specNode.sd={"你只能从技能中得到一种非旗帜光环。","光环技能不能影响友军","你的光环技能对自身造成的总效果额外提高 50%","总魔力保留额外提高 50%"};
												specNode.reminderText=nil;
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												list3={}
												list4={}
												newmodList1={}
												newmodList2={}	
												newmodList3={}
												newmodList4={}		
t_insert( list2,modLib.createMod("SelfAurasCannotAffectAllies", "FLAG", true, "Tree"..specNode.id))
t_insert( list3,modLib.createMod("AuraEffectOnSelf", "MORE", 50, "Tree"..specNode.id))
t_insert( list4,modLib.createMod("ManaReserved", "MORE", 50, "Tree"..specNode.id))													
												--t_insert( list1,newmod1)										 
												newmodList1["list"] =  nil
												newmodList2["list"] =  list2
												newmodList3["list"] =  list3
												newmodList4["list"] =  list4
												specNode.mods={newmodList1,newmodList2,newmodList3,newmodList4}
											end 
									
									end 
								
									
									
								
								end --end of specNode.type == "Normal"
								
						end--end of  for
					elseif string.find(jewName, '光彩夺目') then 
						for effectNodeId in pairs(node.nodesInRadius[3]) do
								local specNode = build.spec.nodes[effectNodeId];
								if specNode and specNode.type == "Normal" then
								-- 
									if not self:hasDiyMod(specNode.modList) then 
								
								
										specNode.sd_bak=table.shallow_copy(specNode.sd);
										specNode.dn_bak=specNode.dn;
										specNode.reminderText_bak=specNode.reminderText;
										 specNode.modList_bak={};
										specNode.modList.Object_bak=table.shallow_copy(specNode.modList.Object);
										specNode.modList.ModStore_bak=table.shallow_copy(specNode.modList.ModStore);
										for i = 1, #specNode.modList do
											specNode.modList_bak[i]=table.shallow_copy(specNode.modList[i]									)
										end									
										specNode.mods_bak=table.shallow_copy(specNode.mods);								
										for i = 1, #specNode.mods do
											 
											specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
										end
										
										
										specNode.dn="瓦尔";
										specNode.reminderText={"(天赋小点会被替换成瓦尔词缀-【未支持】)"};
										  
										specNode.sd={"天赋小点会被替换成瓦尔词缀"};
										specNode.isTimeless=1;
										specNode.modList = new("ModList")
										newmod = modLib.createMod("光彩夺目", "BASE", 0);
										newmod.isDIY=1;
										specNode.modList[#specNode.modList+1]=newmod;
										list={}
										newmodList={}
									--	list.isTimeless=1
										t_insert( list,newmod)
										newmodList["list"] =  nil
										specNode.mods={newmodList}
										 
										 
										 
									end 
								elseif specNode and specNode.type == "Notable" then
								if not self:hasDiyMod(specNode.modList) then 
									specNode.sd_bak=table.shallow_copy(specNode.sd);
									specNode.dn_bak=specNode.dn;
									specNode.reminderText_bak=specNode.reminderText;
									 specNode.modList_bak={};
									 
									specNode.reminderText={"范围内的天赋被瓦尔抑制","(该天赋会额外多一条随机词缀，未支持)"};
								end	
								elseif specNode and specNode.type == "Keystone" then
									--重点核心
									
									if npcName =='赛巴昆' or  npcName=='夏巴夸亚' then 
											if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="神圣血肉";
												specNode.sd={"受到的所有伤害穿透护盾","受到的元素伤害有 50% 视为混沌伤害","+10% 混沌抗性上限"};
												specNode.reminderText={"（最大抗性不能超过 90%）"};
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												list3={}
												newmodList1={}
												newmodList2={}	
												newmodList3={}												
												t_insert( list2,modLib.createMod("ColdDamageTakenAsChaos", "BASE", 50, "Tree"..specNode.id))
t_insert( list2,modLib.createMod("LightningDamageTakenAsChaos", "BASE", 50, "Tree"..specNode.id))
t_insert( list2,modLib.createMod("FireDamageTakenAsChaos", "BASE", 50, "Tree"..specNode.id))
t_insert( list3,modLib.createMod("ChaosResistMax", "BASE", 10, "Tree"..specNode.id))										
											
												newmodList1["list"] =  nil
												newmodList2["list"] =  list2
												newmodList3["list"] =  list3
												specNode.mods={newmodList1,newmodList2,newmodList3}
											end 	
									elseif npcName =='泽佛伊'  then 
										 if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="靑春永驻";
												specNode.sd={"生命回复额外降低 50%","从生命偷取中获得的每秒最大总恢复量降低 50%","能量护盾回复改为恢复生命"};
												specNode.reminderText=nil;
												specNode.isTimeless=1;									 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;						
												
												list1={}
												list2={}
												list3={}
												newmodList1={}
												newmodList2={}	
												newmodList3={}	

t_insert( list1,modLib.createMod("LifeRecoveryRate", "MORE", -50, "Tree"..specNode.id))
t_insert( list2,modLib.createMod("MaxLifeLeechRate", "MORE", -50, "Tree"..specNode.id))
 
											 									 
												newmodList1["list"] =  list1
												newmodList2["list"] =  list2
												newmodList3["list"] =  nil
												specNode.mods={newmodList1,newmodList2,newmodList3}
											end 
									elseif npcName =='多里亚尼'   then 
										 
										  if not self:hasDiyModItem(specNode.keystoneMod) then 
												specNode.sd_bak=table.shallow_copy(specNode.sd);
												specNode.dn_bak=specNode.dn;
												specNode.reminderText_bak=specNode.reminderText;
												specNode.modList_bak={};
												  
												specNode.mods_bak=table.shallow_copy(specNode.mods);
												
												for i = 1, #specNode.mods do
													 
													specNode.mods_bak[i]=table.shallow_copy(specNode.mods[i]									)
												end								
												
												specNode.dn="腐化的灵魂";
												specNode.sd={"受到的非混沌伤害有 50% 穿透能量护盾","获得等同 20% 最大生命的额外最大能量护盾"};
												specNode.reminderText=nil;
												specNode.isTimeless=1; 
												newmod1 = modLib.createMod("Keystone", "LIST", specNode.dn, "Tree"..specNode.id)
												newmod1.isDIY=1;	
												specNode.keystoneMod=newmod1;			
												specNode.hide=nil;	
												list1={}
												list2={}
												newmodList1={}
												newmodList2={}	
												t_insert( list2,modLib.createMod("LifeGainAsEnergyShield", "BASE", 20, "Tree"..specNode.id))
 									 
												newmodList1["list"] =  nil
												newmodList2["list"] =  list2			 
												specNode.mods={newmodList1,newmodList2}
											end 
									
									end 
								 
								end --end of specNode.type == "Normal"
								
						end--end of  for
					
					end --end of if jewel.name 
					
					end --end of if node.nodesInRadius
					
				
			end--end of if jewel 
		end--end of type == "Socket"
	end--end of for nodeId, node
end
