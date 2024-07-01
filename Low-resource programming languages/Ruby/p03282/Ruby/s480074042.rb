# https://atcoder.jp/contests/abc106/tasks/abc106_c


S = gets.chomp
K = gets.to_i

i = S.index(/[^1]/)
puts K <= i ? '1' : S[i]
