require "numo/narray"

n, k = gets.split.map(&:to_i)
h = Numo::Int64.parse(gets).reshape!(nil)

dp = Numo::Int64.new(n).fill(Numo::Int64::MAX)
dp[0] = 0
def dp.chmin(i, v); self[i] = v if self[i] > v; end

n.times do |i|
  cost = (h - h[i]).abs
  1.upto(k) do |j|
    k = i + j
    next unless k < n
    dp.chmin(k, dp[i] + cost[k])
  end
end
pp dp[n - 1]
