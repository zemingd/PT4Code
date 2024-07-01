n, w_max = gets.split.map(&:to_i)
w = []
v = []
$<.map{|l|
  wi, vi = l.split.map(&:to_i)
  w << wi
  v << vi
}
dp = []
(n+1).times{ dp << Array.new(w_max+1, 0) }
n.times{|i|
  (w_max+1).times{|j|
    dp[i+1][j] = [ dp[i][j] , j>=w[i] ? dp[i][j-w[i]]+v[i] : 0 ].max
  }
}
p dp[n][w_max]
