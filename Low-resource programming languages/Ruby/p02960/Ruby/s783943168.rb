require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
s = gets.chomp.split(//)

dp = Array.new(13, 0)
dp[0] = 1
s.size.times do |i|
  dp2= Array.new(13, 0)
  si = s[i].to_i
  13.times do |j|
    if s[i] != '?'
      dp2[(j*10 + si)%13] += dp[j]
      dp2[(j*10 + si)%13] %= MOD # =%
    else
      10.times do |k|
        dp2[(j*10 + k)%13] += dp[j]
        dp2[(j*10 + k)%13] %= MOD # =%
      end
    end
  end
  dp=dp2
#  p "----"; dp.each{|line| p line}
end

puts dp[5]
