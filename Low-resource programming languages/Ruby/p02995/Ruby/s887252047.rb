a, b, c, d = gets.chomp.split(" ").map(&:to_i)
c2 = (b / c - a / c)
c2 += 1 if a % c == 0
d2 = (b / d - a / d)
d2 += 1 if a % d == 0
lcm_cd = c.lcm(d)
cd2 = (b / lcm_cd - a / lcm_cd)

ans = (b - a + 1) - (c2 + d2 - cd2)

puts ans