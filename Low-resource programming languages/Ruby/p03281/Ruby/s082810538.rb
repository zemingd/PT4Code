n = gets.chomp.to_i
puts(n < 105 ? 0 : n < 135 : 1 ? n < 165 ? 2 : n < 189 ? 3 : n < 195 ? 4 : 5)