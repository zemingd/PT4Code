n = gets.chomp.to_i
s = gets.chomp

count = 1
(n-1).times do |i|
  count += 1 if s[i] != s[i+1]
end

puts(count)