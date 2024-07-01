n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
dp = Array.new(n+1)
dp[0] = 0
max_i = 0
max_dp = 0
p.each.with_index(1) do |pi, i|
  dp[i] = dp[i-1] + pi
  dp[i] -= p[i-1-k] if i-1-k >= 0
  if max_dp < dp[i]
    max_dp = dp[i]
    max_i = i
  end
end
puts p[max_i-k,k].map{|pi|pi*(pi+1)/2/pi.to_f}.inject(:+)
