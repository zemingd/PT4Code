s = gets.chomp
t = gets.chomp
ans = 0
3.times { |i| ans += 1 if s[i] == t[i] }
puts ans