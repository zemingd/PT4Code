a, b, c = gets().chomp.split("\s").map{|x| x.to_i}

puts a <= c && c <= b ? 'Yes' : 'No'