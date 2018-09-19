function copy(src, tag)
    io.input(src)
    io.output(tag)

    while true do
        local char = io.read(1)
        if not char then break end
        io.write(char)
    end

    io.input():seek('set', 0)
    while true do
        local line = io.read('l')
        if not line then break end
        io.write(line)
    end

    io.input():seek('set', 0)
    while true do
        local block = io.read(2^13)
        if not block then break end
        io.write(line)
    end

    io.input():seek('set', 0)
    io.write(io.read(a))
end
