N = gets.to_i
P = gets.split.join
Q = gets.split.join
R = (1..N).to_a.permutation.map{ |q| q.join }.sort
p (R.index(P) - R.index(Q)).abs
