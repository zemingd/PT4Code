N = gets.to_i
H = gets.split(" ").map(&:to_i)
dp = []
(10 ** 5).times{|i|
    dp[i] = 10**9
}
dp[0] = 0
dp[1] = (H[0] - H[1]).abs
(2...N).each{|i|
    dp[i] = dp[i] > dp[i-1] + (H[i-1] - H[i]).abs ? dp[i-1] + (H[i-1] - H[i]).abs : dp[i]
    dp[i] = dp[i] > dp[i-2] + (H[i-2] - H[i]).abs ? dp[i-2] + (H[i-2] - H[i]).abs : dp[i]
}
puts dp[N-1]