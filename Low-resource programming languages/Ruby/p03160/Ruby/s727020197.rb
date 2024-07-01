n = gets.chop.to_i
h = gets.chop.split.map(&:to_i)


dp = [10**4]*(n)


dp[0] = 0

dp[1] = dp[0] + (h[1]-h[0]).abs

2.upto(n-1) do|i|
  dp[i] = [dp[i-2] + (h[i]-h[i-2]).abs, dp[i-1] + (h[i]-h[i-1]).abs].min
end

p dp[n-1]