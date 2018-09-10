function unpack(t, i, n)
    local i = i or 1
    local n = n or #t
    if i <= n then
        return t[i], unpack(t, i+1, n)
    end
end

function return_except_first(t)
    return unpack(t, 2)
end
