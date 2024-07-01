N = gets.to_i
H = gets.split.map(&:to_i)

dp = Array.new(N + 1, Float::INFINITY)
dp[1] = 0

H.unshift(Float::INFINITY)

1.upto(N - 1) do |i|
  if i + 1 <= N
    dp[i + 1] = [dp[i + 1], dp[i] + (H[i + 1] - H[i]).abs].min
  end

  if i + 2 <= N
    dp[i + 2] = [dp[i + 2], dp[i] + (H[i + 2] - H[i]).abs].min
  end
end

puts dp[N]
