a, b, c, d = gets.split.map(&:to_i)

x = b -a
y = (b / c) - (a / c) + (b / d) - (a / d)
z = (b / c.lcm(d)) - (a / c.lcm(d))

puts x - y + z + 1