# https://atcoder.jp/contests/abc165/tasks/abc165_a

K = gets.to_i
A, B = gets.split.map(&:to_i)
cond = (A..B).any? { |i| (i % K).zero? }
puts cond ? 'OK' : 'NG'
