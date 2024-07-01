# https://atcoder.jp/contests/abc150/tasks/abc150_c



N = gets.to_i
Ps = gets.split.map(&:to_i)
Qs = gets.split.map(&:to_i)

perm = (1..N).to_a.permutation.to_a
a = perm.find_index(Ps)
b = perm.find_index(Qs)
puts (a - b).abs
