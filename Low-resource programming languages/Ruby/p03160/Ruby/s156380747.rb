S = gets.chomp
T = gets.chomp

dp = Array.new(S.size + 1) { Array.new(T.size + 1, 0) }

for s0 in 0..S.size - 1
  s1 = s0 + 1
  for t0 in 0..T.size - 1
    t1 = t0 + 1
    dp[s1][t1] = dp[s0][t0] + 1 if S[s0] == T[t0]
    dp[s1][t1] = dp[s1][t0]     if dp[s1][t1] < dp[s1][t0]
    dp[s1][t1] = dp[s0][t1]     if dp[s1][t1] < dp[s0][t1]
  end
end

i = dp[S.size][T.size]
s = S.size
t = T.size
a = ''

while i > 0
  case
  when dp[s - 1][t] == i then s -= 1
  when dp[s][t - 1] == i then t -= 1
  else
    a.insert(0, S[s - 1])
    i -= 1
    s -= 1
    t -= 1
  end
end

print a