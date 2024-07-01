s = gets.chomp.split('')
mod = 1000000007
len = s.count
dp = Array.new(len + 1) { Array.new(13, 0) }
dp[0][0] = 1
(0...len).each do |i|
  c = s[i]
  (0...10).each do |j|
    next if c != '?' && c != j.to_s
    (0...13).each do |k|
      dp[i + 1][(k * 10 + j) % 13] += dp[i][k]
    end
  end
  (0...13).each do |j|
    dp[i + 1][j] %= mod
  end
end
puts dp.last[5]