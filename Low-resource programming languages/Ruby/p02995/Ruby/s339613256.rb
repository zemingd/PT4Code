a, b, c, d = gets.split.map(&:to_i)

cdiv = b / c - (a - 1) / c # 6 - 1 = 5
ddiv = b / d - (a - 1) / d # 5 - 1 = 4
cddiv = b / c.lcm(d) - (a - 1) / c.lcm(d) # 0

p(b - a + 1 - cdiv - ddiv + cddiv) 

