a, b, c, d = gets().chomp.split("\s").map{|x| x.to_i}

res = false
res = true if (c - a).abs <= d
res = true if (b - a).abs <= d && (c - b).abs <= d

puts res == true ? 'Yes' : 'No'