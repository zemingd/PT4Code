N=gets.to_i
a=gets.split.map(&:to_i)
dp=[]
dp[0]=0
dp[1]=(a[0]-a[1]).abs
for i in 2..N-1
    dp[i]=[dp[i-1]+(a[i-1]-a[i]).abs,dp[i-2]+(a[i-2]-a[i]).abs].min
end
puts dp[N-1]