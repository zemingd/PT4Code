n = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

as = (1..n).to_a.permutation(n).to_a.sort
p (as.index(P) - as.index(Q)).abs