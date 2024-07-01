n = gets.to_i
height = gets.split.map(&:to_i)
dp = []
for i in 0..(n-1)
  dp[i] = 100
end
dp[0] = 0
dp[1] = (height[1] - height[0]).abs

for i in 2..(n-1)
  dp[i] = [dp[i-1]+(height[i]-height[i-1]).abs,dp[i-2]+(height[i]-height[i-2]).abs].min
end

puts dp[n-1]