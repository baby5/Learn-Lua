function create(dirname)
    os.execute('mkdir ' .. dirname)
end


function remove(dirname)
    os.execute('rm -r ' .. dirname)
end


function collect(dirname)
    local f = io.popen('ls ' .. dirname)
    for entry in f:lines() do
        print(entry)
    end
end
