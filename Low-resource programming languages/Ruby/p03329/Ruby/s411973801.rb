a = gets.to_i
dp = Array.new
dp << 0
(1..(100010)).each do |n|
  dp[n] =  100000
  dp[n] =  dp[n - 1] + 1 < dp[n] ? dp[n - 1] + 1 : dp[n]
  power = 1
  while(power <= n)
    dp[n] = dp[n - power] + 1 < dp[n] ? dp[n - power] + 1 : dp[n]
    power *= 6
  end
  power = 1
  while(power <= n)
    dp[n] = dp[n - power] + 1 < dp[n] ? dp[n - power] + 1 : dp[n]
    power *= 9
  end
end

puts dp[a]