n = gets.to_i
h = gets.split.map(&:to_i)
dp = Array.new(n,0)
dp[1] = (h[0]-h[1]).abs
for i in 2..n-1
    dp[i] = [dp[i-1]+(h[i]-h[i-1]).abs,dp[i-2]+(h[i]-h[i-2]).abs].min
end
puts dp[n-1]