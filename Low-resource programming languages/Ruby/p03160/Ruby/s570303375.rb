N = gets.to_i
H = gets.split.map(&:to_i)

dp = Array.new(N, Float::INFINITY)
dp[0] = 0

(N - 1).times do |i|
  if i == 0
    dp[1] = (H[i + 1] - H[i]).abs
  else
    dp[i + 1] = [(H[i + 1] - H[i]).abs + dp[i], (H[i + 1] - H[i - 1]).abs + dp[i - 1]].min
  end
end

puts dp[-1]