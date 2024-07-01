def min(a, b)
  a < b ? a : b
end

N, K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

dp = []
dp[0] = 0

1.upto(h.size - 1) {|i|
  min_cost = Float::INFINITY
  (1..K).each do |j|
    k = i - j
    break if k < 0

    cost = dp[k] + (h[i] - h[k]).abs
    min_cost = min(min_cost, cost)
  end

  dp[i] = min_cost
}

puts dp.last
