n,k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = {}
dp[1] = 0

n.times.with_index(1) do |_, i|
  next if i == 1
  min = dp[i-1] + (hs[i-2] - hs[i-1]).abs
  k.times.with_index(1) do |_, j|
    if i > j
      min = [min, dp[i-j] + (hs[i-j-1] - hs[i-1]).abs].min
    end
  end
  dp[i] = min
end

puts dp[n]
