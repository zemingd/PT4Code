N,K=gets.chomp.split.map(&:to_i)
h=gets.chomp.split.map(&:to_i)
dp=[]
dp[0]=0
for i in 1...N
  dp[i]=dp[i-1]+(h[i]-h[i-1]).abs
  for j in [i-K,0].max..i-2
    dp[i]=[dp[i],dp[j]+(h[i]-h[j]).abs].min
  end
end
puts dp[N-1]
