s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0] = 1
mul=1
a09 = (0..9).to_a

#p s

s.each do |current_c|
  next_dp = Array.new(13,0)

  (current_c.nil? ? a09 : [current_c]).each do |candidate|

    N.times do |previous|
        target = (candidate*mul + previous)%N
        next_dp[target] = (next_dp[target] + dp[previous]) % MOD
    end
  end
  mul = mul * 10 % N
  dp=next_dp

#p dp
end

p dp[5]
