require "numo/narray"

n = gets.to_i
h = Numo::Int64.parse(gets).reshape!(nil)
dp = Numo::Int64.new(n+10).fill(Numo::Int64::MAX)
dp[0] = 0

n.times do |i|
  1.upto(2) do |j|
    next unless i + j < n
    cost = (h[i+j] - h[i]).abs
    if dp[i+j] > dp[i] + cost
      dp[i+j] = dp[i] + cost
    end
  end
end
pp dp[n-1]