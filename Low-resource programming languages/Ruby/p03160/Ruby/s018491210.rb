n=gets.to_i
hs=gets.split.map &:to_i
dp=[0,(hs[1]-hs[0]).abs]
(n-2).times do |i|
  dp[i+2]=[dp[i]+(hs[i+2]-hs[i]).abs,dp[i+1]+(hs[i+2]-hs[i+1]).abs].min
end
p dp[n-1]