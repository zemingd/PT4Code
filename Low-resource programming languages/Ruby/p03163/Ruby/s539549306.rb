INF=1000000
n,wmax=gets.split.map(&:to_i)
bags=[]
dp=Array.new(110){[0]*16}

n.times.each do
    bags<<gets.split.map(&:to_i)
end

for i in 0..n-1
    wi,vi=bags[i]
    for w in 0..wmax
        if w-wi>=0
        dp[i+1][w]=[dp[i][w-wi]+vi,dp[i+1][w],dp[i][w]].max
        else
        dp[i+1][w]=[dp[i][w],dp[i+1][w]].max
        end
    end
end
#p dp[0..10]
p dp[n].max