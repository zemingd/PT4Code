N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = []

N.times do |i|
  if i == 0
    dp << 0
  elsif i < K
    tmp = H[i] - H[i - 1]
    (1..i).each do |j|
      tmp = [tmp, dp[i - j] + (H[i] - H[i - j]).abs].min
    end
    dp << tmp
  else
    tmp = H[i] - H[i - 1]
    (1..K).each do |j|
      tmp = [tmp, dp[i - j] + (H[i] - H[i - j]).abs].min
    end
    dp << tmp
  end
end

puts dp[N - 1]