a, b  = gets.chomp.split.map(&:to_i)
puts [a, a - 1, b, b - 1].sort.reverse[0, 2].inject(:+)
