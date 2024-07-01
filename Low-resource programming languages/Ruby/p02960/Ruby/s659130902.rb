s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0] = 1
mul=1

#p s

s.each do |current_c|
  next_dp = Array.new(13,0)

  (current_c.nil? ? (0..9).to_a : [current_c]).each do |candidate|

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
