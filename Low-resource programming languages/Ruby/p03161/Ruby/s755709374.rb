N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = []

N.times do |i|
  if i == 0
    dp << 0
  else
    tmp = (H[i] - H[i - 1]).abs + dp[i - 1]
    (2..i).each do |j|
      break if i > K
      tmp = [tmp, dp[i - j] + (H[i] - H[i - j]).abs].min
    end
    dp << tmp
end

puts dp[N - 1]
