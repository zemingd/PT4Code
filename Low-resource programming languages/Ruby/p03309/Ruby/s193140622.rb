n = gets.to_i
as = gets.split.map{|s|s.to_i}

bs = []
n.times{|i| bs[i] = as[i] - (i+1)}
b = bs.sort[n/2]

puts bs.inject(0){|sum, bi| sum += (bi-b).abs }