n = gets.to_i
h = gets.split.map(&:to_i)

dp = Array.new(n, 0)
1.upto(n - 1) do |i|
  tmp1 = dp[i - 1] + (h[i] - h[i - 1]).abs
  tmp2 = i - 2 >= 0 ? dp[i - 2] + (h[i] - h[i - 2]).abs : tmp1
  dp[i] = [tmp1, tmp2].min
end

puts dp[n - 1]
