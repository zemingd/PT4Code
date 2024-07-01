N = gets.to_i
hs = gets.split.map(&:to_i)

INF = 1 << 60
dp = Array.new(N, INF)
dp[0] = 0

(0...N).each do |i|
  n = dp[i]
  h = hs[i]
  if i + 1 <= N - 1
    old_h = dp[i + 1]
    new_h = n + (h - hs[i + 1]).abs
    dp[i + 1] = new_h if new_h < old_h
  end
  if i + 2 <= N - 1
    old_h = dp[i + 2]
    new_h = n + (h - hs[i + 2]).abs
    dp[i + 2] = new_h if new_h < old_h
  end
end
puts dp[N - 1]
