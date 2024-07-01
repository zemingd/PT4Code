s = gets.chomp
t = gets.chomp
cnt = 0
s.size.times do |i|
  cnt += 1 if s[i] == t[i]
end
puts cnt