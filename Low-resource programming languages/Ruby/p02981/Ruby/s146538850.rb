n, a, b = gets.chomp.split().map(&:to_i)
puts n * a < b ? n * a : b

