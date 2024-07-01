N = gets.to_i
S = N.times.map { gets.to_i }
MAX_S = N * 100

dp = Array.new(N + 10) { Array.new(MAX_S + 10, false) }
dp[0][0] = true
N.times do |i|
  s = S[i]
  (0..MAX_S).each do |j|
    if j - s < 0
      dp[i + 1][j] = dp[i][j]
    else
      dp[i + 1][j] = dp[i][j - s]
    end
  end
end
ans = 0
(0..MAX_S).each do |i|
  if i % 10 != 0 && dp[N][i]
    ans = i
  end
end
puts ans