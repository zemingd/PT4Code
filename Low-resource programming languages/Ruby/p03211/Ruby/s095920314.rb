S = gets.chomp
puts (0 .. S.size - 3).map{|i| (S[i,3].to_i - 753).abs}.min
