# https://atcoder.jp/contests/abc167/tasks/abc167_b

A, B, C, k = gets.split.map(&:to_i)

ans = 0
k -= (a = [A, k].min)
ans += a * 1
k -= (b = [B, k].min)
ans += b * 0
k -= (c = [C, k].min)
ans += c * -1
puts ans
