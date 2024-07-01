# refer to https://www.planeta.tokyo/abc-135
# refer to https://atcoder.jp/contests/abc135/submissions/6599605
mod = 10 ** 9 + 7
def an(n,d=0) Array.new(n,d)end
def an2(n,m,d=0) Array.new(n){an(m,d)}end
def an3(n,m,l,d=0) Array.new(n){an2(m,l,d)}end

s = gets.chomp.chars

dp = Array.new(13){0}
dp1 = Array.new(13){0}
dp[0] = 1

m = 1

s.reverse_each.with_index do |c,i|
  i.even? ? (dp1 = Array.new(13){0}) : (dp = Array.new(13){0})
  if c == '?'
    10.times do |k|
      13.times do |j|
        jn = (m * k + j) % 13
        if i.even?
          dp1[jn] = (dp1[jn] + dp[j]) % mod
        else
          dp[jn] = (dp[jn] + dp1[j]) % mod
        end
      end
    end
  else
    13.times do |j|
      jn = (m * c.to_i + j) % 13
      if i.even?
        dp1[jn] = (dp1[jn] + dp[j]) % mod
      else
        dp[jn] = (dp[jn] + dp1[j]) % mod
      end
    end
  end
  m = m * 10 % 13
end

puts s.size.even? ? dp[5] : dp1[5]