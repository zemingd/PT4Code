a, b, c, d = gets.chomp.split.map(&:to_i)

c_cnt = b/c - (a-1)/c
d_cnt = b/d - (a-1)/d

g = c.lcm(d)
g_cnt = b/g - (a-1)/g

puts (b - a + 1) - (c_cnt + d_cnt - g_cnt)
