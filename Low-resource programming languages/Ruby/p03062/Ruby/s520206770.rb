N = gets.to_i
a_list = gets.split.map(&:to_i)
MIN = -(10 << 60)
dp = Array.new(N + 10)
dp[0] = [0, MIN]
(0...N).each do |i|
  a = a_list[i]
  dp[i + 1] = Array.new(2)
  dp[i + 1][0] = [
    dp[i][0] + a,
    dp[i][1] + (-a)
  ].max
  dp[i + 1][1] = [
    dp[i][0] + (-a),
    dp[i][1] + a
  ].max
end
puts dp[N][0]
