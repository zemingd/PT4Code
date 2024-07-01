a, b, c, d = gets.strip.split.map(&:to_i)
lcm = c.lcm(d)

c_count = b/c-(a-1)/c
d_count = b/d-(a-1)/d
lcm_count = b/lcm-(a-1)/lcm

puts ((b-a + 1)-(c_count + d_count - lcm_count)).to_s