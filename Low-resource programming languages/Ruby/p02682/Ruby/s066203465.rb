a, b, c, k = gets.split.map(&:to_i)
puts (k <= a + b) ? [a, k].min : 2 * a + b - k