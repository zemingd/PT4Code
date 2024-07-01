# https://atcoder.jp/contests/abc123/tasks/abc123_c


N = gets.to_i
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i

m = [A, B, C, D, E].min

puts ((N - 1) / m) + 5
