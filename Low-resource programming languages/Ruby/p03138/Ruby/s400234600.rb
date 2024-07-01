N,K=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
len=0
k=K
if k==0
    puts as.inject(&:+)
    exit
end
while(k>0)
    len+=1
    k/=2
end
dp=Array.new(len+1){Array.new(2,0)}
len.times do |i|
    stand=0
    N.times do |j|
        stand+=1 if as[j][len-i-1]==1
    end
    if K[len-i-1]==0
        dp[i+1][0]=dp[i][0]+(1<<(N-i-1))*stand
    else
        dp[i+1][0]=dp[i][0]+(1<<(N-i-1))*[stand,N-stand].max
        dp[i+1][1]=[dp[i][0],dp[i][1]].max + (1<<(N-i-1))*[stand,N-stand].max
    end
end
pp dp
puts [dp[len][0],dp[len][1]].max