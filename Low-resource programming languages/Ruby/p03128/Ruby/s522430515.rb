N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
match = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
def max(s1, s2)
  s1 > s2 ? s1 : s2
end

# dp[i]: i本使ってできる最大の数
dp = Array.new(N+1)
dp[0] = 0
(N+1).times do |i|
  A.each do |a|
    if i-match[a] >= 0 && dp[i-match[a]]
      dp[i] = max(dp[i].to_i, dp[i-match[a]]*10 + a)
    end
  end
end
p dp[N]