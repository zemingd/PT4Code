N = gets.to_i
H = gets.split.map(&:to_i)
dp = Array.new(N, 0)
dp[1] = (H[1] - H[0]).abs
2.step(N-1) do |i|
  dp[i] = [(H[i] - H[i-1]).abs + dp[i-1], (H[i] - H[i-2]).abs + dp[i-2]].min
end
puts dp.last