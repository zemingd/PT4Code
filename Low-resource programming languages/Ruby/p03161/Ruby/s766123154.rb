N,K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift(0)

dp = []
dp[1] = 0

for i in 2..N do

  min = Float::INFINITY

  for j in [i-K, 1].max..i-1 do
    cost = dp[j] + (h[j] - h[i]).abs
    if min > cost
      min = cost
    end
  end

  dp[i] = min
end

puts dp[N]
