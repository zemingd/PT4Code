s = gets.chomp
ans = 0
ans += s.count("+")
ans -= s.count("-")
puts ans