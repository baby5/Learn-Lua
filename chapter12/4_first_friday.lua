function first_friday(year)
    for i = 1, 7 do
        local t = os.time({year=year, month=1, day=i})
        local wday = os.date('%w', t)
        if wday == '5' then
            return i
        end
    end
end
