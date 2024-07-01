n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = []
dp[0] = 0

for i in 1...n do
  dp[i] = dp[i-1] + (h[i] - h[i-1]).abs
  for j in 2..k do
    break if i-j < 0
    dp[i] = [dp[i], dp[i-j] + (h[i] - h[i-j]).abs].min
  end
end

puts dp[n-1]
