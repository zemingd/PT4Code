# 153716888
MOD = (10**9) + 7
s = gets.chomp
l = s.size
m = 13
dp = Array.new(l+1) { Array.new(13) {0} }
dp[0][0] = 1
dma = [1, 10, 9, 12, 3, 4]
hatena = '?'
l.times do |i|
  b = dma[(l-1-i)%6]
  if s[i] == hatena
    10.times do |k|
      m.times do |j|
        dp[i+1][j] = (dp[i+1][j] + dp[i][(j+k*b)%m])%MOD
      end
    end
  else
    k = s[i].to_i
    m.times do |j|
      dp[i+1][j] = dp[i][(j+k*b)%m]%MOD
    end
  end
end
p dp[l][8]