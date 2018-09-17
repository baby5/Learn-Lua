function is_seq(seq)
    local i = 0
    for k, _ in pairs(seq) do
        i = i + 1
        if k ~= i then
            return false
        end
    end

    return true
end
