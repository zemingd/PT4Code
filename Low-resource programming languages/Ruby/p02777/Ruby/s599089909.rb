# https://atcoder.jp/contests/abc154/tasks/abc154_a


S, T = gets.chomp.split
A, B = gets.split.map(&:to_i)
U = gets.chomp

puts (U == S ? [A - 1, B] : [A, B - 1]).join(' ')
