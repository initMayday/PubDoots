local Common = {}

function Common.get_env(env)
    local var = os.getenv(env)
    if not var then
        error("Failed to get env var: " .. env)
    end
    return var
end

function Common.path_exists(path)
    local f = io.open(path, "r")
    if f then
        io.close(f)
        return true
    else
        return false
    end
end

function Common.deep_merge(Table1, Table2)
    for i, v in pairs(Table2) do
        if type(v) == "table" and type(Table1[i]) == "table" then
            Common.deep_merge(Table1[i], v)
        else
            --> Overwrite if both specified
            Table1[i] = v
        end
    end
    return Table1
end

return Common;
