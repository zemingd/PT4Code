a, b, c, d= gets.chomp.split(" ").map(&:to_i)

can_devide_c = b / c - (a - 1)/ c
can_devide_d = b / d - (a - 1)/ d
can_devide_c_and_d = b / c.lcm(d) - (a - 1) / c.lcm(d)
can_devide_c_or_d = can_devide_c + can_devide_d - can_devide_c_and_d
count = b - a + 1 - can_devide_c_or_d

puts count