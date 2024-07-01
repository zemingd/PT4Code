N, K = gets.split.map(&:to_i)
L = gets.split.map(&:to_i).sort{|a,b|b<=>a}[0,K]
puts L.inject(:+)