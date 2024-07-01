N, W = gets.split.map(&:to_i)
# dp = Array.new(N+1){Array.new(W+1, 0)}
dp = Array.new(W+1, 0)
lists = []
N.times do |i|
  lists << gets.split.map(&:to_i)
end
# lists.sort_by!{|x|x[0]}
1.upto(N) do |i|
  noww = lists[i-1][0]
  nowv = lists[i-1][1]
  # lists[i-1][0].upto(W) do |j|
  W.downto(noww) do |j|
      # dp[i][j] = [dp[i-1][j], dp[i-1][j - lists[i-1][0]] + lists[i-1][1]].max
    dp[j] = dp[j - noww] + nowv if dp[j] < dp[j - noww] + nowv
  end
end
# p dp
puts dp.max