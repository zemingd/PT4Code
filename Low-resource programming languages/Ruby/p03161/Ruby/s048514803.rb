n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)
INF = 10 ** 9

dp = Array.new(n + 5, INF)
dp[0] = 0

1.upto(n-1) do |i|
  1.upto(k) do |j|
    next if i - j < 0
    dp[i] = [dp[i], dp[i-j] + (h[i] - h[i-j]).abs].min
  end
end
p dp[n-1]
