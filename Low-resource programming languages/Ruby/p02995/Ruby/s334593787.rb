a, b, c, d = gets.chomp.split.map(&:to_i)

all_num = b - (a-1)
c_num = b/c - (a-1)/c
d_num = b/d - (a-1)/d
cd_num = b/(c.lcm(d)) - (a-1)/(c.lcm(d))

puts(all_num - c_num - d_num + cd_num)