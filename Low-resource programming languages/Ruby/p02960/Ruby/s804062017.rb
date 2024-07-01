S = gets.chomp
MOD = 10 ** 9 + 7

dp = Array.new(2) { Array.new(13, 0) }

if S[-1] == '?'
  10.times do |i|
    dp[1][i] = 1
  end
else
  dp[1][S[-1].to_i] = 1
end

base = 10

S.chars[0..-2].reverse_each.with_index(1) do |s, idx|
  n = s.to_i
  idx %= 2
  nidx = (idx + 1) % 2

  if s == '?'
    13.times do |i|
      10.times do |j|
        k = (i + (j * base) % 13) % 13
        dp[nidx][k] = (dp[nidx][k] + dp[idx][i]) % MOD
      end
    end
  else
    13.times do |i|
      j = (i + (n * base) % 13) % 13 
      dp[nidx][j] = (dp[nidx][j] + dp[idx][i]) % MOD
    end
  end

  13.times do |i|
    dp[idx][i] = 0
  end

  base = (base * 10) % 13 
end

puts dp[S.size % 2][5]
