a, b, c, d = gets.chomp.split.map(&:to_i)
res = b - a + 1
res -= [b / c - (a + c - 1) / c + 1, 0].max
res -= [b / d - (a + d - 1) / d + 1, 0].max
l = c.lcm(d)
res += [b / l - (a + l - 1) / l + 1, 0].max
puts res