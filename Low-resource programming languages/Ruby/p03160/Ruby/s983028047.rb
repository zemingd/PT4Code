n = gets.to_i
h = gets.split.map(&:to_i)
dp = [0]
n.times do |idx|
  break if h[idx+1].nil?
  dp[idx+1] = dp[idx+1].nil? ? dp[idx] + (h[idx+1] - h[idx]).abs : [dp[idx+1], dp[idx] + (h[idx+1] - h[idx]).abs].min

  next if h[idx+2].nil?
  dp[idx+2] = dp[idx+2].nil? ? dp[idx] + (h[idx+2] - h[idx]).abs : [dp[idx+2], dp[idx] + (h[idx+2] - h[idx]).abs].min
end
puts dp[n-1]
