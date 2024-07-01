s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0]=1

mul = 1
s.each do |num|
  pre_dp = dp.dup
  dp = Array.new(13,0)
  if num.nil?
    (0..9).each do |candidate|
      N.times do |pre|
        dp[(mul*candidate + pre)%N] = (pre_dp[pre] + dp[(mul*candidate + pre)%N])%MOD
      end
    end
  else
    N.times do |pre|
        dp[(mul*num + pre)%N] = (pre_dp[pre] + dp[(mul*num + pre)%N])% MOD
      end
  end
  mul = 10 * mul % N
end

p dp[5]%MOD