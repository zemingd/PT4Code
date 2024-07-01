n = gets.to_i
d = gets.split.map(&:to_i)

puts d.combination(2).inject(0) { |r, (a, b)| r + a * b }
