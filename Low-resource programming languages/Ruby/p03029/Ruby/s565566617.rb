tmp = gets.split(" ").map{|i| i.to_i}
piece = tmp[0] * 3 + tmp[1]
puts (piece / 2).to_i