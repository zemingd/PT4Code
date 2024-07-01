S=gets.chomp
MOD=10**9+7
dp=Array.new(S.size+1).map{[0]*13}
dp[0][0]=1
S.size.times{|i|
  13.times{|m|
    if S[i]=="?" then
      10.times{|j|
        dp[i+1][(m*10+j)%13]+=dp[i][m]
      }
		else
      dp[i+1][(m*10+S[i].to_i)%13]+=dp[i][m]
	  end
  }
  13.times{|j|dp[i+1][j]%=MOD}
}
p dp[S.size][5]