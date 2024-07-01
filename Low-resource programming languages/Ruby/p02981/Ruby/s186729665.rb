input = readlines()
n, a, b = input.shift().chomp.split("\s").map{|x| x.to_i}

a_total = n * a
b_total = n % 4 == 0 ? (n / 4) * b : (n / 4 + 1) * b

puts [a_total, b_total].min
