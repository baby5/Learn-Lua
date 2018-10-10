function integral(f, start, stop, delta)
    delta = delta or 1e-4
    int = 0
    
    for i = start, stop, delta do
        int = int + f(i)*delta
    end

    return int
end
