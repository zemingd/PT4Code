n = gets.chomp
h = gets.chomp.split.map(&:to_i)

dp = Array.new(n, Float::INFINITY)

for i in i..n-1
  dp[i] = [dp[i], dp[i-2] + (h[i] - h[i - 2]).abs].min
  dp[i] = [dp[i], dp[i-1] + (h[i] - h[i - 1]).abs].min if i > 1
end

puts dp[n-1]
