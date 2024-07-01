a, b, c, d = gets.split.map(&:to_i)

tmp1c  = b / c
tmp1d  = b / d
tmp1cd = b / c.lcm(d)
tmp1   = b - (tmp1c + tmp1d - tmp1cd)

tmp2c  = (a - 1) / c
tmp2d  = (a - 1) / d
tmp2cd = (a - 1) / c.lcm(d)
tmp2   = a - 1 - (tmp2c + tmp2d - tmp2cd)

puts tmp1 - tmp2
