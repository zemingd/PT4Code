INF=100000000
n=gets.to_i
h=gets.split.map(&:to_i)

dp=Array.new(100010,INF)

dp[1]=(h[1]-h[0]).abs
dp[0]=0
for i in 0..h.length-3
dp[i+2]=[dp[i+1]+(h[i+2]-h[i+1]).abs,dp[i]+(h[i+2]-h[i]).abs].min
end
#p dp[0..10]
p dp[h.length-1]