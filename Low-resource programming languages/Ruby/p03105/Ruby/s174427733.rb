a, b, c = gets.chomp.split("\s").map{|x| x.to_i}

puts [b / a, c].min
