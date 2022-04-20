# personal [scoop](https://github.com/ScoopInstaller/Scoop) bucket

manifests sources are in `pkg` written in lua tables, as i do not like strict
json and prefer not to use it.

the json outputs are included in the repository (albeit in smallerized form),
so building is not required to use, only edit, the packages.

run `lua.exe build.lua` to build the bucket after changes.

# todo

- support auto-updating versions in lua
- simpler manifests ?

# license

**with the exception of `lib/json.lua`**, all tracked files are in the public
domain (CC0).
