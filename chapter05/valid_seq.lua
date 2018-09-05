function is_seq(seq)
    local last = 0
    for k, _ in pairs(seq) do
        last = k
    end

    return last == #seq
end
