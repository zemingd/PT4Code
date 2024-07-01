h = gets.to_i
dp = Array.new(h+1)
dp[1] = 1
[*2..h].each{|i| dp[i] = dp[i/2]*2+1 }
p dp[h]