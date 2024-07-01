x, y, z = gets.chop.split.map(&:to_i)

if x == y && x == z
  puts "No"
elsif x == y || x == z
  puts "Yes"
elsif x == y || y == z
  puts "Yes"
elsif x != y && x != z
  puts "No"
end