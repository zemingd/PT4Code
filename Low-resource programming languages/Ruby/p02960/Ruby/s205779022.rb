S=gets.chomp
N=S.size
MOD=10**9+7
dp_next=Array.new(13,0)
dp=Array.new(13,0)
dp[0]=1
N.times do |i|
  if S[i-1]=="?"
    for j in 0..12
      for k in 0..9
        dp_next[(j*10+k)%13]+=dp[j]
        dp_next[(j*10+k)%13]%=MOD
      end
    end
  else
    num=S[i].to_i
    for j in 0..12
      dp_next[(j*10+num)%13]+=dp[j]
      dp_next[(j*10+num)%13]%=MOD
    end
  end
  dp=dp_next.clone
  dp_next=Array.new(13,0)
end
puts dp[5]
