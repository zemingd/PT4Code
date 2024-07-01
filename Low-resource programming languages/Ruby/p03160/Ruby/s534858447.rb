N = gets.to_i
H = gets.split.map(&:to_i)

dp = Array.new(H.size)
dp[0] = 0
dp[1] = [(H[0] - H[1]).abs, H[1]].min
2.step(H.size - 1) do |i|
  p1 = dp[i-2] + (H[i-2] - H[i]).abs
  p2 = dp[i-1] + (H[i-1] - H[i]).abs
  dp[i] = p1 > p2 ? p2 : p1
end

puts dp.last