n = gets.chomp.to_i
heights = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n, Float::INFINITY)
dp[0] = 0

n.times do |i|
  next if i==0

  dp[i] = dp[i-1] + (heights[i] - heights[i-1]).abs if dp[i-1] + (heights[i] - heights[i-1]).abs < dp[i]
  if i > 1
    dp[i] = dp[i-2] + (heights[i] - heights[i-2]).abs if dp[i-2] + (heights[i] - heights[i-2]).abs < dp[i]
  end
end

p dp.last