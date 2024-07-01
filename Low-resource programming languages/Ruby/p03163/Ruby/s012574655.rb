n,w = gets.chomp.split.map(&:to_i)
wv_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

dp = []
(n+1).times do |i|
  dp[i] = []
  (w+1).times do |j|
    dp[i][j] = 0
  end
end

(0..n-1).each do |i|
  part_w, part_v = wv_arr[i]
  (0..w).each do |sum_w|
    if sum_w - part_w >= 0 && dp[i][sum_w - part_w] + part_v > dp[i][sum_w]
      dp[i+1][sum_w] = dp[i][sum_w - part_w] + part_v
    else
      dp[i+1][sum_w] = dp[i][sum_w]
    end
  end
end

puts dp[n][w]