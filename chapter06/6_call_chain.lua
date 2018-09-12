n = math.random(1234567890)

function func()
    n = n - 1
    if n == 0 then
        return nil
    else
        return 'i = 1'
    end
end


f = load(func)
