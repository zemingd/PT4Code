n,k=gets.chomp.split.map(&:to_i)
h=gets.chomp.split.map(&:to_i)
dp=[]
dp[0]=0
for i in 1...n
  dp[i]=dp[i-1]+(h[i]-h[i-1]).abs
  for j in [i-k,0].max..i-2
    cost = dp[j]+(h[i]-h[j]).abs
    dp[i] = cost if dp[i] > cost
  end
end
puts dp[n-1]
