INF=1000000000
n,k=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)

dp=Array.new(1000000,INF)


dp[0]=0
dp[1]=(h[1]-h[0]).abs
for i in 2..h.length-1

dp_i=[]
for j in 1..k
    if j>i
          break
    end
 
 dp_i<<[dp[i-j]+(h[i-j]-h[i]).abs,dp[i]].min
end
dp[i]=dp_i.min
end
#p dp[0..10]
p dp[h.length-1]