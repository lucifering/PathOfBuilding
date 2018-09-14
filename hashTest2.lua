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

fileW:close()