a, b = gets.chomp.split(" ").map(&:to_i)
puts [2 * a - 1, 2 * b - 1, a + b].max