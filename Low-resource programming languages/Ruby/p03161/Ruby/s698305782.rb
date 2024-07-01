N, K = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(N, Float::INFINITY)

dp[0] = 0

for i in 0..N-2
  for j in 1..K
    dp[i+j] = [dp[i+j], dp[i] + (h[i+j] - h[i]).abs].min if i + j < N
  end
end

puts dp.last
