n, a, b = gets.chop.split.map(&:to_i)
puts n * a < b ? n * a : b
