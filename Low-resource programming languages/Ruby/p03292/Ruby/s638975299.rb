# https://atcoder.jp/contests/abc103/tasks/abc103_a


As = gets.split.map(&:to_i)

ans =
  As
  .permutation(3)
  .map { |a, b, c| (a - b).abs + (b - c).abs }
  .min

puts ans
