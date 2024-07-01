x,y = gets.split.map(&:to_i)
a = 10**10
a = y-x if y > x
ans = 0
while x != y
    if (x.abs < y.abs && x < 0) || (x.abs > y.abs && x > 0)
        ans += 1
        x *= -1
    elsif x.abs != y.abs
        ans += (x.abs-y.abs).abs
        x += (x.abs-y.abs).abs
    else
        ans += 1
        x *= -1
    end
end
puts [ans,a].min