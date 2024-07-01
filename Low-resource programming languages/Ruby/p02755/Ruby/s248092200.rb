# https://atcoder.jp/contests/abc158/tasks/abc158_c


A, B = gets.split.map(&:to_i)

ai = (A / 0.08).ceil
ax = ((A + 1) / 0.08 - 1).ceil
bi = (B / 0.1).ceil
bx = ((B + 1) / 0.1 - 1).ceil

ans = ([*ai..ax] & [*bi..bx]).min || -1

puts ans
