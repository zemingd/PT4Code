x, k, d = gets.split.map(&:to_i)
ans = 0

if x > (k * d)
    ans = x - (k * d)
else
    num = x / d
    if (k - num) % 2 == 0
        ans = x - (d * (x / d))
    else
        ans = x - (d * ((x / d) + 1))
    end
end

puts ans.abs
