N = gets.to_i
a = gets.split(' ').map(&:to_i)
dp = []
dp[0] = 0
dp[1] = (a[0] - a[1]).abs
(2..N-1).each do |n|
  dp[n] = [dp[n-1] + (a[n] - a[n-1]).abs, dp[n-2] + (a[n] - a[n-2]).abs].min
end
p dp[N-1]