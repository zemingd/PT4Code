n, m = gets.split.map &:to_i
A = Array.new(m){gets.to_i}

dp = Array.new(n+2,0)
dp[0] = 1
m.times do |i|
  dp[A[i]] = nil
end

0.upto(n-1) do |i|
  1.upto(2) do |j|
    if dp[i] && dp[i+j]
      dp[i+j] += dp[i]
    end
  end
  
end

  p dp[n] % 1000000007
