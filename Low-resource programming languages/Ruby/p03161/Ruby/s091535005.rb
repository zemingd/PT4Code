N,K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift(0)

dp = Array.new(N+1, Float::INFINITY)

dp[0] = dp[1] = 0
dp[2] = (h[2] - h[1]).abs

for i in 3..N do

  tmp = []

  for j in [i-K, 1].max..i do
    tmp.push(dp[j] + (h[j] - h[i]).abs)
  end

  dp[i] = tmp.min
end

puts dp[N]
