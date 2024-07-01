MOD=10**9+7
s=gets.chomp.chars.reverse
slen = s.size

#s=("?"*(10**5)).chars
#slen = s.size


dp1 = Array.new(13, 0)
dp2 = Array.new(13, 0)

dp1[0] = 1
kakeru = 1
slen.times do |i|
  kakeru = (kakeru*10) % 13 if i != 0
  if s[i] == "?"
    10.times do |n|
      t = (n * kakeru) % 13
      13.times do |j|
        dp2[(j+t) % 13] += dp1[j]
      end
    end
  else
    t = (s[i].to_i * kakeru) % 13
    13.times do |j|
      dp2[(j+t) % 13] += dp1[j] 
    end
  end
  13.times do |i|
    dp1[i] = dp2[i] % MOD
    dp2[i] = 0
  end
end
p dp1[5]

=begin
dp=Array.new(slen+1){Array.new(13, 0)}
dp[0][0] = 1
kakeru=1
slen.times do |i|
  kakeru = (kakeru*10) % 13 if i != 0
  if s[i] != "?"
    t = (s[i].to_i * kakeru) % 13
    13.times do |j|
      nj = (j+t)%13
      dp[i+1][nj] = (dp[i+1][nj] + dp[i][j]) % MOD
    end
  else
    10.times do |n|
      t = (n * kakeru) % 13
      13.times do |j|
        nj = (j+t)%13
        dp[i+1][nj] = (dp[i+1][nj] + dp[i][j]) % MOD
      end
    end
  end
end

p dp[slen][5]
=end