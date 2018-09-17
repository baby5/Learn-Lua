function insert(l1, pos, l2)
    for i = #l2, 1, -1 do
        table.insert(l1, pos, l2[i])
    end
    
    return l1
end
