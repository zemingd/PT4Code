N, X = gets.split.map(&:to_i)
M = N.times.map { gets.to_i }

remain = X - M.inject(:+)
puts N + remain / M.min
