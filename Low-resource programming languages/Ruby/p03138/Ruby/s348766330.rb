n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
dp = Array.new(2).map{Array.new(45).map{Array.new(2,0)}}
43.downto(0) do |i|
    p = [0,0]
    a.each do |num|
        p[(num>>i)&1] += (1<<i)
    end
    if ((k>>i)&1) == 0
        dp[1][i][0] = dp[1][i+1].max+p[1]
        if dp[0][i+1].inject(:+) > 0
            dp[0][i][0] = dp[0][i][1] = dp[0][i+1].max
            dp[0][i][0] += p[1]
            dp[0][i][1] += p[0]
        end
    else
        dp[1][i][1] = dp[1][i+1].max+p[0]
        if dp[0][i+1].inject(:+) > 0
            dp[0][i][0] = dp[0][i][1] = dp[0][i+1].max
            dp[0][i][0] = [dp[0][i][0],dp[1][i+1].max].max+p[1]
            dp[0][i][1] += p[0]
        else
            dp[0][i][0] = p[1]
        end
    end
end
puts [dp[0][0].max,dp[1][0].max].max