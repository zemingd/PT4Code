N,Max_W = gets.chomp.split.map(&:to_i)
w,v = N.times.map{gets.chomp.split.map(&:to_i)}.transpose
dp = Array.new(N+1){Array.new(Max_W + 1,0)}
N.times do |i|
  1.upto(Max_W) do |j|
    if w[i] <= j && dp[i+1][j] < dp[i][j-w[i]] + v[i]
      dp[i+1][j] = dp[i][j-w[i]] + v[i]
    else
      dp[i+1][j] = dp[i][j]
    end
  end
end
puts dp[N][Max_W]