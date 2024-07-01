MOD = 10 ** 9 + 7
S = gets.chomp
dp = Array.new(S.size + 1) { Array.new(13,0) }

dp[0][0] = 1

for i in S.size.times
  c = -1
  c = S[i].to_i if S[i] != '?'
  
  if c >= 0
    for j in 10.times
      for k in 13.times
        dp[i + 1][(k * 10 + j) % 13] += dp[i][k]
      end
    end
  else
    for k in 13.times
      dp[i + 1][(k * 10 + c) % 13] += dp[i][k]
    end
  end
  
  for k in 13.times
    dp[i + 1][k] %= MOD
  end
end
puts dp[S.size][5]
