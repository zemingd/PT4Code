W,H,n = gets.split.map(&:to_i)
dp = [nil, 0, W, 0, H]
n.times do 
  x,y,a = gets.split.map(&:to_i)
  dp[1] = x if x > dp[1] && a == 1
  dp[2] = x if x < dp[2] && a == 2
  dp[3] = y if y > dp[3] && a == 3
  dp[4] = y if y < dp[4] && a == 4
end
  
puts [dp[2] - dp[1], 0].max * [dp[4] - dp[3], 0].max
