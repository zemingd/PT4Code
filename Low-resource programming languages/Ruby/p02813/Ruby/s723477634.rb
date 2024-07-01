N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)
sorted = (1..N).to_a.permutation.sort
a = sorted.find_index(P)
b = sorted.find_index(Q)
ans = (a - b).abs
puts ans