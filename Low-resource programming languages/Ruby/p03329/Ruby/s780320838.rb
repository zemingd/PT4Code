N = gets.to_i

six_bank = (1..10).map { |i| 6 ** i }
nine_bank = (1..10).map { |i| 9 ** i }

dp = Array.new(N + 1, Float::INFINITY)
dp[N] = 0

N.downto(1) do |i|
  next if dp[i] == Float::INFINITY

  six_bank.each do |s|
    break if i - s < 0

    t = dp[i] + 1
    dp[i - s] = t if dp[i - s] > t
  end

  nine_bank.each do |n|
    break if i - n < 0

    t = dp[i] + 1
    dp[i - n] = t if dp[i - n] > t
  end

  if i <= 5
    t = dp[i] + 1
    dp[i - 1] = t if dp[i - 1] > t
  end
end

puts dp[0]
