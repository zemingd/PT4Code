a, b, c, d = gets.chomp.split(" ").map(&:to_i)
result = 0
c_result = ((b / c) - (a / c))
d_result = ((b / d) - (a / d))
c_d = c.lcm(d)
c_d_result = ((b / c_d) - (a / c_d))
result = c_result + d_result - c_d_result

puts ((b - a + 1) - result)