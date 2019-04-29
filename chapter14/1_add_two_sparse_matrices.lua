function add(sm1, sm2)
    local c = {}
    for i = 1, #sm1 do
        line = {}
        for k, v in pairs(sm1[i]) do
            line[k] = v + (sm2[i][k] or 0)
        end

        for k, v in pairs(sm2[i]) do
            if not line[k] then
                line[k] = v
            end
        end

        c[i] = line
    end
    return c
end
