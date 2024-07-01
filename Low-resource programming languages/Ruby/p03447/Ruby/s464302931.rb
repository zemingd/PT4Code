n = gets.to_i
xs = [gets.split.map(&:to_i), gets.split.map(&:to_i)]
memo = [[0] * n, [0] * n]
2.times do |i|
  n.times do |j|
    memo[i][j] =
    if i == 0
      if j == 0
        xs[0][0]
      else
        memo[i][j-1] + xs[i][j]
      end
    else
      if j == 0
        memo[i-1][j] + xs[i][j]
      else
        [memo[i][j-1], memo[i-1][j]].max + xs[i][j]
      end
    end
  end
end
p memo[1][n-1]
