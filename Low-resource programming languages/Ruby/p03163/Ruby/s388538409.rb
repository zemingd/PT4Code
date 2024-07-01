n,m = gets.split.map &:to_i
w,v = Array.new(n){ gets.split.map &:to_i }.transpose
dp = Array.new(n+1){ Array.new(m+1,0) }

max = -> a,b { a > b ? a : b }

0.upto(n-1) do |i|
  0.upto(m) do |j|
    if j < w[i]
      dp[i+1][j] = dp[i][j]
    else
      dp[i+1][j] = max[dp[i][j], dp[i][j-w[i]] + v[i]]
    end
  end
end

puts dp[n][m]