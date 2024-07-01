n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
INF=10**9+1
list=[INF,2,5,5,4,5,6,3,7,6]
dp=["z"]*(n+1)
dp[0]=""

a.each do |c|
    s=list[c]
    0.upto(n) do |i|
        if i+s<=n and dp[i]!='z'
            if dp[i][0].to_i<=c and (c.to_s+dp[i]).to_i>dp[i+s].to_i
                dp[i+s]=c.to_s+dp[i]
            elsif 
                dp[i][0].to_i>=c and (dp[i]+c.to_s).to_i>dp[i+s].to_i
                dp[i+s]=dp[i]+c.to_s
            end
        end
    end
end
puts dp[n]
