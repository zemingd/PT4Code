### INPUT
# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
### SNIPPET
# [].all?(&:even?)
# a = [*1..m].repeated_combination(n).to_a
# 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
# 3.upto(6) do |i|, 6.downto(3) do |i|
# 公約数125.gcd(100)、公倍数125.lcm(100)
# PI = Math::PI
# 高さh = a * Math.sin(w / 180.0 * Math::PI)
# 底辺 = a * Math.cos(w / 180.0 * Math::PI)
INF = Float::INFINITY
### DP
def chmin(a, b) a < b ? a : b end
# def chmax(a, b) a > b ? a : b end


n = gets.to_i
h = gets.split.map(&:to_i)

h.unshift(0)
dp = [INF] * (n+1)


dp[1] = 0

1.upto(n-1) do |i|
  dp[i+1] = chmin(dp[i+1], dp[i] + (h[i+1] - h[i]).abs)
  dp[i+1] = chmin(dp[i+1], dp[i-1] + (h[i+1] - h[i-1]).abs) if i >= 1
end


puts dp[n]