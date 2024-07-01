# refer to https://www.planeta.tokyo/abc-135
# refer to https://atcoder.jp/contests/abc135/submissions/6599605
mod = 10 ** 9 + 7

s = gets.chomp.bytes

dp = Array.new(s.size+1){ Array.new(13){ 0 } }
dp[0][0] = 1

m = 1
s.reverse_each.with_index do |c,i|
  if c == 63  # p '?'.ord #=> 63
    10.times do |k|
      13.times do |j|
        jn = (m * k + j) % 13
        dp[i+1][jn] = (dp[i+1][jn] + dp[i][j]) % mod
      end
    end
  else
    13.times do |j|
      jn = (m * (c-48) + j) % 13
      dp[i+1][jn] = (dp[i+1][jn] + dp[i][j]) % mod
    end
  end
  m = m * 10 % 13
end

puts dp[s.size][5]