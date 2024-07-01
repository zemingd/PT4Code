N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = []

N.times do |i|
  if i == 0
    dp << 0
  elsif i < K
    min_i = Float::INFINITY
    (1..i).each do |j|
      min_i = [min_i, dp[i - j] + (H[i] - H[i - j]).abs].min
    end
    dp << min_i
  else
    min_i = Float::INFINITY
    (1..K).each do |j|
      min_i = [min_i, dp[i - j] + (H[i] - H[i - j]).abs].min
    end
    dp << min_i
  end
end

puts dp[N - 1]