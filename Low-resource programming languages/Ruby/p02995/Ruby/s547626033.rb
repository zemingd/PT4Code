a, b, c, d = gets.strip.split.map(&:to_i)
lcm = c.lcm(d)

c_count = ((b-a)/c).floor
d_count = ((b-a)/d).floor
lcm_count = ((b-a)/lcm).floor

puts ((b - a) - (c_count + d_count - lcm_count)).to_s