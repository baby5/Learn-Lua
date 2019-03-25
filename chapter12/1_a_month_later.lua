function a_month_later(date_time)
    local dt = os.date('*t', date_time)
    dt.month = dt.month + 1
    return os.time(dt)
end

