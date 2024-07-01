a, b, c = gets.split.map(&:to_i)
rest = a - b
rest2 = c - rest
puts [rest2, 0].max
