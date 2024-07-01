# 任意の位置 i について、
# S[j] (j < i) が黒の個数 + S[j] (j >= i) が白の個数
# の最小値が求める答え
# dp[i]を i 番目までの白の個数とすると、
# min { i - dp[i] + dp[N] - dp[i] } ( i in 0 .. N)

N = gets.to_i
S = gets.chomp
dp = Array.new(N + 1, 0)
N.times do |i|
  dp[i + 1] = dp[i] + (S[i] == '.' ? 1 : 0)
end
puts (0 .. N).map{|i| dp[N] - 2 * dp[i] + i }.min
