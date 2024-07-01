a, b, c, k = gets.split.map(&:to_i)
puts (k <= a + b) ? a : 2 * a + b - k