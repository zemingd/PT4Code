MOD = 10 ** 9 + 7

s = gets.chomp.chars
n = s.size
dp = Array.new(n) { Hash.new(0) }

n.times do |i|
  if i == 0
    if s[i] == "?"
      (0..9).each do |c|
        dp[i][c] = 1
      end
    else
      dp[i][s[i].to_i] = 1
    end
  else
    m = dp[i - 1].keys
    m.each do |k|
      if s[i] != "?"
        j = (10 * k + s[i].to_i) % 13
        dp[i][j] = (dp[i][j] + dp[i - 1][k]) % MOD
      else
        (0..9).each do |c|
          j = (10 * k + c) % 13
          dp[i][j] = (dp[i][j] + dp[i - 1][k]) % MOD
        end
      end
    end
  end
end
puts dp[n - 1][5]