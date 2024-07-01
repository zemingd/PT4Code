n,w_max = gets.split.map(&:to_i)
weight,value = n.times.map{gets.split.map(&:to_i)}.transpose

dp=Array.new(n){ Array.new(w_max+1,0) }
for i in 0..weight[0]-1
  dp[0][i]=0
end
for i in weight[0]..w_max
  dp[0][i]=value[0]
end

for i in 1...n
  for j in 1..w_max
    dp[i][j] = [dp[i-1][j-weight[i]] + value[i],dp[i-1][j]].max if j-weight[i]>=0
    dp[i][j] = dp[i-1][j] if j-weight[i]<0
  end
end
puts dp[n-1][w_max]
