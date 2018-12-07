function replace(str, dict)
    for k, v in pairs(dict) do
        local value = v and v or ''
        str = string.gsub(str, k, v)
    end

    return str
end
