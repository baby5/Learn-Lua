function basicSerialize (o, t)
    -- assume 'o' is a number or a string
    if t == 'number' then
        return tostring(o)
    elseif t == 'string' then
        return string.format('%q', o)
    else
        error('cannot serialize a ' .. t)
    end
end

function save (name, value, saved)
    saved = saved or {} -- initial value
    io.write(name, " = ")
    local t = type(value)
    if t == "number" or t == "string" then
        io.write(basicSerialize(value, t), "\n")
    elseif t == "table" then
        if saved[value] then -- value already saved?
            io.write(saved[value], "\n") -- use its previous name
        else
            saved[value] = name -- save name for next time
            io.write("{}\n") -- create a new table
            for k,v in pairs(value) do -- save its fields
                k = basicSerialize(k, type(k))
                local fname = string.format("%s[%s]", name, k)
                save(fname, v, saved)
            end
        end
    else
        error("cannot save a " .. t)
    end
end
