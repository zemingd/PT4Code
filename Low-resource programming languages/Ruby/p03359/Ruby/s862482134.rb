a, b = gets.chomp.split(" ").map(&:to_i)
puts b >= a ? a : a - 1