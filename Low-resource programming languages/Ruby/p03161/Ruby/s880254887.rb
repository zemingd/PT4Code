INF = 1 << 60

n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = [0]
# refer ahead
n.times do |i|
  k.times do |l|
    j = i + l + 1
    next unless j < n

    # change min
    cost = dp[i] + (hs[i] - hs[j]).abs
    dp[j] = cost if (dp[j] || INF) > cost
  end
end

p dp.last
