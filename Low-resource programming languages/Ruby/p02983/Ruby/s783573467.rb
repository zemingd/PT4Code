L, R = gets.split.map(&:to_i)
M = 2019

a = (L .. R).map{|n| n % M}.uniq.sort
puts a.combination(2).map{|i, j| i * j % M}.min