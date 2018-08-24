-- https://stackoverflow.com/a/19139394/6760065
-- luac -l -p concat.lua
-- lua will optimize multi '..' operator

a = 'a' .. 'b' .. 'c'
print(a)

b = table.concat({'a', 'b', 'c'})
print(b)
