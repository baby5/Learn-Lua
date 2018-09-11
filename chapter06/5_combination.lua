function combine(t, n, m, l)
    if m == 0 then
        for _, v  in ipairs(l) do
            io.write(v .. ' ')
        end
        io.write('\n')    
    else
        for i = n, #t-m+1 do
            table.insert(l, t[i])
            
            combine(t, i+1, m-1, l)
            
            table.remove(l)
        end
    end
end


function combine2(t, n, m, ...)
    if m == 0 then
        print(...)
    else
        for i = n, m, -1 do
            combine2(t, i-1, m-1, t[i], ...)
        end
    end
end
