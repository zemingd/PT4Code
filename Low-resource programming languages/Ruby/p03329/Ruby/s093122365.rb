N = gets.to_i
dp = Array.new(N+1, N)
dp[0] = 0
(0...N).each do |n|
    dp[n+1] = [dp[n] + 1, dp[n+1]].min
    s = 1
    while n+s*6<=N
        s *= 6
        dp[n+s] = [dp[n] + 1, dp[n+s]].min
    end
    s = 1
    while n+s*9<=N
        s *= 9
        dp[n+s] = [dp[n] + 1, dp[n+s]].min
    end
end
p dp[N]
