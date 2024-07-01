s = gets.chomp
ans = 0
4.times do |i|
  ans += 1 if s[i] == "+"
  ans -= 1 if s[i] == "-"
end
puts ans
