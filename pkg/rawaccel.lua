return {
	version     = "1.6.1",
	description = "kernel mode mouse accel",
	homepage    = "https://github.com/a1xd/rawaccel",
	license     = "MIT",

	-- rawaccel only supports 64bit
	architecture = {
		["64bit"] = {
			url  = "https://github.com/a1xd/rawaccel/releases/download/v1.6.1/RawAccel_v1.6.1.zip",
			hash = "0ff7b09e34e846df33ae617eac8ae1c30587e0cd6c5dac9c76eb15a371b4b574",
			extract_dir = "Rawaccel",
		},
	},

	bin       = { "rawaccel.exe", },
	shortcuts = {{ "rawaccel.exe", "RawAccel"}},
	
	-- create the persistant settings.json
	pre_install = [[if (!(Test-Path "$persist_dir\settings.json")) { New-Item "$dir\settings.json" | Out-Null }]],
	persist     = { "settings.json", },
	
	-- WARN: no pre_uninstall, so cannot uninstall the driver
 	post_install = [[Start-Process -Wait -WorkingDirectory "$dir" "$dir\installer.exe"]],

	-- automatic updates
	checkver = { github = "https://github.com/a1xd/rawaccel", },
	autoupdate = {
		url = "https://github.com/a1xd/rawaccel/releases/download/v$version/RawAccel_v$version.zip",
		extract_dir = "Rawaccel",
	},
}
