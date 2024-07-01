a, b = gets.chomp.split(' ').map{|x| x.to_i}

puts [a + (a-1), b + (b-1), a + b].max
