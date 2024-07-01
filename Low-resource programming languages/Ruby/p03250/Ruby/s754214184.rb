a, b, c = gets.chomp.split("\s").map{|x| x.to_i}

list = [a, b, c].sort.reverse

puts list[0] * 10 + list[1] + list[2]
