input = readlines()
a, pa = input.shift().chomp.split("\s").map{|x| x.to_i}

total = a * 3 + pa

puts total / 2
