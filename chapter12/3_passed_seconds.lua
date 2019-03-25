function passed_seconds(date_time)
    dt = os.date('*t', date_time)
    return dt.hour * 3600 + dt.min * 60 + dt.sec
end
