N, X = gets.split.map(&:to_i)
types = N.times.map { gets.to_i }
rest = X - types.inject(:+)
puts N + rest/types.min
