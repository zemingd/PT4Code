a, b, c = gets.split.map(&:to_i)
k = gets.chomp.to_i
m = [a, b, c].max
puts m * 2 ** k + a + b + c - m
