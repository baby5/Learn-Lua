function remove(raw, pos, length)
    local front = raw:sub(0, pos-1)
    local back = raw:sub(pos+length, -1)
    return front .. back
end

