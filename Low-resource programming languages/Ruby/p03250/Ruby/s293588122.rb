a, b, c = gets.chomp.split.map(&:to_i)
puts [10 * a + b + c, 10 * b + a + c].max