N = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

dp = Array.new(N, 10**10)

dp[0] = 0
dp[1] = (h[1] - h[0]).abs

def min(a,b)
  a < b ? a : b
end

2.upto(N-1) do |i|
  a = (h[i] - h[i-2]).abs + dp[i-2]
  b = (h[i] - h[i-1]).abs + dp[i-1]
  dp[i] = min(a, b)
end

p dp.last
