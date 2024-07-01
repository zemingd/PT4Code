# https://atcoder.jp/contests/abc118/tasks/abc118_a


A, B = gets.split.map(&:to_i)

puts B % A == 0 ? A + B : B - A
