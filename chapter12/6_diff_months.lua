function diff_months(t1, t2)
    local d1 = os.date('*t', t1)
    local d2 = os.date('*t', t2)

    local dy = math.abs(d1.year - d2.year)
    local dm = math.abs(d1.month - d2.month) - 1

    return dy * 12 + dm
end
