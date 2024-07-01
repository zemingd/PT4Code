s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0]=1
a9=(0..9).to_a
mul = 1
s.each do |num|
  ndp = Array.new(13,0)


  (num.nil? ? a9 : [num]).each do |candidate|
      bigger=mul*candidate

      N.times do |pre|
        ndp[(bigger + pre)%N] += dp[pre]
      end
    end
  dp=ndp.map {|e| e%MOD }
  mul = 10 * mul % N
end

p dp[5]%MOD
