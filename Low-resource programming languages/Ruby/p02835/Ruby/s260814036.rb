s = gets.strip.split('')
count = 0
(s.size / 2).times do |i|
  count += 1 if s[i] != s[s.size - 1 - i]
end
puts count