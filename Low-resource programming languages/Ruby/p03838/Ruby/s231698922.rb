x, y = gets.split.map(&:to_i)

ans = 0
if x < y
    if x >= 0 || y <= 0
        ans = y - x
    else
        if x.abs > y.abs
            ans = - y - x + 1
        else
            ans = y + x + 1
        end
    end
else
    if x < 0 || y > 0
        ans = x - y + 2
    else
        if x.abs > y.abs
            ans = y + x + 1
        else
            ans = - x - y + 1
        end
    end
end
puts ans
