function trim(s)
    s = string.gsub(s, '^%s*', '')
    s = string.gsub(s, '%s*$', '')
    return s
end
