# require 'pry'
N, W = gets.split.map(&:to_i)
dp = Array.new(N+1){Array.new(W+1, 0)}
lists = []
N.times do |i|
  lists << gets.split.map(&:to_i)
end
1.upto(N) do |i|
  lists[i-1][0].upto(W) do |j|
      # dp[i][j] = [dp[i-1][j], dp[i-1][j - lists[i-1][0]] + lists[i-1][1]].max
      dp[i][j] = dp[i-1][j] < dp[i-1][j - lists[i-1][0]] + lists[i-1][1] ? dp[i-1][j - lists[i-1][0]] + lists[i-1][1] : dp[i-1][j]
  end
  dp[i][0,lists[i-1][0]] = dp[i-1][0,lists[i-1][0]]
end
# p dp
puts dp[N].max
