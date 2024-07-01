N, X = gets.split.map(&:to_i)
D = N.times.map{gets.to_i}
a = D.min

puts N + (X - D.sum) / a


