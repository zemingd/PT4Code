hs = [nil, 2,5,5,4,5,6,3,7,6]
n, _ = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
as.sort!
as.reverse!
xs = as.map{|a| hs[a]}

dp = [0] * 10003
dp.size.times{|i|
  xs.map{|x|
    if i - x >= 0
      dp[i] = [dp[i-x] + 1, dp[i]].max
    end
  }}

ans = []
rest = n
(dp[n] - 1).times {|i|
  as.each {|a|
    if dp[rest - hs[a]] == dp[rest] - 1
      ans << a
      rest -= hs[a]
      break
    end
  }
}
as.each {|a|
  if rest == hs[a]
    ans << a
    break
  end
}
puts ans.join('')