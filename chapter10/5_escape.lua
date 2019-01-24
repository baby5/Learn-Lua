function escape(s)
    s = string.gsub(s, '.', function(x)
        return string.format('\\x%02X', string.byte(x))
    end)
    return s
end
