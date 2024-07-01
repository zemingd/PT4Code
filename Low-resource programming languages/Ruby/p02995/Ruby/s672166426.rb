require'rational'
a, b, c, d  = gets.split(" ").map(&:to_i)
# 全部
sum = b - (a - 1)
# cで割れるものの数
c_sum = b/c - (a - 1)/c
# dで割れるものの数
d_sum = b/d - (a - 1)/d
# cとdで割れるものの数（ダブり）
cd_sum = b/c.lcm(d) - (a - 1)/c.lcm(d)

puts sum - (c_sum + d_sum) + cd_sum