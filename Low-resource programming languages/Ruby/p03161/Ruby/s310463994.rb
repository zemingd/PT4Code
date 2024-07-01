n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
dp = Array.new(n, Float::INFINITY)
dp[0] = 0
(1...n).each do |i|
  (1..[k, i].min).each do |j|
    cost = dp[i-j] + (h[i] - h[i-j]).abs
    dp[i] = cost if cost < dp[i]
  end
end
puts dp.last
