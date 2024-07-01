# https://atcoder.jp/contests/abc153/tasks/abc153_c



N, K = gets.split.map(&:to_i)
Hs = gets.split.map(&:to_i).sort

ans = 0
(0...(N - K)).each do |i|
  ans += Hs[i]
end
puts ans
