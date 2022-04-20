-- WINDOWS ONLY
-- ============
-- its for a windows package manager -_-

assert(
	os.getenv("OS") == "Windows_NT",
	"only windows is supported"
)

-- IMPORTS
-- =======

local json = require("lib/json")

-- CONVERT
-- =======

for f in io.popen("dir /b pkg"):lines()
do
	if f:match("%.lua$")
	then
		local file    = "pkg/" .. f
		local ofile   = file:gsub("^pkg", "bucket"):gsub("%.lua$", ".json")
		local func    = assert(loadfile(file))
		local app     = json.encode(func())
		local ohandle = io.open(ofile, "w")
		
		ohandle:write(app)
		ohandle:close()
	end
end
