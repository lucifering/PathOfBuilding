local sha1 = require("lua/sha1")

 
local path="./"

local fileW = io.open("lua_MD5xml3.txt", "w+b")

for line in io.lines("luafiles3.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"tree\"/>\r\n")
			fileW:flush()
			 
			
end	


for line in io.lines("luafiles-tree-2_6.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"tree-2_6\"/>\r\n")
			fileW:flush()			 
			
end	

for line in io.lines("luafiles-tree-3_6.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"tree-3_6\"/>\r\n")
			fileW:flush()			 
			
end	
for line in io.lines("luafiles-tree-3_7.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"tree-3_7\"/>\r\n")
			fileW:flush()			 
			
end	
for line in io.lines("luafiles-tree-3_8.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"tree-3_8\"/>\r\n")
			fileW:flush()			 
			
end	
for line in io.lines("luafiles-tree-3_9.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"tree-3_9\"/>\r\n")
			fileW:flush()			 
			
end	
for line in io.lines("luafiles-tree-3_10.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"program\"/>\r\n")
			fileW:flush()			 
			
end	
for line in io.lines("luafiles-tree-3_11.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"program\"/>\r\n")
			fileW:flush()			 
			
end	
for line in io.lines("luafiles-tree-3_12.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"program\"/>\r\n")
			fileW:flush()			 
			
end	


fileW:close()

 

 