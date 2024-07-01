a, b = gets.chomp.split.map(&:to_i)
puts [a, b].min == 1 ? 1 : ((a * b)/2.0).ceil