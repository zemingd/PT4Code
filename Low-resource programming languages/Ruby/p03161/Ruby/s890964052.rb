N, K = gets.split.map(&:to_i)
H = [Float::INFINITY] + gets.split.map(&:to_i)

dp = Array.new(N + 1, Float::INFINITY)
dp[1] = 0

2.upto(N) do |i|
  v = (([1, i - K].max)..(i - 1)).map { |j|
    dp[j] + (H[j] - H[i]).abs
  }.min

  dp[i] = v
end

puts dp[N]
