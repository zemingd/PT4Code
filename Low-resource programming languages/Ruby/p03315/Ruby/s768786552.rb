s = gets.strip
ans = 0
s.size.times do |i|
    if s[i] == '+'
        ans += 1
    else
        ans -= 1
    i += 1
    end
end
puts ans
