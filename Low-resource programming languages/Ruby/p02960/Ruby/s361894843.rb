S=gets.chomp
MOD=10**9+7
dp=[0]*13
dp[0]=1
bias=1
S.size.times{|i|
  ndp=[0]*13
  13.times{|m|
    if S[i]=="?" then
      10.times{|j|
        ndp[(m*10+j)%13]+=dp[m]
      }
		else
      ndp[(m*10+S[i].to_i)%13]+=dp[m]
	  end
  }
  dp=ndp.map{|x|x%MOD}
}
p dp[5]