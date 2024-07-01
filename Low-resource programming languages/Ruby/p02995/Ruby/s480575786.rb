a, b, c, d = gets.split.map(&:to_i)

cnt = 0
min_c = a % c == 0 ? (a / c) : (a / c + 1)
max_c = b / c

c_cnt = max_c - min_c + 1

min_d = a % d == 0 ? (a / d) : (a / d + 1)
max_d = b / d

d_cnt = max_d - min_d + 1

cd_lcm = c.lcm(d)

min_cd = a % d == 0 ? (a / cd_lcm) : (a / cd_lcm + 1)
max_cd = b / cd_lcm 

cd_cnt = max_cd - min_cd + 1

puts (b - a + 1 - (c_cnt + d_cnt - cd_cnt))
