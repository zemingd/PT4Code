N,K=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)
c=10.0/0
dp=Array.new(N,c)
dp[0]=0
for i in 1..N-1
    for j in 1..K
        a=dp[i]+(h[i+j]-h[i]).abs
        dp[i+j]=(dp[i+j]>a ? a : dp[i])
    end
end
puts dp[N-1]