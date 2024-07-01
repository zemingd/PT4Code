a,b,c,d = gets.split.map(&:to_i)

total = b - a + 1

cf = b / c - a / c
df = b / d - a / d
lcm = c.lcm d
lcms = b / lcm - a / lcm


puts total - cf - df + lcms

