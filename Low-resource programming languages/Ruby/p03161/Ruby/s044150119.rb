def chmin(a, b) a < b ? a : b end
INF = Float::INFINITY
n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)


if n <= k
  puts (h[0] - h[-1]).abs
  exit
end

dp = [INF] * (n+1)

dp[0] = 0
0.upto(n-2) do |i|
  if i == 0
    dp[i+1] = (h[i+1] - h[i]).abs
  else
    1.upto(k) do |j|
      dp[i+1] = chmin(dp[i+1] , dp[i+1-j] + (h[i+1-j] - h[i+1]).abs) if i+1 - j >= 0
    end
  end
end

puts dp[n-1]
