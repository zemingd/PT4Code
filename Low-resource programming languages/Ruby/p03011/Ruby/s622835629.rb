x, y, z = gets.chomp.split.map(&:to_i)

puts [x + y, y + z,  z + x].min
