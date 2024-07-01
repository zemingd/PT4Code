S=gets.chomp
N=S.size
MOD=10**9+7
dp=Array.new(N+1){Array.new(13,0)}
dp[0][0]=1
1.upto(N) do |i|
  if S[i-1]=="?"
    for j in 0..12
      for k in 0..9
        dp[i][(j*10+k)%13]+=dp[i-1][j]
        dp[i][(j*10+k)%13] %= MOD
      end
    end
  else
    for j in 0..12
      dp[i][(j*10+(S[i-1].to_i))%13]+=dp[i-1][j]
      dp[i][(j*10+(S[i-1].to_i))%13]%=MOD
    end
  end
end
puts dp[N][5]
