n, k = gets.split.map &:to_i
h = gets.split.map &:to_i

dp = [0]
(1...n).each do |j|
  dp[j] = ([j-k, 0].max..j-1).map do |i|
    dp[i] + (h[j] - h[i]).abs
  end.min
end

p dp[n-1]
