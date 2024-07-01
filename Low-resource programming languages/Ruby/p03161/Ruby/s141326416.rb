N, K = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(N, Float::INFINITY)

dp[0] = 0

for i in 0..N-2
  for j in 1..[N-i-1, K].min
    c = dp[i] + (h[i+j] - h[i]).abs
    dp[i+j] = c if c < dp[i+j]
  end
end

puts dp.last