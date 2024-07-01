N, M = gets.split.map(&:to_i)

a = M.times.map {
  gets.to_i
}

dp = [0] * N
dp[1] = a.include?(1) ? 0 : 1
dp[2] = a.include?(2) ? 0 : dp[1] + 1

3.upto(N) do |i|
  p i
  next if a.include?(i)

  x = dp[i - 2]
  y = dp[i - 1]

  dp[i] = x + y
end

puts dp[N] % 1_000_000_007