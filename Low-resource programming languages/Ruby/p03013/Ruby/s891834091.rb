n, _ = gets.split(" ").map(&:to_i)
a = readlines.map(&:to_i)

dp = Array.new(n + 1, 0)
dp[0] = 1

(0..(n - 1)).each do |i|
  dp[i + 1] = (dp[i + 1] + dp[i]) % 1000000007 unless a.include?(i + 1)
  dp[i + 2] = (dp[i + 2] + dp[i]) % 1000000007 unless a.include?(i + 2) || i + 1 >= n
end

p dp[-1]