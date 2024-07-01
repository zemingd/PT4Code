N,W=gets.split.map(&:to_i)
h=N.times.map{gets.split.map(&:to_i)}.transpose
inf = 10.0/0
dp=Array.new(N){Array.new(W+1,0)}
for i in 0..N-1#howmany
    for j in 0..W#how heavy
        b=dp[i-1][j-h[0][i]]+h[1][i]
        if j-h[0][i]<0
            dp[i][j]=dp[i-1][j]
        elsif  b > dp[i-1][j]
            dp[i][j]=b
        else  
            dp[i][j]=dp[i-1][j]
        end
    end
end
puts dp[N-1][W]