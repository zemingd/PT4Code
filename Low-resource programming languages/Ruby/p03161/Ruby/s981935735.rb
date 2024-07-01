def min(a,b)
  a < b ? a : b
end

N, K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h += Array.new(100005, Float::INFINITY)
dp = Array.new(100105, Float::INFINITY)

dp[0] = 0
N.times do |i|
  1.upto(K) do |j|
    dp[i + j] = min(dp[i + j], dp[i] + (h[i + j] - h[i]).abs)
  end
end
puts dp[N - 1]