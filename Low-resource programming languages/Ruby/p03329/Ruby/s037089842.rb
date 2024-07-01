N = gets.to_i
MAX = 10 << 60
dp = Array.new(N + 1000) { MAX }
dp[0] = 0
(0...N).each do |i|
  next unless dp[i]
  dp[i + 1] = dp[i] + 1 if dp[i] + 1 < dp[i + 1]
  a = 6
  while i + a <= N
    dp[i + a] = dp[i] + 1 if dp[i] + 1 < dp[i + a]
    a *= 6
  end
  a = 9
  while i + a <= N
    dp[i + a] = dp[i] + 1 if dp[i] + 1 < dp[i + a]
    a *= 9
  end
end
puts dp[N]
