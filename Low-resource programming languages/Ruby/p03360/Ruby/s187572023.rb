# https://atcoder.jp/contests/abc096/tasks/abc096_b



A, B, C = gets.split.map(&:to_i).sort
K = gets.to_i

puts A + B + C * (2 ** K)
