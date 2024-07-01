s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N = 13
MOD = 10**9+7

dp = Array.new(N,0)
dp[0]=1
#p dp

mul = 1
s.each do |cc|
  ndp = Array.new(N,0)

  if cc.nil?

    10.times do |num|
      N.times do |pre|
        c_i = (num*mul+pre)%N
        ndp[c_i] += dp[pre]
      end
    end

  else

    N.times do |pre|
      c_i = (cc*mul+pre)%N
      ndp[c_i] += dp[pre]
    end

  end

  dp = ndp
  mul = (mul*10)%N
#p dp
end

p dp[5]
