n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

m = [a, b, c, d, e].min
puts 4 + (n + m - 1) / m
