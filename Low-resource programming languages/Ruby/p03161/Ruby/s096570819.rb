n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
INF = 10 ** 10
dp = Array.new(n, INF)
n.times do |idx|
  next dp[idx] = 0 if idx.zero?

  1.upto(k) do |aidx|
    break if aidx > idx
    dp[idx] = [dp[idx], dp[idx-aidx] + (h[idx] - h[idx-aidx]).abs].min
  end
end
puts dp[n-1]
