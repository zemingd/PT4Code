N, W = gets.chomp.split(' ').map(&:to_i)
wv_list = N.times.map { gets.split(' ').map(&:to_i) }

dp = Array.new(N + 1).map { Array.new(W + 1, 0) }

(0...N).each do |i|
  iw, v = wv_list[i]
  (0..W).each do |w|
    dp[i + 1][w] =
      if w >= iw
        [
          dp[i][w - iw] + v,
          dp[i][w]
        ].max
      else
        dp[i][w]
      end
  end
end

puts dp[N][W]
