n=gets.to_i
dp=[0]+[Float::INFINITY]*n
(0..n).each do |i|
    [6, 9].each do |a|
        k=1
        while i+k<=n
            t=dp[i+k]
            dp[i+k]=dp[i]+1 if t>dp[i]+1
            k*=a
        end
    end
end
puts dp[n]