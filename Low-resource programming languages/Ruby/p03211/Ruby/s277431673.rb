s = gets.chomp
p (0..s.size-3).map{|i|(s.slice(i,3).to_i - 753).abs}.min