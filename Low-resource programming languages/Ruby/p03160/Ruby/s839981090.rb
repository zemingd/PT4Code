n = gets.chomp.to_i
hs = gets.chomp.split.map(&:to_i)
dp = Array.new(n)

dp[0] = 0
dp[1] = dp[0] + (hs[1] - hs[0]).abs
2.upto(n-1) do |i|
  k = dp[i-2] + (hs[i] - hs[i-2]).abs
  l = dp[i-1] + (hs[i] - hs[i-1]).abs
  dp[i] = [k, l].min
end

puts dp[-1]