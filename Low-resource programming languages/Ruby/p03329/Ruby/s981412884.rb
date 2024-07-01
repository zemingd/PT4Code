n = gets.chomp.to_i

dp = Array.new(10**5 + 4, 10**5)
dp[0] = 0

1.upto(n) do |i|
  dp[i] = [dp[i], dp[i-1] + 1].min
  1.upto(7) do |j|
    break if i - (6 ** j) < 0
    dp[i] = [dp[i], dp[i - 6**j] + 1].min
  end
  1.upto(8) do |j|
    break if i - (9 ** j) < 0
    dp[i] = [dp[i], dp[i - 9**j] + 1].min
  end
end
p dp[n]
