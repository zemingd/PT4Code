n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

combi = (1..n).to_a.permutation.to_a
puts (combi.index(p) - combi.index(q)).abs