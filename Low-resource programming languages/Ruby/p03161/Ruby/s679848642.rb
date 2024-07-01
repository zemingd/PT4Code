n, k, *h = $stdin.read.split.map(&:to_i)
dp = Array.new(n+k, 0)
h =  h + Array.new(k, 0)
(1..n-1).each { |i| dp[i] = (1..k).map { |j| dp[i-j] + (h[i] - h[i-j]).abs }.min }
p dp[n-1]

