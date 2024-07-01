x, y, z = gets.chomp.split.map(&:to_i)
if x == y && y == z && z == x
  puts "No"
elsif x == y || y == z || z == x
  puts "Yes"
else
  puts "No"
end
