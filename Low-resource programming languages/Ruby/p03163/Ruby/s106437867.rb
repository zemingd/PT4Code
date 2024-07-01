N,M = gets.split.map &:to_i
W,V = Array.new(N){gets.split.map &:to_i}.transpose
DP = Array.new(N+1){Array.new(M+1, 0)}

N.times do |i|
    0.upto(M) do |j|
        if j >= W[i]
            a = DP[i][j - W[i]] + V[i]
            b = DP[i][j]
            DP[i+1][j] = a > b ? a : b
        else
            DP[i+1][j] = DP[i][j]
        end
    end
end

p DP[N][M]