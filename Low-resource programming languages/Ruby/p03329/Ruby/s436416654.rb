N = gets.to_i
dp = Array.new(N + 10, 1 << 60)
dp[0] = 0
(0...N).each do |n|
  dp[n + 1] = dp[n] + 1 if dp[n] + 1 < dp[n + 1]
  c = 1
  while n + 6 ** c <= N
    if dp[n] + 1 < dp[n + 6 ** c]
      dp[n + 6 ** c] = dp[n] + 1
    end
    c += 1
  end
  c = 1
  while n + 9 ** c <= N
    if dp[n] + 1 < dp[n + 9 ** c]
      dp[n + 9 ** c] = dp[n] + 1
    end
    c += 1
  end
end
puts dp[N]
