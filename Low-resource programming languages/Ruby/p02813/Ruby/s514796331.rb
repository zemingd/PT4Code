N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)
A = (1 .. N).to_a.permutation(N).map.sort
puts [P,Q].map{|pq| A.index(pq) }.inject(&:-).abs

