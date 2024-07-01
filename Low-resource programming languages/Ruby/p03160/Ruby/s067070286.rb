n = gets.to_i
h = gets.split.map(&:to_i)
INF = 1001001001
dp = Array.new(n, INF)
dp[0] = 0
(n-1).times{|i|
  c1 = i>-1 ? dp[i]+(h[i+1]-h[i]).abs : INF
  c2 = i>0 ? dp[i-1]+(h[i+1]-h[i-1]).abs : INF
  dp[i+1] = [c1, c2].min
}
p dp[n-1]
