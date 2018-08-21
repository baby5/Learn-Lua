N = 8
n = 0
m = 0


function can_place(poss, i, j)
    m = m + 1
    for k = 1, i - 1 do
        if poss[k] == j or (j-i == poss[k]-k) or (i-k == poss[k]-j) then
            return false
        end
    end
    return true
end


function print_board(poss)
    io.write(n)
    io.write('\n')
    for i = 1, N do
        for j = 1, N do
            io.write(poss[i] == j and 'X' or '-', ' ')
        end
        io.write('\n')
    end
    n = n + 1
end


function place_queen(poss, i)
    if i > N then
        print_board(poss)
    else
        for j = 1, N do
            if can_place(poss, i, j) then
                poss[i] = j
                result = place_queen(poss, i+1)
            end
        end
    end
end


function place_queen2(poss, i)
    if i > N then
        print_board(poss)
        return true
    else
        for j = 1, N do
            if can_place(poss, i, j) then
                poss[i] = j
                result = place_queen2(poss, i+1)
                if result == true then
                    return result
                end
            end
        end
    end
end


-- place_queen({}, 1)
-- print(m)
place_queen2({}, 1)
