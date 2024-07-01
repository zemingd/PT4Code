N,K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.unshift(0)

dp = []

dp[0] = dp[1] = 0
dp[2] = (h[2] - h[1]).abs

if N == 2
  puts dp[2]
  exit
end

for i in 3..N do

  min = 10**5

  for j in [i-K, 1].max..i-1 do
    min = [
      dp[j] + (h[j] - h[i]).abs,
      min
    ].min
  end

  dp[i] = min
end

puts dp[N]
