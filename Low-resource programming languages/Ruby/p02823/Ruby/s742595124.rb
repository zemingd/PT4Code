n, a, b = gets.split.map(&:to_i)

puts [n - b, a - 1].min + 1 + (b - a - 1) / 2
