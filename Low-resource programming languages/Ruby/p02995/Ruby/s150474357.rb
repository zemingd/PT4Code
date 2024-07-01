a, b, c, d = gets.chomp.split().map(&:to_i)
a -= 1
lcm = [c, d].inject(:lcm)
quoA = a.div(c) + a.div(d) - a.div(lcm)
quoB = b.div(c) + b.div(d) - b.div(lcm)

puts b - quoB - a + quoA