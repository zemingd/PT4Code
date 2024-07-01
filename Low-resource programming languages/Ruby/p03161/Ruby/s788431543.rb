N_MAX = 100100
INF = 10010

n, k = gets.split(' ').map(&:to_i)
hs = gets.split(' ').map(&:to_i)

h = {}
dp = {}
N_MAX.times do |i|
  h[i] = hs[i]
  dp[i] = INF
end

def min(a, b)
  a > b ? b : a
end

dp[0] = 0
(1...n).each do |i|
  k.times do |j|
    dp[i+j] = min(dp[i+j], dp[i] + (h[i] - h[i+j]).abs)
  end
end

print(dp[n-1])