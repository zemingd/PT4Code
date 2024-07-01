ts = gets.split.map(&:to_i)
p ts.combination(2).map { |(a, b)| a + b }.min
