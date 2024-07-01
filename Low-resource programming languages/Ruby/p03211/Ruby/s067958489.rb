S = gets.chomp
p (S.length - 2).times.map{|v| (S[v..v+2].to_i - 753).abs}.min