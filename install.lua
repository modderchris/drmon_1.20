-- drmon_1.20 installation script
--
--

local libURL = "https://raw.githubusercontent.com/acidjazz/drmon/master/lib/f.lua"
local startupURL = "https://github.com/modderchris/drmon_1.20/edit/master/drmon_1.20.lua"
local lib, startup
local libFile, startupFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()

