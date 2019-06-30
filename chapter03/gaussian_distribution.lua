function clt()
    return math.random() + math.random()
end


function box_muller()
    u = math.random()
    v = math.random()
    return math.sqrt(-2 * math.log(u)) * math.sin(2 * math.pi * v)
end
