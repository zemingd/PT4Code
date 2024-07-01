a, b = gets.split.map &:to_i
p a == b ? 2*a : a > b ? 2*a - 1 : 2*b - 1