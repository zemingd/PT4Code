a, b, c, d = gets.split.map(&:to_i)
puts b - a + 1 - (b / c - (a - 1) / c + b / d - (a - 1) / d) + b / c.lcm(d) - (a - 1) / c.lcm(d)