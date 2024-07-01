n,k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = {}
dp[1] = 0
# dp = Array.new(n, 0)

(1..n).each do |i|
  next if i == 1
  # min = dp[i-1] + (hs[i-2] - hs[i-1]).abs
  dp[i] = dp[i-1] + (hs[i-2] - hs[i-1]).abs
  [i-1,k].min.times.with_index(1) do |_, j|
    # min = [min, dp[i-j] + (hs[i-j-1] - hs[i-1]).abs].min
    tmp = dp[i-j] + (hs[i-j-1] - hs[i-1]).abs
    dp[i] = tmp if dp[i] > tmp
  end
  # dp[i] = min
end

puts dp[n]
