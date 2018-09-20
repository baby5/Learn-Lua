function copy(src, tag)
    io.input(src)
    io.output(tag)
    
    local start = os.time()
    while true do
        local char = io.read(1)
        if not char then break end
        io.write(char)
    end
    io.stdout:write('byte by byte: ' .. os.time() - start .. '\n')

    io.input():seek('set', 0)
    io.output(tag)
    
    local start = os.time()
    while true do
        local line = io.read('*l')
        if not line then break end
        io.write(line)
    end
    io.stdout:write('line by line: ' .. os.time() - start .. '\n')

    io.input():seek('set', 0)
    io.output(tag)

    local start = os.time()
    while true do
        local block = io.read(2^13)
        if not block then break end
        io.write(block)
    end
    io.stdout:write('block by block: ' .. os.time() - start .. '\n')

    io.input():seek('set', 0)
    io.output(tag)

    local start = os.time()
    io.write(io.read('*a'))
    io.stdout:write('whole: ' .. os.time() - start .. '\n')
end
