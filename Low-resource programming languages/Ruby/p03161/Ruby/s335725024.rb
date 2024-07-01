N, K = gets.split.map(&:to_i)
H = [Float::INFINITY] + gets.split.map(&:to_i)

dp = Array.new(N + 1, Float::INFINITY)
dp[1] = 0

2.upto(N) do |i|
  (i - 1).downto([1, i - K].max) do |j|
    dp[i] = [dp[i], dp[j] + (H[j] - H[i]).abs].min
  end
end

puts dp[N]
