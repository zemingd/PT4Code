S = gets.chomp
MOD = 10 ** 9 + 7

dp = Array.new(S.size + 1) { Array.new(13, 0) }
base = 1

if S[-1] == '?'
  10.times do |i|
    dp[1][i] = 1
  end
else
  dp[1][S[-1].to_i] = 1
end

S.chars[1..-1].reverse_each.with_index(1) do |s, idx|
  n = s.to_i

  if s == '?'
    13.times do |i|
      10.times do |j|
        k = (i + (j * base) % 13) % 13
        dp[idx + 1][k] = (dp[idx + 1][k] + dp[idx][i]) % MOD
      end
    end
  else
    13.times do |i|
      j = (i + (n * base) % 13) % 13 
      dp[idx + 1][j] = (dp[idx + 1][j] + dp[idx][i]) % MOD
    end
  end

  base = (base * 10) % 13 
end

puts dp[S.size][5]
