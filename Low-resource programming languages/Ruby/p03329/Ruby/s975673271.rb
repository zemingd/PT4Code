n = gets.to_i
dp = Array.new(10**6 + 100, 10**8)
dp[0] = 0


(0..100000).each do |i|
  pow6 = 1
  pow9 = 1
  while pow6 + i <= n do
    dp[i + pow6] = [dp[i]+1, dp[i+pow6]].min
    pow6 *= 6
  end
  while pow9 + i <= n do
    dp[i + pow9] = [dp[i]+1, dp[i+pow9]].min
    pow9 *= 9
  end
end

puts dp[n]
  