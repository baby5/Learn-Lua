-- Most Frequent Wrods

local ignore = {}
local f = assert(io.open('ignore.txt'))

for w in f:lines() do 
    ignore[w] = true
end

f:close()

local counter = {}
for line in io.lines() do
    for word in string.gmatch(line, '%w+') do
        if not ignore[word] then 
            counter[word] = (counter[word] or 0) + 1
        end
    end
end


local words = {}
for w in pairs(counter) do
    table.insert(words, w) 
end


table.sort(words, function(w1, w2)
    return counter[w1] > counter[w2] or counter[w1] == counter[w2] and w1 < w2
end)


local n = math.min(tonumber(arg[1]) or math.huge, #words)

for i = 1, n do
    io.write(words[i], '\t', counter[words[i]], '\n')
end
