function poly(x, a_list)
    local r = 0
    
    for i, a in ipairs(a_list) do
        r = r + a * x ^ (i-1)
    end
    
    return r
end
