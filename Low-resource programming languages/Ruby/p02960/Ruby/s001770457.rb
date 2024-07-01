MOD=10**9+7
s=gets.chomp.split("").reverse
dp=Array.new(s.size+1).map{Array.new(13,0)}
dp[0][0] = 1
s.each_with_index do |c,i|
  if c == '?'
    0.upto(9) do |k|
      m = k.to_i * 10**i % 13
      0.upto(12) do |j|
        mm = (j + m) % 13
        dp[i+1][mm] += dp[i][j]
        dp[i+1][mm] %= MOD
      end
    end

  else
    m = c.to_i * 10**i % 13
    0.upto(12) do |j|
      mm = (j + m) % 13
      dp[i+1][mm] += dp[i][j]
      dp[i+1][mm] %= MOD
    end
  end
end
p dp[s.size][5]