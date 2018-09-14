local sha1 = require("lua/sha1")

local fileW = io.open("lua_MD5xml.txt", "w+b")
local path="./"
for line in io.lines("luafiles.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"program\"/>\r\n")
			fileW:flush()
			 
			
end	

fileW:close()

fileW = io.open("lua_MD5xml2.txt", "w+b")

for line in io.lines("luafiles2.txt") do		
		
			 
			local fileR = io.open(path..line, "rb")
			print(line)
			local content = fileR:read("*a")
			fileR:close()
			fileW:write("<File sha1=\""..sha1(content).."\" name=\""..line.."\" part=\"runtime\"/>\r\n")
			fileW:flush()
			 
			
end	

fileW:close()

