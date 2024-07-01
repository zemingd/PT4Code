s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0]=1

mul = 1
s.each do |num|
  ndp = Array.new(13,0)
  if num.nil?
    (0..9).each do |candidate|
      bigger = mul*candidate
      N.times do |pre|
        ndp[(bigger + pre)%N] += dp[pre]
      end
    end
  else
    bigger = mul*num
    N.times do |pre|
        ndp[(bigger + pre)%N] += dp[pre]
      end
  end
  mul = 10 * mul % N
  dp=ndp.map {|e| e%MOD }

end

p dp[5]%MOD