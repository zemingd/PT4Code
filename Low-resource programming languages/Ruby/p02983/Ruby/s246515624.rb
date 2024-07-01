L, R = gets.split.map(&:to_i)
M = 2019

a = (L .. R).take(M)
puts a.size >= M ? 0 : a.combination(2).map{|i, j| i*j % M}.min