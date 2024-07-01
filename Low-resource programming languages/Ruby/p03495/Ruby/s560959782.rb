# https://atcoder.jp/contests/abc081/tasks/arc086_a


N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

ans = As
  .group_by(&:itself)
  .map { |_k, vs| vs.size }
  .sort
  .reverse
  .drop(K)
  .reduce(&:+) || 0

puts ans
