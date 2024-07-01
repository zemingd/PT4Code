N, W = gets.chomp.split.map(&:to_i)

weights = []
values  = []

N.times do
  weight, value = gets.chomp.split.map(&:to_i)

  weights << weight
  values  << value
end

dp = Array.new(N + 1) { Array.new(W + 1) { 0 } }

1.upto(N) do |i|
  i0 = i - 1
  w0 = weights[i0]
  v0 = values[i0]

  1.upto(W) do |w|
    dp[i][w] = dp[i0][w - w0] + v0 if w - w0 >= 0
    dp[i][w] = dp[i0][w] if dp[i][w] < dp[i0][w]
  end
end

print dp[N][W]
