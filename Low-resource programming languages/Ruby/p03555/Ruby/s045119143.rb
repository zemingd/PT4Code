c0 = gets.chomp
c1 = gets.chomp
res = c0[0] == c1[2] && c0[1] == c1[1] && c0[2] == c1[0]
puts res ? :YES : :NO