MOD = 10 ** 9 + 7

s = gets.chomp.chars
n = s.size
m = 13
dp = Array.new(n) { Array.new(m, 0) }

# [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0]
# [8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7]
n.times do |i|
  if i == 0 && s[i] != "?"
    dp[i][s[i].to_i] = 1
  elsif i == 0
    (0..9).each {|d| dp[i][d] = 1 }
  elsif s[i] != "?"
    c = s[i].to_i
    m.times do |j|
      dp[i - 1][j] %= MOD
      dp[i][(10 * j + c) % m] += dp[i - 1][j]
    end
  else
    m.times do |j|
      dp[i - 1][j] %= MOD
      10.times do |c|
        dp[i][(10 * j + c) % m] += dp[i - 1][j]
      end
    end
  end
end
puts dp[n - 1][5] % MOD