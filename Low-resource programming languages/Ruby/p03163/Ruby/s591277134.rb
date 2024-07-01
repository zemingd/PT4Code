N, W = gets.chomp.split.map(&:to_i)
a = []
N.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end

dp = Array.new(105) { Array.new(10**5 + 5, 0) }

1.upto(N) do |i|
  w, v = a[i-1]
  1.upto(W) do |j|
    dp[i][j] = if j >= w
                 [dp[i-1][j], dp[i-1][j-w] + v].max
               else
                 dp[i-1][j]
               end
  end
end
p dp[N][W]
