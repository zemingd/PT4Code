ARG_N, ARG_K = gets.split.map(&:to_i)
ARG_H = gets.split.map(&:to_i)

dp = Array.new(ARG_N)
dp[0] = 0
1.upto(ARG_N-1) do |n|
  list = []
  1.upto(ARG_K) do |k|
    break if n - k < 0
    d = dp[n-k]+(ARG_H[n] - ARG_H[n-k]).abs
    dp[n] = d if !dp[n] || d < dp[n]
  end
end

puts dp[ARG_N-1]