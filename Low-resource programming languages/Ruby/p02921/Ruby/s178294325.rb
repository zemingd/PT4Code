s = gets.chomp
t = gets.chomp

ans = 0
ans += 1 if s[0] == t[0]
ans += 1 if s[1] == t[1]
ans += 1 if s[2] == t[2]

puts ans
