a, b = readline.split.map(&:to_i)
p a - 1 + (a <= b ? 1 : 0)
