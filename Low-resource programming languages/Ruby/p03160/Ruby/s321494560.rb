n, k = gets.chomp.split.map(&:to_i)
vec = gets.chomp.split.map(&:to_i)
INF = 10 ** 12
dp = []
dp << 0
dp << (vec[0] - vec[1]).abs
1.upto(n - 1) do |i|
  dp << INF
  [i - k, 0].max.upto(i - 1) do |j|
    dp[i] = [dp[i], dp[i-j]+(vec[i-j]- vec[i]).abs].min
  end
end
puts dp[n - 1]