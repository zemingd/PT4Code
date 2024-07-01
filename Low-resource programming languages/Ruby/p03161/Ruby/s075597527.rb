n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = []
dp[0] = 0
dp[1] = (hs[0] - hs[1]).abs
(2..n-1).each do |i|
  val = 10**20
  (1..[k,i].min).each do |k|
    val = [val, dp[i-k] + (hs[i-k] - hs[i]).abs].min
  end
  dp[i] = val
end
puts dp[n-1]
