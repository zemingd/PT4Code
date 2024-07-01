input = readlines()
x, a = input.shift().chomp.split("\s").map{|x| x.to_i}

puts x < a ? 0 : 10
