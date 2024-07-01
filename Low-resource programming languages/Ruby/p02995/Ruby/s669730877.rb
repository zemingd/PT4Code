a,b,c,d = gets.chomp.split(' ').map(&:to_i)
number = b - a + 1
c_de_warikireru = (number+1+(number%c)) / c
d_de_warikireru = (number+1+(number%d)) / d

puts number - c_de_warikireru - d_de_warikireru + ((number + 1 + (number%c.lcm(d))) / (c.lcm(d)))