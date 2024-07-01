INF = 10 ** 9 + 7

n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(n, INF)
dp[0] = 0

(1...n).each do |i|
  (([0, i - k].max)...i).each do |j|
    c = dp[j] + (h[i] - h[j]).abs
    dp[i] = c if c < dp[i]
  end
end

puts dp[n - 1]