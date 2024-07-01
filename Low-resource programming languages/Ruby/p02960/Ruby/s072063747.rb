require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
s = gets.chomp
size = s.size
dp = Array.new(13, 0)
dp[0] = 1

s.size.times do |i|
  dp2= Array.new(13, 0)
  if s[i] != '?'
    si = s[i].to_i
    13.times do |j|
      dp2[(j*10 + si)%13] += dp[j]
    end
  else
    13.times do |j|
      dpj = dp[j]
      10.times do |k|
        dp2[(j*10 + k)%13] += dpj
      end
    end
    13.times do |j|
      dp2[j] %= MOD #=
    end
  end
  dp=dp2
#  p "----"; dp.each{|line| p line}
end

puts dp[5] % MOD