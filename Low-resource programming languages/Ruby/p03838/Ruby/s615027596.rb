x,y=gets.split.map(&:to_i)
if x == y
  puts 0
elsif x.abs == y.abs
  puts 1
elsif 0 <= y && y < x
  puts x - y + 1
elsif 0 <= y && y < x.abs
  puts 1 - x - y
elsif 0 <= y
  puts y - x
elsif x < y
  puts y - x
elsif y.abs <= x
  puts 1 + x + y
else
  puts 2 + x - y
end