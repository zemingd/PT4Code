a,b,c = gets.split.map{|n| n.to_i}
puts (x = c - (a - b)) < 0 ? 0 : x