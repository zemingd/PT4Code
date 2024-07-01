s = gets.to_s.chomp
t = gets.to_s.chomp

count = 0
3.times do |i|
  count += 1 if s[i] == t[i]
end

puts count