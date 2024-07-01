S = gets.chomp
N = S.size
MOD = 10**9+7

dp = Array.new(N+1){Array.new(13, 0)}
dp[0][0] = 1
N.times do |i|
    if S[i] == '?'
        10.times do |j|
            13.times do |k|
                dp[i+1][(10*k+j)%13] += dp[i][k]
            end
        end
    else
        j = S[i].to_i
        13.times do |k|
            dp[i+1][(10*k+j)%13] += dp[i][k]
        end
    end
    13.times do |k|
        dp[i+1][k] -= MOD while dp[i+1][k] >= MOD
    end
end
puts dp[N][5]