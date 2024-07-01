a, b, c, d = gets.split.map(&:to_i)
 
count = b - a + 1
lcm = c.lcm(d)
 
cc = (b / c) - (a / c)
cc += 1 if a % c == 0
dc = (b / d) - (a / d)
dc += 1 if a % d == 0
lc = (b / lcm) - (a / lcm)
lc += 1 if a % lcm == 0
 
puts count - (cc + dc - lc)