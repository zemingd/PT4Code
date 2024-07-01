n, W = gets.split.map(&:to_i)
dp = Array.new(W + 1, -1)
dp[0] = 0
n.times do |i|
  w, v = gets.split.map(&:to_i)
  (W - w).downto(0) do |i|
    next if dp[i] < 0
    dp[i + w] = dp[i] + v if dp[i + w] < dp[i] + v
  end
end
p dp.max
