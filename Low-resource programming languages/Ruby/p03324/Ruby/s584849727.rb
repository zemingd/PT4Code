a, b = gets.split.map(&:to_i)
b = 101 if b == 100
p(100**a * b)