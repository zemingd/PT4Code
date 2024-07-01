MOD = 10 ** 9 + 7
S = gets.chomp
dp = Array.new(S.size + 1) { Array.new(13,0) }

dp[0][0] = 1

for i in (0 ... S.size)
  c = -1
  c = S[i].to_i if S[i] != '?'

  for j in (0 .. 9)
    next unless c == -1 || c == j
    for k in (0 .. 12)
      k_ = (k * 10 + j) % 13
      dp[i + 1][k_] = (dp[i + 1][k_] + dp[i][k]) % MOD
    end
  end
end
puts dp[S.size][5] % MOD
