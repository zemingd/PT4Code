MOD = 1000000007

S = gets.chomp
ssize = S.size
ord_0 = '0'.ord


dp = Array.new(ssize+1).map{ Array.new(13, 0) }
dp[0][0] = 1

1.upto(ssize) do |i|
  s = S[i-1]
  numbers = s == '?' ? 0..9 : [s.ord - ord_0]
  numbers.each do |x|
    (0...13).each { |z|
      dp[i][(z * 10 + x) % 13] += dp[i-1][z]
    }
  end
end

p dp[ssize][5] % MOD
