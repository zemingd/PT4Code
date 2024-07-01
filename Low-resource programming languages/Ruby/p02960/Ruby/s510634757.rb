S = gets.chomp
MOD = 10**9 + 7

l = S.length
dp = Array.new(l + 1){Array.new(13, 0)}
dp[0][0] = 1
(0 ... l).each do |i|
  x = S[i] == '?' ? -1 : S[i].to_i
  (0 ... 10).each do |j|
    next if x != -1 && x != j
    (0 ... 13).each{|k| dp[i + 1][(10*k + j) % 13] = (dp[i + 1][(10*k + j) % 13] + dp[i][k]) % MOD}
  end
end
puts dp[l][5]