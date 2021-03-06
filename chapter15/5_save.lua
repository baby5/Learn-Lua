function is_identifier(str)
    if string.match(str, '^[a-zA-Z_][a-zA-Z0-9_]*') == str then
        return true
    else
        return false
    end
end


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


function save (name, value, saved, n)
    saved = saved or {} -- initial value
    n = n or 1

    io.write(name, " = ")

    local t = type(value)
    if t == "number" or t == "string" then
        io.write(basicSerialize(value, t), "\n")
    elseif t == "table" then
        local indent = string.rep(" ", n)
        
        if saved[value] then -- value already saved?
            io.write(indent, saved[value], "\n") -- use its previous name
        else
            saved[value] = name -- save name for next time
            io.write("{}\n") -- create a new table
            for k,v in pairs(value) do -- save its fields
                if not is_identifier(k) then
                    k = basicSerialize(k, type(k))
                end
                local fname = string.format("%s%s[%s]", indent, name, k)
                save(fname, v, saved, n+1)
            end
        end
    else
        error("cannot save a " .. t)
    end
end
