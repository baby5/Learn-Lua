function print_last(path)
    local f = assert(io.open(path))
    local size = f:seek('end')

    multi_line = false
    target = false
    for i = size-1, 0, -1 do
        f:seek('set', i)
        local char = f:read(1)
        
        if char == '\n' then
            if target then
                mulit_line = true
                break
            else
                target = true
            end
        end
    end
    
    -- only 1 line
    if not mulit_line then
        f:seek('set', 0)
    end

    print(f:read('*l'))
end
