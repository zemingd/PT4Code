n = gets.to_i
h = gets.split.map(&:to_i)

dp = []
dp[0] = 0
dp[1] = (h[0] - h[1]).abs

2.upto(n-1) { |i|
  dp[i] = [dp[i-1] + (h[i] - h[i-1]).abs, dp[i-2] + (h[i] - h[i-2]).abs].min
}

puts dp[n-1]
