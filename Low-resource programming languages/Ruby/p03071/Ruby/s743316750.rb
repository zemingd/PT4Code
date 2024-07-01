a, b = gets.split.map(&:to_i)
b, a = a, b if a < b
p [a + b, a + a - 1].max
