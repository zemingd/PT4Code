def len(x)
    res=0
    while x>0
        x/=2
        res+=1
    end
    return res
end
def stand(ar,bit) 
    res=0
    (ar.size).times do |i|
        res+=1 if ar[i][bit]==1
    end
    return res
end
N,K=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
L=len(K)
dp=Array.new(64){Array.new(2,-Float::INFINITY)}
dp[0][0]=0
63.times do |i|
    st=stand(as,62-i)
    p [st,N-st,1<<(62-i)]
    if K[62-i]==0
        dp[i+1][0]=dp[i][0]+st*(1<<(62-i))
    else
        dp[i+1][0]=dp[i][0]+(N-st)*(1<<(62-i))
        dp[i+1][1]=dp[i][0]+st*(1<<(62-i))
    end
    jd=dp[i][1]+st*(1<<(62-i))
    dp[i+1][1]=dp[i+1][1]<jd ? jd : dp[i+1][1]
end
# pp dp
puts dp[63].max