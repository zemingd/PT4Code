# frozen_string_literal: true

n = gets.to_i
h = gets.split.map(&:to_i)

dp = Array.new(n, 100_000_000_000)

dp[0] = 0
(n - 1).times do |i|
  if i < n - 2
    dp[i + 1] = [dp[i + 1], dp[i] + (h[i] - h[i + 1]).abs].min
    dp[i + 2] = [dp[i + 2], dp[i] + (h[i] - h[i + 2]).abs].min
  else
    dp[i + 1] = [dp[i + 1], dp[i] + (h[i] - h[i + 1]).abs].min
  end
end

puts dp[n - 1]
