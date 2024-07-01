# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h = h.fill(0, n..110_000)
dp = Array.new(n + k, 100_000_000_000)

dp[0] = 0
(n - 1).times do |i|
  1.upto(k) do |x|
    dp[i + x] = [
      dp[i + x],
      dp[i] + (h[i] - h[i + x]).abs
    ].min
  end
end

puts dp[n - 1]
