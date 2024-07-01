s = gets.chomp
t = gets.chomp
ans = 0
3.times do |i|
    ans += 1 if s[i] == t[i]
end
puts ans