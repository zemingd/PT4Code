MOD = 10 ** 9 + 7
N, M = gets.split.map(&:to_i)
A = M.times.map { gets.to_i }

danger = Array.new(N + 10, false)
A.each do |a|
  danger[a] = true
end
dp = Array.new(N + 10, 0)
dp[0] = 1

0.upto(N - 1) do |i|
  next if danger[i]

  if !danger[i + 1]
    dp[i + 1] = (dp[i + 1] + dp[i]) % MOD
  end

  if !danger[i + 2]
    dp[i + 2] = (dp[i + 2] + dp[i]) % MOD
  end
end

puts dp[N] % MOD
