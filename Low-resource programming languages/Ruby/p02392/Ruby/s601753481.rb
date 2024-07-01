a,b,c = gets.chomp.split(" ").map{|x| x.to_i}

puts a<b && b<c ? :Yes ::No