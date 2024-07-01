c = gets.chomp
d = []
d[0] = c.count("0")
d[1] = c.count("1")
puts d.min * 2
