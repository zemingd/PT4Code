N, W = gets.chomp.split.map(&:to_i)
weight = []
value = []
N.times do |i|
  weight[i], value[i] = gets.chomp.split.map(&:to_i)
end

def max(a, b)
  a > b ? a : b
end

dp = Array.new(N+1).map { Array.new(W+1, 0) }
0.upto(N-1) do |i|
  0.upto(W) do |w|
    dp[i+1][w] = max(dp[i+1][w], dp[i][w])
    dp[i+1][w] = max(dp[i+1][w], dp[i][w - weight[i]] + value[i]) if w >= weight[i]
  end
end

print(dp.flatten.max)