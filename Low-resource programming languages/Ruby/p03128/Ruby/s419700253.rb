b = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
dp = []; dp[0] = 0
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
(0..n).map{|i| a.each{|j| dp[i+b[j]] = dp[i+b[j]].nil? ? dp[i]*10+j : [dp[i+b[j]], dp[i]*10+j].max } if !dp[i].nil?}
p dp[n]