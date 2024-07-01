input = readlines()
ab, bc, ca = input.shift().chomp.split("\s").map{|x| x.to_i}

puts [ab + bc, ab + ca, bc + ca].min
