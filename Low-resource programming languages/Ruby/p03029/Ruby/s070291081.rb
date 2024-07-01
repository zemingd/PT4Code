apple, a_part_of_apple = gets.chomp.split.map(&:to_i)

materials = a_part_of_apple + apple * 3

puts materials / 2
