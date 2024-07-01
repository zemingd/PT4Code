n,w = gets.chomp.split(" ").map(&:to_i)
item = []
for i in 0..n-1
  item.push(gets.chomp.split(" ").map(&:to_i))
end
dp = Array.new(n).map{Array.new(w+1,0)}
for i in item[0][0]..w
  dp[0][i] = item[0][1]
end
for i in 1..n-1
  for j in 0..w
    if item[i][0] <= j && dp[i-1][j] < dp[i-1][j-item[i][0]]+item[i][1]
      dp[i][j] = dp[i-1][j-item[i][0]]+item[i][1]
    else
      dp[i][j] = dp[i-1][j]
    end
  end
end
puts dp[-1][-1]
