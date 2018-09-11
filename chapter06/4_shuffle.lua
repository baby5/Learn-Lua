function shuffle(t)
    math.randomseed(os.time())

    local size = #t
    for i = size, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end

    return t
end
