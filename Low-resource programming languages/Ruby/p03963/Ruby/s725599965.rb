n,k=gets.chomp.split(" ").map{|i| i.to_i}

puts k*((k-1)**(n-1))