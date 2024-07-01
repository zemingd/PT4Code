N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

a = (1..N).to_a.permutation.to_a
p (a.index(P) - a.index(Q)).abs
