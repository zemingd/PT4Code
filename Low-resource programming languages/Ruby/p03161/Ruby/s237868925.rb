n, k = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)

dp = Array.new(n, 1.0 / 0)

def rec(dp, h, n, k, i)
  return dp[i] if dp[i] < 1.0 / 0
  return 0 if i == 0

  (1..k).each do |j|
    ii = i - j
    dp[i] = [dp[i], rec(dp, h, n, k, ii) + (h[i] - h[ii]).abs].min if ii >= 0
  end

  dp[i]
end

puts rec(dp, h, n, k, n - 1)