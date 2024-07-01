n, k = gets.chop.split.map(&:to_i)
h = gets.chop.split.map(&:to_i)

dp = [0]*n

dp[0] = 0
dp[1] = (h[1]-h[0]).abs

2.upto(n-1) do |i|
  min_num = Float::INFINITY
  1.upto(k) do |j|

    break if i - j < 0

    cost = dp[i-j] + (h[i]-h[i-j]).abs

    min_num = [min_num, cost].min

    dp[i] = min_num
  end
end

p dp[n-1]
