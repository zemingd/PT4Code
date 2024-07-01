N, K = gets.split.map(&:to_i)
h_list = gets.split.map(&:to_i)
INF = 2 << 60
dp = Array.new(N + 10) { INF }
dp[0] = 0
(N - 1).times do |i|
  (1..K).each do |k|
    dp[i + k] = [
      dp[i + k],
      dp[i] + (h_list[i] - h_list[i + k]).abs
    ].min if i + k < N
  end
end
puts dp[N - 1]
