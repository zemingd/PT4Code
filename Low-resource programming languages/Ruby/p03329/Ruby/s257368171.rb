N = gets.to_i
dp = Array.new(N+1){N}
dp[0] = 0
1.upto(10) do |i|
  [6**i, 9**i].each do |d|
    0.upto(N-d) do |j|
      dp[j+d] = [dp[j+d], dp[j]+1].min
    end
  end
end
N.times do |j|
  dp[j+1] = [dp[j+1], dp[j]+1].min
end
p dp[N]
