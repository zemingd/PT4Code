a, b = gets.split.map(&:to_i)
res = b % a == 0 ? a + b : b - a
puts res