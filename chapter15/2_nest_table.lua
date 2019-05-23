function serialize(o, n)
    n = not n and 1 or n

    local t = type(o)
    if t == "number" then
        io.write(o)
    elseif t == "string" then
        io.write(string.format("%q", o))
    elseif t == "table" then
        io.write("{\n")
        
        local indents = {}
        for i = 1, n do
           table.insert(indents, " ")
        end
        local indent = table.concat(indents, "") 
        
        for k,v in pairs(o) do
            io.write(indent, string.format('["%s"]', k), " = ")
            serialize(v, n+1)
            io.write(",\n")
        end
        
        table.remove(indents)
        indent = table.concat(indents, "")
        local end_str = n == 1 and "}\n" or "}"

        io.write(indent, end_str)
    else
        error("cannot serialize a " .. type(o))
    end
end
