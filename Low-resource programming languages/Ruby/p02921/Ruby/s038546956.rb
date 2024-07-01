s = gets.chomp
t = gets.chomp
ans = 0
3.times do |i|
  if s[i] == t[i]
    ans += 1
  end
end
puts ans
  