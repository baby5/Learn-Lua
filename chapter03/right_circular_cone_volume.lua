function solution(height, angle)
    radian = (angle / 360) * 2 * math.pi
    r = height / math.tan(radian)
    s = math.pi * (r ^ 2)
    return (1/3) * s * height
end

v = solution(1, 45)
print(v)
