a, b = gets().chomp.split("\s").map{|x| x.to_i}

puts [a+b, a-b, a*b].max