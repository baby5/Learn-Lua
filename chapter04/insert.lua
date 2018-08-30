function insert(raw, pos, value)
    local front = raw:sub(0, pos-1)
    local back = raw:sub(pos, #raw)
    return front .. value .. back
end
