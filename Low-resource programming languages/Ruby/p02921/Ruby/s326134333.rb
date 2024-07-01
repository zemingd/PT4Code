s = gets.chomp.to_s
t = gets.chomp.to_s
ans = 0

3.times do |i|
    if s[i] == t[i]
        ans += 1
    end
end

puts ans
