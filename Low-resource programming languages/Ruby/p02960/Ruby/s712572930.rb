s = gets.strip.split('').reverse.map {|c| c=='?' ? nil : c.to_i}
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0] = 1
mul=1

#p s

s.each_with_index do |current_c, index|
  next_dp = Array.new(13,0)

  if current_c.nil?

    10.times do |candidate|
      N.times do |previous|
        next_dp[(candidate*mul + previous)%N] += dp[previous]
        next_dp[(candidate*mul + previous)%N] %= MOD
      end
    end

  else

    current_num =   current_c
    N.times do |previous|
      next_dp[(current_num*mul + previous)%N] += dp[previous]
      next_dp[(current_num*mul + previous)%N] %= MOD
    end
  end

  mul = mul * 10 % N
  dp=next_dp

#p dp
end

p dp[5]
