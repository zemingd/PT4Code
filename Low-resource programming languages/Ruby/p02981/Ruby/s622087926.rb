n, a, b = gets.chomp.split().map(&:to_i)
p (n * a < b ) ? n * a : b 