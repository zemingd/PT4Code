# https://atcoder.jp/contests/abc110/tasks/abc110_a


A, B, C = gets.split.map(&:to_i)
as = [A, B, C].sort
puts as[0] + as[1] + as[2] * 10
