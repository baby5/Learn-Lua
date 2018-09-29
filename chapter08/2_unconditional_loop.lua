local i = 1

while true do
    i += 1
end


repeat
    i += 1
until true


-- math.huge is inf
for _ = 1, math.huge do
    i += 1
end


-- >=5.2.0-beta-rc2
::redo:: do
    i += 1
    goto redo
end
