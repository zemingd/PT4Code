n = gets.to_i
P = gets.split.map(&:to_i).join.to_i
Q = gets.split.map(&:to_i).join.to_i
n_arr = [*1..n].permutation.to_a.map(&:join).map(&:to_i).sort

puts (n_arr.index(P) - n_arr.index(Q)).abs