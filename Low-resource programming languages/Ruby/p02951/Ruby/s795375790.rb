a,b,c = gets.split(" ").map{|i|i.to_i}
puts b+c-a < 0 ? 0 : b+c-a