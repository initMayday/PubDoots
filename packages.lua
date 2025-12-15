local ScriptDir = debug.getinfo(1, "S").source:match("@(.*/)")
local Common = dofile(ScriptDir .. "common.lua")
local HostPath = Common.get_env("ST_CONFIG") .. "/PubDoots/Unique/"
    .. Common.get_env("HOSTNAME")

local PubTable = dofile(HostPath .. "/packages.lua")

local PrivDir = HostPath .. "/packages.lua"
if Common.path_exists(PrivDir) then
    local PrivTable = dofile(PrivDir)
    Common.deep_merge(PubTable, PrivTable)
end

--> Give default settings to each, apart from cores
Common.deep_merge(PubTable.Settings, {
    WarnOnPackageRemovalAbove = 5,
    SuperuserCommand = "sudo",
    AddPathConfirmation = true,
    RemovePathConfirmation = true,
})

return PubTable
