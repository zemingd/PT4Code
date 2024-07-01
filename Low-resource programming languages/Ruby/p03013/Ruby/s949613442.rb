MOD = 10 ** 9 + 7
n, m = gets.to_s.split.map { |v| v.to_i }
pit = Array.new(n + 1, false)
m.times do
  pit[gets.to_s.to_i] = true
end
dp = Array.new(n + 1, 0)
dp[0] = 1

n.times do |i|
  [1, 2].each do |j|
    next if n < i + j
    next if pit[i + j]
    dp[i + j] += dp[i]
    dp[i + j] %= MOD
  end
end

pp dp[-1]