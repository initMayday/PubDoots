local ScriptDir = debug.getinfo(1, "S").source:match("@(.*/)")
local Common = dofile(ScriptDir .. "common.lua")
local HostPath = Common.get_env("ST_CONFIG") .. "/PubDoots/Unique/"
    .. Common.get_env("HOSTNAME")

local function gen_table(Table)
    setmetatable(Table, {
        __index = function(_, key)
            error("Attempted to access a missing field in Info!: " .. tostring(key))
        end
    })

    Table.Home = Common.get_env("ST_HOME")
    Table.DotConfig = Table.Home .. "/.config"
    Table.Modules = Table.Config .. "/Modules"
    Table.UniquePath = Table.Config .. "/Unique"
    Table.HostPath = Table.UniquePath .. "/" .. Common.get_env("HOSTNAME")
end

local PubInfo = { Config = Common.get_env("ST_CONFIG") .. "/PubDoots" }
gen_table(PubInfo)
local PubTable = dofile(PubInfo.HostPath .. "/symlinks.lua")(PubInfo)

local PrivInfo = { Config = Common.get_env("ST_CONFIG") .. "/PrivDoots" }
gen_table(PrivInfo)
local PrivDir = PrivInfo.HostPath .. "/symlinks.lua"
if Common.path_exists(PrivDir) then
    local PrivTable = dofile(PrivDir)(PrivInfo)
    Common.deep_merge(PubTable, PrivTable)
end

return PubTable
