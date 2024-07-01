N,K=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)
dp=[]
dp[0]=0
for i in 1..N-1
    for j in 1..K
        if i<K
            break
        end
        a=dp[i-K]+(a[i-K]-a[i]).abs
        dp[i]=(dp[i]>a ? a : dp[i])
    end
end
puts dp[N-1]