a, b = gets.strip.split.map(&:to_i)
puts (b % a) == 0 ? a + b : b - a
