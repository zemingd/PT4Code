n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
INF = 1001001001
dp = Array.new(n, INF)
dp[0] = 0
(n-1).times{|i_|
  i = i_ + 1
  c1 = i>0 ? dp[i-1]+(h[i]-h[i-1]).abs : INF
  c2 = i>1 ? dp[i-2]+(h[i]-h[i-2]).abs : INF
  dp[i] = [c1, c2].min
}
p dp[n-1]
