n, max_w = gets.split.map(&:to_i)

dp = Array.new(n + 1){Array.new(max_w + 1, 0)}
w = 0
v = 0

(1..n).each do |i|
  w, v = gets.split.map(&:to_i)
  next if w > max_w
  (1..(max_w)).each do |sum_w|
    if sum_w >= w
      value = dp[i - 1][sum_w - w] + v
      dp[i][sum_w] = value if value > dp[i][sum_w]
    else
      dp[i][sum_w] = dp[i-1][sum_w]
    end
  end
end

puts dp[n][max_w]
