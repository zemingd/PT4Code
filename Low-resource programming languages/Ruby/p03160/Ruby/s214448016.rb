N = gets.to_i
h_list = gets.split.map(&:to_i)
INF = 2 << 60
dp = Array.new(N + 10) { INF }
dp[0] = 0
(N - 1).times do |i|
  dp[i + 1] = [
    dp[i + 1],
    dp[i] + (h_list[i] - h_list[i + 1]).abs
  ].min
  dp[i + 2] = [
    dp[i + 2],
    dp[i] + (h_list[i] - h_list[i + 2]).abs
  ].min if i + 2 < N
end
puts dp[N - 1]
