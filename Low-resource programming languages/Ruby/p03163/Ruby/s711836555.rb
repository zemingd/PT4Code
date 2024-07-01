N, W = gets.split.map(&:to_i)
dp = {0=>0}
max = 0
N.times do
  tmp = dp.dup
  w, v = gets.split.map(&:to_i)
  tmp.each do |ww, vv|
    next if ww + w > W
    dp[ww + w] = vv + v if dp[ww + w].to_i < vv + v
    max = dp[ww + w] if max < dp[ww + w]
  end
end
puts max
