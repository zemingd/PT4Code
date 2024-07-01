# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

dp = Array.new(n, 100_000_000_000)

dp[0] = 0
(n - 1).times do |i|
  count = [(n - 1 - i), k].min
  1.upto(count) do |x|
    dp[i + x] = [dp[i + x], dp[i] + (h[i] - h[i + x]).abs].min
  end
end

puts dp[n - 1]
