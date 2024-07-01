s = gets.strip.split('').reverse
N=13
MOD = 10**9+7

dp = Array.new(13,0)
dp[0] = 1
mul=1

p s

s.each_with_index do |current_c, index|
  next_dp = Array.new(13,0)

  if current_c=='?'

    10.times do |candidate|
      N.times do |previous|
        next_dp[(candidate*mul + previous)%N] += dp[previous]
        next_dp[(candidate*mul + previous)%N] %= MOD
      end
    end

  else

    current_num =   current_c.to_i
    N.times do |previous|
      next_dp[(current_num*mul + previous)%N] += dp[previous]
      next_dp[(current_num*mul + previous)%N] %= MOD
    end
  end

  mul *= 10
  mul %= N
  dp=next_dp

#p dp
end

p dp[5]
