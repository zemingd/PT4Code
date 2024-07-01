N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

perm = (1..N).to_a.permutation.to_a
puts (perm.index(P) - perm.index(Q)).abs