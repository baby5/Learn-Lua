function sort_lines(src_path, tag_path)
    if src_path then
        assert(io.input(src_path))
    end

    local lines = {}
    for line in io.lines() do
        table.insert(lines, line)
    end

    table.sort(lines)

    if tag_path then
        local f = io.open(tag_path)
        if f ~= nil then
            f:close()

            io.write('tag_path exist, overwrite?(y/n)')
            confirm = io.read()
            
            if confirm == 'y' then
                assert(io.output(tag_path))
            else
                return
            end
        end
    end

    for _, l in ipairs(lines) do
        io.write(l, '\n')
    end
end
