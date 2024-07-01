n = gets.to_i
m = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0
n.times do |i|
    if m[i] >= b[i]
        ans += b[i]
    else
        ans += m[i]
        y = b[i] - m[i]
        y = m[i+1] if m[i+1] < y
        ans += y
        m[i+1] -= y
        # p ans
    end
end

puts ans