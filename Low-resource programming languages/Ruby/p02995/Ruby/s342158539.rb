a, b, c, d = gets.split(" ").map(&:to_i)
n = b - a + 1
cd = c.lcm(d)

a1 = a - 1
nc = (b / c) - (a1 / c)
nd = (b / d) - (a1 / d)
ncd = (b / cd) - (a1 / cd)

puts n - nc - nd + ncd
