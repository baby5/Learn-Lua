function time_zone()
    local h_utc = tonumber(os.date('!%H'))
    local h = tonumber(os.date('%H'))

    return h - h_utc
end
