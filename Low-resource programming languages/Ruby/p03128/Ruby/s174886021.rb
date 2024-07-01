n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
INF=10**9+1
list=[INF,2,5,5,4,5,6,3,7,6]
dp=["z"]*(n+1)
dp[0]=""

a.each do |c|
    s=list[c]
    sc=c.to_s
    0.upto(n-s) do |i|
        if dp[i]!='z'
            if dp[i][0].to_i<=c and (sc+dp[i]).to_i>dp[i+s].to_i
                dp[i+s]=sc+dp[i]
            elsif 
                dp[i][0].to_i>=c and (dp[i]+sc).to_i>dp[i+s].to_i
                dp[i+s]=dp[i]+sc
            end
        end
    end
end
puts dp[n]
