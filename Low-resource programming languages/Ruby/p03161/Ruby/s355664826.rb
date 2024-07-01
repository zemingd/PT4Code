require 'pp'

N,K = readline.split.map(&:to_i)
H = readline.split.map(&:to_i)

dp = Array.new(N,0)

dp[0] = 0

(1..(N-1)).each do |i|
  k = (i<K) ? i : K
  min = 1e6.to_i
  (1..k).each do |k|
    cost = dp[i-k] + (H[i-k]-H[i]).abs
    min = cost if cost < min
  end
  dp[i] = min
end

puts dp.last
