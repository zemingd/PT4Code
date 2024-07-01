# frozen_string_literal: true

def chmin(a, b)
  a > b ? b : a
  end
n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
dp = Array.new(100_010, 10_000_000_000_000_000)
dp[0] = 0

(1..n - 1).each do |i|
  (1..k).each do |j|
    dp[i] = chmin(dp[i], dp[i - j] + (h[i - j] - h[i]).abs) if i - j >= 0
  end
end
puts dp[n - 1]
