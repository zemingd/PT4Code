a, b, c, d = gets.chomp.split(' ').map(&:to_i)
x = (b / c) + (b / d) - (b / c.lcm(d))
y = (a / c) + (a / d) - (a / c.lcm(d))
z = b - x - a + y
puts z