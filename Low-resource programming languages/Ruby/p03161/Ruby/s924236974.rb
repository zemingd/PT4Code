N, K = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map(&:to_i)

dp = Array.new(N, 10000)

dp[0] = 0

for i in 1..(N - 1)
  for j in 1..K do
    diff = [i - j, 0].max
    dp[i] = [dp[i], dp[diff] + (ps[diff] - ps[i]).abs].min
  end
end

puts dp[N - 1]
