# refer to https://www.planeta.tokyo/abc-135
# refer to https://atcoder.jp/contests/abc135/submissions/6599605
mod = 10 ** 9 + 7
def an(n,d=0) Array.new(n,d)end
def an2(n,m,d=0) Array.new(n){an(m,d)}end
def an3(n,m,l,d=0) Array.new(n){an2(m,l,d)}end

s = gets.chomp

dp = an2(s.size+1,13)
dp[0][0] = 1

m = 1

(s.size).times do |i|
  x = s[-1-i]
  if x == ??
    10.times do |k|
      13.times do |j|
        jn = (m * k + j) % 13
        dp[i+1][jn] = (dp[i+1][jn] + dp[i][j]) % mod
      end
    end
  else
    k = x.to_i
    13.times do |j|
      jn = (m * k + j) % 13
      dp[i+1][jn] = (dp[i+1][jn] + dp[i][j]) % mod
    end
  end
  m = m * 10 % 13
end

puts dp[s.size][5]