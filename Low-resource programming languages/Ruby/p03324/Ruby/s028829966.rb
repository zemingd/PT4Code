a, b = gets.strip.split.map(&:to_i)
puts a != 0 ? 100 ** a * b : b
