input = readlines()
a, b, c = input.shift().chomp.split("\s").map{|x| x.to_i}

rem = c - (a - b)
puts rem > 0 ? rem : 0
