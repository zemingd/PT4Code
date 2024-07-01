MOD=10**9+7
s=gets.chomp.chars.reverse
slen = s.size

dp=Array.new(slen+1){Array.new(13, 0)}
dp[0][0] = 1
slen.times do |i|
  kakeru = (10**i) % 13
  if s[i] != "?"
    t = (s[i].to_i * kakeru) % 13
    13.times do |j|
      dp[i+1][(j+t)%13] = (dp[i+1][(j+t)%13] + dp[i][j]) % MOD
    end
  else
    10.times do |n|
      t = (n * kakeru) % 13
      13.times do |j|
        dp[i+1][(j+t)%13] = (dp[i+1][(j+t)%13] + dp[i][j]) % MOD
      end
    end
  end
end

p dp[slen][5]