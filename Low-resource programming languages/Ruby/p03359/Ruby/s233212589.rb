a, b = gets.split.map(&:to_i)
p a - 1 + (a <= b ? 1 : 0)