def warizan(a, b)
  return (a / b.to_f).round
end

a, b, c, d = gets.split.map(&:to_i)

c_wareru = warizan(b, c) - warizan(a, c) + 1
d_wareru = warizan(b, d) - warizan(a, d) + 1
lcm_wareru = warizan(b, c.lcm(d)) - warizan(a, c.lcm(d)) + 1

puts (b - a + 1) - (c_wareru + d_wareru - lcm_wareru)