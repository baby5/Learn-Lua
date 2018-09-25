function print_last_n(path, n)
    local f = assert(io.open(path))
    if n <= 0 then
        print('error n')
        return
    end

    local size = f:seek('end')    
    local is_first = true
    local target = false

    for i = size-1, 0, -1 do
        f:seek('set', i)
        local char = f:read(1)
        
        if char == '\n' then
            if target then
                is_first = false
                break
            else
                n = n - 1
                if n == 0 then 
                    target = true
                end
            end
        end
    end
    
    if n ~= 0 then
        print('no enough line to print')
    end
    
    if is_first then
        f:seek('set', 0)
    end

    for line in f:lines() do
        print(line)
    end
end
