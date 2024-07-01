N = gets.to_i
H = gets.split.map(&:to_i)
dp = [0]
dp[1] = (H[0] - H[1]).abs
1.upto(N-1) do |i|
  dp[i] = [(H[i] - H[i-1]).abs + dp[i-1], (H[i] - H[i-2]).abs + dp[i-2]].min
end

p dp[N-1]