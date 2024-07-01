n, m = gets.split.map &:to_i
A = Array.new(m){gets.to_i}

dp = Array.new(n+2,0)
dp[1] = 1
m.times do |i|
  dp[A[m]] = nil
end

n-1.times do |i|
  2.times do |j|
    if dp[i] && dp[i+j]
      dp[i+j] += dp[i]
    end
  end
end

  p dp[n] % 1000000007
