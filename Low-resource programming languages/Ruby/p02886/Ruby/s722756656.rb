n = gets.to_i
d = gets.split.map(&:to_i)

puts d.combination(2).map { |a, b| a * b }.inject(:+)
