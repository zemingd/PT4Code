def min(a,b)
  a < b ? a : b
end

N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
dp = Array.new(N, Float::INFINITY)
dp[0] = 0
N.times do |i|
  1.upto(K) do |j|
    break if i + j > N - 1
    dp[i + j] = min(dp[i + j], dp[i] + (H[i + j] - H[i]).abs)
  end
end
puts dp[N - 1]