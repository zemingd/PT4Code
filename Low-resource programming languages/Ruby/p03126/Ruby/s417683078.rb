N, M = gets.split.map(&:to_i)

puts N.times.map {
  gets.split.map(&:to_i)[1..-1]
}.inject { |a, b|
  a & b
}.size