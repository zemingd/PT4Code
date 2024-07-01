N, W = gets.split(" ").map(&:to_i)
w = []
v = []
N.times{|i|
    w[i], v[i] = gets.split(" ").map(&:to_i)
}
dp = Array.new(N).map{Array.new(W+1,0)}
(0...N).each{|i|
    (0..W).each{|j|
        if j >= w[i]
            dp[i][j] = [dp[i-1][j-w[i]] + v[i], dp[i-1][j]].max
        else
            dp[i][j] = dp[i-1][j]
        end
    }
}
puts dp[N-1][W]