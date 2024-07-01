a, b, c, d = gets().chomp.split("\s").map{|x| x.to_i}

puts (b - a) <= d && (c - b) <= d ? 'Yes' : 'No'