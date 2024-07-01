n, w = $stdin.readline.chomp.split.map(&:to_i)
dp = Array.new(n + 1) { Hash.new(0) }
dp[0][w] = 0

n.times do |i|
  wi, vi = $stdin.readline.chomp.split.map(&:to_i)
  dp[i].each do |k, v|
    dp[i + 1][k] = [dp[i + 1][k], v].max
    if k - wi >= 0
      dp[i + 1][k - wi] = [dp[i + 1][k - wi], v + vi].max
    end
  end  
end
puts dp[n].values.max