function my_concat(strs)
    local s = ''
    for _, str in ipairs(strs) do
        s = s .. str
    end

    return s
end
