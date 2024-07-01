pqr = gets.split.map &:to_i
min = pqr.combination(2).map { |(a, b)| a + b }.min
p min