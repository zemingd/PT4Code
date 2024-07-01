n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
com = p.permutation.to_a.sort
puts (com.index(p)-com.index(q)).abs