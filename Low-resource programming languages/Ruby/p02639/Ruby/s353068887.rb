xs = gets.chomp.split(' ').map(&:to_i)
puts xs.find_index(0) + 1