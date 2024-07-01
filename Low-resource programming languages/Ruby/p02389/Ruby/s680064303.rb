x = gets.split(" ").map{|s| s.to_i}
y = [ x[0] * x[1], (x[0] + x[1]) * 2]
puts y.join(" ")
