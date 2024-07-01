N ,W = gets.split.map{|i| i.to_i}
w = Array.new(N)
v = Array.new(N)
for i in 0 .. N - 1
    w[i] , v[i] = gets.split.map{|i| i.to_i}
end

dp = Array.new(N + 1).map{Array.new(W + 1)}
dp[0].fill(0)

for i in 0 .. N - 1
    for j in 0 .. W
        dp[i + 1][j] = dp[i][j]
        if j - w[i] >= 0
            if dp[i + 1][j] < dp[i][j - w[i]] + v[i]
                dp[i + 1][j] = dp[i][j - w[i]] + v[i]
            end
        end
    end
end

puts dp[N][W]