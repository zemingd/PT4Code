L, R = gets.split.map(&:to_i)
M = 2019

a = (L .. R).map{|n| n % M}.uniq.sort
puts [a.take(2).inject(:*) % M, a.last(2).inject(:*) % M].min