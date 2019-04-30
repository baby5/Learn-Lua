function queue()
    local queue = {first=0, last=0}
    return queue
end

function push_first(queue, value)
    local first = queue.first + 1
    queue[first] = value
    queue.first = first
end

function push_last(queue, value)
    local last = queue.last - 1
    queue[last] = value
    queue.last = last
end

function pop_first(queue)
    local first = queue.first
    if first == queue.last then
        queue.first = 0
        queue.last = 0
        error('queue is empty')
    end
    
    value = queue[first]
    queue[first] = nil 
    first = first - 1
    queue.first = first

    return value
end

function pop_last(queue)
    local last = queue.last
    if last == queue.first then
        queue.first = 0
        queue.last = 0
        error('queue is empty')
    end

    value = queue[last]
    queue[last] = nil
    last = last + 1
    queue.last = last

    return value
end
