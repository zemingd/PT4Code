N,K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift(0)

dp = []
dp[1] = 0

for i in 2..N do

  min = Float::INFINITY

  for j in [i-K, 1].max..i-1 do
    min = [
      dp[j] + (h[j] - h[i]).abs,
      min
    ].min
  end

  dp[i] = min
end

puts dp[N]
