n = gets.to_i
h = gets.split.map(&:to_i)
dp = Array.new(n,0)
dp[1] = (h[0]-h[1]).abs
(2...n).each do |i|
    a = dp[i-1]+(h[i]-h[i-1]).abs
    b = dp[i-2]+(h[i]-h[i-2]).abs
    dp[i] = (a < b ? a : b)
end
puts dp[n-1]