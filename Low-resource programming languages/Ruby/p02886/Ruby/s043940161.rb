# https://atcoder.jp/contests/abc143/tasks/abc143_b

N = gets.to_i
ds = gets.split.map(&:to_i)

sum = ds.reduce(&:+)
sqsum = ds.map { |d| d**2 }.reduce(&:+)
ans = (sum**2 - sqsum) / 2

puts ans
