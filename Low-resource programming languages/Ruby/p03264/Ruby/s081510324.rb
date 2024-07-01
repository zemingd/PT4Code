# https://atcoder.jp/contests/abc108/tasks/abc108_a


K = gets.to_i

e = o = K / 2
o += 1 if K.odd?

puts e * o
