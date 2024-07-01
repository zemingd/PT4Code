S = gets.chomp.chars
MOD = 10 ** 9 + 7
dp = Array.new(S.size + 1) { Array.new(13) { 0 } }
dp[0][0] = 1
S.each.with_index do |ch, i|
  if ch == '?'
    10.times do |d|
      13.times do |k|
        j = (k * 10 + d) % 13
        dp[i + 1][j] = (dp[i + 1][j] + dp[i][k]) % MOD
      end
    end
  else
    d = ch.to_i
    13.times do |k|
        j = (k * 10 + d) % 13
        dp[i + 1][j] = (dp[i + 1][j] + dp[i][k]) % MOD
    end
  end
end
puts dp[S.size][5]
