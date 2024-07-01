n, x = gets.chomp.split.map(&:to_i)
m = Array.new(n) { gets.to_i }
puts n + (x - m.inject(:+)) / m.min