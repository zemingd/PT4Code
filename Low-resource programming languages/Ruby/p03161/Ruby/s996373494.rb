INF=1000000000
n,k=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)

dp=Array.new(100010,INF)


dp[0]=0

for i in 1..h.length-1


for j in 1..k
 dp[i]=[dp[i-j]+(h[i-j]-h[i]).abs,dp[i]].min
end

end
#p dp[0..10]
p dp[h.length-1]