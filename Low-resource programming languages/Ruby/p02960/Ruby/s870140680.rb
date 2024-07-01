s = gets.chomp
size = s.size
arr = [1, 10, 9, 12, 3, 4]
mod = 10**9 + 7
dp = Array.new(size + 1) { Array.new(13) { 0 } }
dp[0][0] = 1

size.times do |i|
  13.times do |j|
    if s[i] == '?'
      10.times { |k| dp[i + 1][(j + arr[(size - 1 - i) % 6] * k) % 13] += dp[i][j] }
    else
      dp[i + 1][(j + arr[(size - 1 - i) % 6] * s[i].to_i) % 13] += dp[i][j]
    end
  end
  13.times { dp[i + 1][_1] %= mod }
end

puts dp[size][5]
