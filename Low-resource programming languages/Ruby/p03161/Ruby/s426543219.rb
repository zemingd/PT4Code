N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

dp = Array.new(N, 0)

1.upto(N - 1) do |i|
  min_cost = Float::INFINITY
  1.upto(K) do |k|
    break if k > i
    cost = dp[i - k] + (H[i] - H[i - k]).abs
    min_cost = cost if min_cost > cost
  end
  dp[i] = min_cost
end

puts dp[N - 1]
