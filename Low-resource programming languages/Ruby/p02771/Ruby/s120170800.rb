x, y, z = gets.chop.split.map(&:to_i)

if x == y || y == z || z == x
  puts "No"
elsif x != y && x!= z
  puts "No"
else
  puts "Yes"
end