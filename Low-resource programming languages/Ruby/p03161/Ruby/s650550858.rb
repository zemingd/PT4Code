n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = Array.new(n, 0)
dp[0] = 0
(1..n-1).each do |i|
  dp[i] = 10 ** 20
  ([0, i-k].max..i-1).each do |j|
    dp[i] = [dp[i], dp[j] + (hs[i] - hs[j]).abs].min
  end
end

puts dp[n-1]