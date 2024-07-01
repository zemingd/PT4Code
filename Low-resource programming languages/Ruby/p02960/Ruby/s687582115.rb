# N = gets.chomp.to_i
# A = gets.chomp.split.map(&:to_i)

S = gets.chomp.chars
n = S.size
MOD = 10 ** 9 + 7

dp = (n + 1).times.map { Array.new(13, 0) }

## recurrence relation
# - dp[i + 1][(k * 10 + j) % 13] sum(k 0-12,j 0-9) dp[i][k]
#   - summention of "13 * 10"

dp[0][0] = 1
0.upto(n-1).each do |i|
  '0'.upto('9').each do |c|
    if S[i] != '?' && S[i] != c
      # We ignore this case
      next
    end

    j = c.ord - '0'.ord
    0.upto(12).each do |k|
      dp[i + 1][(k * 10 + j) % 13] += dp[i][k]
    end
  end
    
  0.upto(12).each do |k|
    dp[i + 1][k] %= MOD
  end
end

p dp[n][5]
  