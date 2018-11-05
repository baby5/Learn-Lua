function pattern_split(str, pattern)
    local start = 1
    local words = {}

    while 1 do
        local i, j = string.find(str, pattern, start)
        if not i then
            break
        end

        local word = string.sub(str, start-1, i)
        table.insert(words, word)
        start = j + 1
    end

    table.insert(words, string.sub(str, start, #str))

    return words
end
