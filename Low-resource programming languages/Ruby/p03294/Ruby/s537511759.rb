# https://atcoder.jp/contests/abc103/tasks/abc103_c

N = gets.to_i
as = gets.split.map(&:to_i)

ans = as.map { |a| a - 1 }.reduce(&:+)
puts ans
