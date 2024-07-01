s = gets.chomp
t = gets.chomp

result = 0
3.times do |i|
  result += 1 if s[i] == t[i]
end

puts result