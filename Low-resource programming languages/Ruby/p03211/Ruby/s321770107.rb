x = gets.strip
puts x.chars.each_cons(3).map{|s| (753-s.join.to_i).abs}.min