function poly(x, a_list)
    local r = 0
    
    for i, a in ipairs(a_list) do
        r = r + a * x ^ (i-1)
    end
    
    return r
end


function poly2(x, a_list)
    local r = 0
    
    for i = #a_list, 2, -1 do
        if i > 1 then
            r = x * (a_list[i] + r)
        else
            r = r + a_list[i]
        end
    end
    
    return r
end
