s = gets.chomp
t = gets.chomp
tmp = 0
3.times do |i|
  tmp += 1 if s[i]==t[i]
end
puts tmp