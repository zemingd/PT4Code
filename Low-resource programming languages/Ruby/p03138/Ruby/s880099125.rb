N,K=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
dp=Array.new(64){Array.new(2,-Float::INFINITY)}
dp[0][0]=0
63.times do |i|
    st=0
    as.each do |e|
        st+=1 if (e & 1<<(62-i)) != 0
    end
    # p [st,N-st,1<<(62-i)]
    if K[62-i]==0
        dp[i+1][0]=dp[i][0]+st*(1<<(62-i))
    else
        dp[i+1][0]=dp[i][0]+(N-st)*(1<<(62-i))
        dp[i+1][1]=dp[i][0]+st*(1<<(62-i))
    end
    jd=dp[i][1]+[N-st,st].max*(1<<(62-i))
    dp[i+1][1]=dp[i+1][1]<jd ? jd : dp[i+1][1]
end
# pp dp
puts dp[63].max