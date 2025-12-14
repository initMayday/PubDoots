local function get_env(env)
    local var = os.getenv(env)
    if not var then
        error("Failed to get env var: " .. env)
        os.exit(1)
    end
    return var
end

local function gen_table(Table)
    Table.Home = get_env("ST_HOME")
    Table.DotConfig = Table.Home .. "/.config"
    Table.Modules = Table.Config .. "/Modules"
    Table.UniquePath = Table.Config .. "/Unique"
    Table.HostPath = Table.UniquePath .. "/" .. get_env("HOSTNAME")

    setmetatable(Table, {
        __index = function(_, key)
            error("Attempted to access a missing field in Info!: " .. tostring(key))
        end
    })
end

local function path_exists(path)
    local f = io.open(path, "r")
    if f then
        io.close(f)
        return true
    else
        return false
    end
end

local function deep_merge(Table1, Table2)
    for i, v in pairs(Table2) do
        if type(v) == "table" and type(Table1[i]) == "table" then
            deep_merge(Table1[i], v)
        else
            --> Overwrite if both specified
            Table1[i] = v
        end
    end
    return Table1
end

local PubInfo = { Config = get_env("ST_CONFIG") .. "/PubDoots" }
gen_table(PubInfo)
local PubTable = dofile(PubInfo.HostPath .. "/symlinks.lua")(PubInfo)

local PrivInfo = { Config = get_env("ST_CONFIG") .. "/PrivDoots" }
gen_table(PrivInfo)
local PrivDir = PrivInfo.HostPath .. "/symlinks.lua"
if path_exists(PrivDir) then
    local PrivTable = dofile(PrivDir)(PrivInfo)
    deep_merge(PubTable, PrivTable)
end

return PubTable


