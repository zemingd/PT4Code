# https://atcoder.jp/contests/abc135/tasks/abc135_b

N = gets.to_i
ps = gets.split.map(&:to_i)
qs = ps.sort
c = ps.zip(qs).count { |p, q| p != q }

puts c <= 2 ? 'YES' : 'NO'
