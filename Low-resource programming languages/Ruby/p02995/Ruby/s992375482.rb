a, b, c, d = gets.split.map(&:to_i)

lcm = c.lcm(d)

a_lt = (a - 1) / c + (a - 1) / d - (a - 1) / lcm
b_lte = b / c + b / d - b / lcm
a_gte_b_lte = b_lte - a_lt

p b - a - a_gte_b_lte + 1