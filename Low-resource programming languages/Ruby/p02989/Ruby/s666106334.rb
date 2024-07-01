# https://atcoder.jp/contests/abc132/tasks/abc132_c


N = gets.to_i
ds = gets.split.map(&:to_i)

ds.sort!
M = N / 2
ans = ds[M] - ds[M - 1]
puts ans
