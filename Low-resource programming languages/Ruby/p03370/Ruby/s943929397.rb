N, X = gets.strip.split.map(&:to_i)
a = N.times.map { gets.strip.to_i }

puts N + ((X - a.inject(:+)) / a.min)
