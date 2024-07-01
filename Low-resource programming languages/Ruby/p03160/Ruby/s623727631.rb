n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

dp = []
(0..n).each do |i|
  dp << Float::INFINITY
end
dp[0] = 0

(1...n).each do |i|
  a = dp[i - 1] + (h[i] - h[i - 1]).abs
  if dp[i] > a
    dp[i] = a
  end
  if i > 1 
    b = dp[i - 2] + (h[i] - h[i - 2]).abs
    if dp[i] > b
      dp[i] = b
    end
  end
end
p dp[n - 1]