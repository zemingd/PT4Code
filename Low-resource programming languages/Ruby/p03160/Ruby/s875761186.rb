n = gets.to_i
h = gets.split.map(&:to_i)
INF = 1001001001
dp = Array.new(n)
n.times{|j| dp[j] = Array.new(n, INF) }
dp[0][0] = 0
(n-1).times{|i|
  n.times{|j|
    c0 = dp[i][j]
    c1 = j>0 ? dp[i][j-1]+(h[j]-h[j-1]).abs : INF
    c2 = j>1 ? dp[i][j-2]+(h[j]-h[j-2]).abs : INF
    dp[i+1][j] = [c0, c1, c2].min
  }
}
p dp[n-1][n-1]

