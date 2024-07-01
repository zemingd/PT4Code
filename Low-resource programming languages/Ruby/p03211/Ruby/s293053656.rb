s = gets.chomp
p (0..[6,s.size].min).map{|i|(s[i,3].to_i-753).abs}.min