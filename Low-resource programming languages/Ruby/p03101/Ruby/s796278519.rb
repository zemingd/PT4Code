# https://atcoder.jp/contests/abc121/tasks/abc121_a


H, W = gets.split.map(&:to_i)
h, w = gets.split.map(&:to_i)

puts (H - h) * (W - w)
