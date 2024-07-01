n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(n, Float::INFINITY)
dp[0] = 0
dp[1] = dp[0] + (h[0] - h[1]).abs

(2..(n-1)).each do |i|
  (1..k).each do |j|
    rep = dp[i-j] + (h[i-j] - h[i]).abs
    dp[i] = rep if rep < dp[i]
  end
end

puts dp[n-1]