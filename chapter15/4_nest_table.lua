function is_identifier(str)
    if string.match(str, '^[a-zA-Z_][a-zA-Z0-9_]*') == str then
        return true
    else
        return false
    end
end


function serialize(o, n)
    n = not n and 1 or n

    local t = type(o)
    if t == "number" or t == "boolean" then
        io.write(tostring(o))
    elseif t == "string" then
        io.write(string.format("%q", o))
    elseif t == "table" then
        io.write("{\n")
        
        local indent = string.rep(" ", n)
      
        local done = {}
        for i, v in ipairs(o) do
            io.write(indent)
            serialize(v, n+1)
            io.write(",\n")
            done[i] = true
        end

        for k,v in pairs(o) do
            if not done[k] then
                if is_identifier(k) then
                    io.write(indent, k, " = ")
                else
                    io.write(indent, "[");serialize(k);io.write("]", "=")
                end
                serialize(v, n+1)
                io.write(",\n")
            end
        end
        
        indent = string.rep(" ", n-1)
        local end_str = n == 1 and "}\n" or "}"

        io.write(indent, end_str)
    else
        error("cannot serialize a " .. type(o))
    end
end
