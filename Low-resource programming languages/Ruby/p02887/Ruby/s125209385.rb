# https://atcoder.jp/contests/abc143/tasks/abc143_c

N = gets.to_i
S = gets.chomp

puts S.chars.chunk(&:itself).count