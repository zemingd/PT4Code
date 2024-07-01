N = gets.strip.to_i

def chmin(a, b) a < b ? a : b end

INF = N
dp = Array.new(1001000) { INF } 

dp[0] = 0
N.times do |i|
  dp[i + 1] = chmin(dp[i] + 1, dp[i + 1])

  [6, 9].each do |p|
    j = p
    while j <= N
      dp[i + j] = chmin(dp[i] + 1, dp[i + j])
      j *= p
    end
  end
end

puts dp[N]
