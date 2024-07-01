a, b, c, k = gets.split.map(&:to_i)

puts k < a + b ? k : 2 * a + b - k
