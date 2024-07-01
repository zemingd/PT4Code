hs = [nil, 2,5,5,4,5,6,3,7,6]
n, _ = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
as.sort!
as.reverse!

dp = [-10000] * 10003
dp[0] = 0
dp.size.times{|i|
  as.map{|a|
    if i == hs[a]
      dp[i] = [dp[i], 1].max
    end
    if i - hs[a] >= 0
      dp[i] = [dp[i-hs[a]] + 1, dp[i]].max
    end
  }}

ans = []
rest = n
dp[n].times {
  as.each {|a|
    if dp[rest - hs[a]] == dp[rest] - 1
      ans << a
      rest -= hs[a]
      break
    end
  }
}
puts ans.join('')