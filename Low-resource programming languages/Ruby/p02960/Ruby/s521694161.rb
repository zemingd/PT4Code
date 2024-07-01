S=gets.chomp
MOD=10**9+7
dp=[0]*13
dp[0]=1
bias=1
(S.size-1).downto(0){|i|
  ndp=[0]*13
  13.times{|m|
    if S[i]=="?" then
      10.times{|j|
        ndp[(m+j*bias)%13]+=dp[m]
      }
		else
      ndp[(m+(S[i].to_i)*bias)%13]+=dp[m]
	  end
  }
  dp=ndp.map{|x|x%MOD}
  p dp
  bias*=10
  if bias.abs>999 then bias*=-1/1000 end
}
p dp[5]