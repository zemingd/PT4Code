N, W = gets.split.map(&:to_i)
wv_list = N.times.map { gets.split.map(&:to_i) }
dp = Array.new(N + 10)
dp.size.times do |i|
  dp[i] = Hash.new { 0 }
end
(0...N).each do |i|
  w, v = wv_list[i]
  (0..W).each do |j|
    dp[i + 1][j] =
      if j < w
        dp[i][j]
      else
        [
          dp[i][j],
          dp[i][j - w] + v
        ].max
      end
  end
end
puts dp[N][W]
