n,w_max = gets.split.map(&:to_i)
weight,value = n.times.map{gets.split.map(&:to_i)}.transpose

dp=[0] * w_max
for i in 0..weight[0]-1
  dp[i]=0
end
for i in weight[0]..w_max
  dp[i]=value[0]
end

for i in 1...n
  pre_dp = dp.clone
  for j in 1..w_max
    if j-weight[i]>=0
      dp[j] = pre_dp[j-weight[i]] + value[i]
      dp[j] = pre_dp[j] if dp[j]<pre_dp[j]
    end
  end
end
puts dp.last
