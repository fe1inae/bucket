return {
	version     = "5.4.2",
	description = "A powerful, efficient, lightweight, embeddable scripting language",
	homepage    = "http://www.lua.org",
	license     = "MIT",
	
	architecture = {
		["64bit"] = {
			url = {
				"https://downloads.sourceforge.net/project/luabinaries/5.4.2/Tools%20Executables/lua-5.4.2_Win64_bin.zip",
				"https://downloads.sourceforge.net/project/luabinaries/5.4.2/Windows%20Libraries/Dynamic/lua-5.4.2_Win64_dllw6_lib.zip",
			},
			hash = {
				"sha1:31f5380006244e045c9aa2119feed8d353be72cb",
				"sha1:e313a05e498b77b5e259737fe4ec851fe2b9d23e",
			},
		},
		["32bit"] = {
			url = {
				"https://downloads.sourceforge.net/project/luabinaries/5.4.2/Tools%20Executables/lua-5.4.2_Win32_bin.zip",
				"https://downloads.sourceforge.net/project/luabinaries/5.4.2/Windows%20Libraries/Dynamic/lua-5.4.2_Win32_dllw6_lib.zip",
			},
			hash = {
				"sha1:d5cb6359710413a71ba517617654f1c15229d61f",
				"sha1:c13d772ebe44157d55279b04b93b67b5f8805a4f",
			},
		}
	},
	
	bin = {
		"lua54.exe",
		{ "lua54.exe", "lua", },
		"luac54.exe",
		{ "luac54.exe", "luac", },
	},
	
	-- support luarocks lua_paths
	env_set = {
		LUA_PATH  = ".\\?.lua;.\\?\\init.lua;$scoopdir\\persist\\luarocks\\rocks\\share\\lua\\5.4\\?.lua;$scoopdir\\persist\\luarocks\\rocks\\share\\lua\\5.4\\?\\init.lua",
		LUA_CPATH = ".\\?.dll;.\\?\\init.dll;$scoopdir\\persist\\luarocks\\rocks\\lib\\lua\\5.4\\?.dll;$scoopdir\\persist\\luarocks\\rocks\\lib\\lua\\5.4\\?\\init.dll",
	},
	
	checkver = {
		url   = "http://luabinaries.sourceforge.net/download.html",
		regex = "LuaBinaries ([\\d.]+)",
	},
	
	autoupdate = {
		architecture = {
			["64bit"] = {
				url = {
					"https://downloads.sourceforge.net/project/luabinaries/$version/Tools%20Executables/lua-$version_Win64_bin.zip",
					"https://downloads.sourceforge.net/project/luabinaries/$version/Windows%20Libraries/Dynamic/lua-$version_Win64_dllw6_lib.zip",
				},
			},
			["32bit"] = {
				url = {
					"https://downloads.sourceforge.net/project/luabinaries/$version/Tools%20Executables/lua-$version_Win32_bin.zip",
					"https://downloads.sourceforge.net/project/luabinaries/$version/Windows%20Libraries/Dynamic/lua-$version_Win32_dllw6_lib.zip",
				},
			},
		},
		bin = {
			"lua$majorVersion$minorVersion.exe",
			{ "lua$majorVersion$minorVersion.exe", "lua", },
			"luac$majorVersion$minorVersion.exe",
			{ "luac$majorVersion$minorVersion.exe", "luac", },
		},
	},
}
