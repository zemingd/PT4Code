MOD = 10**9 + 7
S = gets.chomp
S.reverse!

dp = Array.new(13, 0)
dp[0] = 1

mul = 1

S.each_char do |char|
  next_dp = Array.new(13, 0)

  if char == '?'
    10.times do |i|
      13.times do |k|
        rem = (i * mul + k) % 13
        next_dp[rem] += dp[k]
      end
    end
  else
    13.times do |k|
      rem = (char.to_i * mul + k) % 13
      next_dp[rem] += dp[k]
    end
  end

  mul *= 10
  mul %= 13

  13.times { |rem| next_dp[rem] %= MOD }
  dp = next_dp
end

puts dp[5]
