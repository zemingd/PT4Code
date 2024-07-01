n = gets.to_i
d = gets.chomp.split.map(&:to_i)

puts d.combination(2).map { |x, y| x * y }.inject(:+)