s = gets.chomp
count = 0
x = 0
s.each_char do |c|
  count += 1 if c.to_i != x
  x = 1 - x
end
count = s.length - count if count * 2 > s.length
puts count
