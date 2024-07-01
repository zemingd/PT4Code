S = gets.chomp.chars
n = S.length

MOD = 10**9 + 7
dp = Array.new(n+1).map{Array.new(13,0)}

# 0桁目まで見たときのあまりが0のものは1個
dp[0][0] = 1

mul=1

n.times do |i|
  char = S[n-i-1]

  # 高速化
  current_dp = dp[i]
  next_dp = dp[i+1]

  if char == '?'
    13.times do |mod|
      10.times do |d|
        next_dp[(mod + d * mul) % 13] += current_dp[mod] % MOD
      end
    end
  else
    d = char.to_i
    13.times do |mod|
      next_dp[(mod + d * mul) % 13] += current_dp[mod] % MOD
    end
  end

  mul *= 10
end

puts dp[n][5] %= MOD
