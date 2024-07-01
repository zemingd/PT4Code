x = gets.to_i

p (1..x).map{|i| (2..10).map{|a| i**a}.select{|s| s <= x} }.flatten.max
