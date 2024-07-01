N, K = gets.split.map{|i|i.to_i}
puts K * (K - 1) ** (N - 1)
