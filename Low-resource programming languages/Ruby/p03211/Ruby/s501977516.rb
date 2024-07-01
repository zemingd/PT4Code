s=gets.chomp
p (s.size-2).times.map {|i| (753-s[i,3].to_i).abs}.min