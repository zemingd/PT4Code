N = gets.to_i

dp = Array.new(N + 10)
dp[0] = 0
# 1
N.times do |i|
  dp[i + 1] = dp[i] + 1
end
N.times do |i|
  c = dp[i]
  n = 6
  while i + n <= N
    dp[i + n] = c + 1 if c + 1 < dp[i + n]
    n *= 6
  end
  n = 9
  while i + n <= N
    dp[i + n] = c + 1 if c + 1 < dp[i + n]
    n *= 9
  end
end
puts dp[N]
