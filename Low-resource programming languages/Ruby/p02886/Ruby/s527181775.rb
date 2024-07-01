N = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)
puts d.combination(2).to_a.map { |a, b| a * b }.inject(&:+)
