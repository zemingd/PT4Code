n, k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
INF = 10 ** 12
dp = Array.new(n) { INF }
dp[0] = 0
1.upto(n - 1) do |i|
  min = 10 ** 6
  [i - k, 0].max.upto([i - 1, 0].max) do |j|
    cost = dp[j] + (h[i] - h[j]).abs
    min = cost if cost < min
  end
  dp[i] = min
end
puts dp[n - 1]