N, W = gets.chomp.split(" ").map(&:to_i)
wv = {}
1.upto(N) do |i|
  wv[i] = gets.chomp.split(" ").map(&:to_i)
end

dp = { 0 => 0 }
max_v = 0

1.upto(N) do |i|
  dp.keys.each do |ww|
    w, v = wv[i]
    next if ww + w > W || (dp[ww + w] && dp[ww + w] >= dp[ww] + v)

    dp[ww + w] = dp[ww] + v
    max_v = dp[ww + w] if max_v < dp[ww + w]
  end
end

puts max_v
