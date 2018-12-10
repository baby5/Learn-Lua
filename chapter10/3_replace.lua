function replace(str, dict)
    for k, v in pairs(dict) do
        local value = v and v or ''
        str = string.gsub(str, k, value)
    end

    return str
end
