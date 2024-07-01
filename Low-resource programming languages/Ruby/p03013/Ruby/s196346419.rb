n,k=gets.split.map(&:to_i)
dp=[1]*n
dp[0]=1
k.times{dp[gets.to_i-1]=0}

1.upto(n-1) do |i|
    next if dp[i]==0
    b = dp[i-1]
    bb= dp[i-2]

    dp[i]=(b+bb)%(10**9+7)
end

p dp[n-1]%(10**9+7)