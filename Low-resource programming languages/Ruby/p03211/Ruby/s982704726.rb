puts gets.chomp.chars.each_cons(3).map{|t| (t.join.to_i-753).abs}.min
