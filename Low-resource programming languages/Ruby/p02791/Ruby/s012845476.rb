n = gets.to_i
p = gets.split(" ").map(&:to_i)

dp = Array.new(n)
dp[0] = p.first
(0..(n - 2)).each do |i|
  dp[i + 1] = [p[i + 1], dp[i]].min
end

count = 1
(1..(n - 1)).each do |i|
  count += 1 if dp[i - 1] >= p[i]
end

puts count