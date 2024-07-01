N, W = gets.split.map(&:to_i)
dp = {0=>0}
N.times do
  tmp = dp.dup
  w, v = gets.split.map(&:to_i)
  tmp.each do |ww, vv|
    next if ww + w > W
    dp[ww + w] = vv + v if dp[ww + w].to_i < vv + v
  end
end
p dp.sort_by{|k,v| v}.last.last
