# https://atcoder.jp/contests/abc159/tasks/abc159_a


N, M = gets.split.map(&:to_i)
ans = N * (N - 1) / 2 + M * (M - 1) / 2
puts ans
