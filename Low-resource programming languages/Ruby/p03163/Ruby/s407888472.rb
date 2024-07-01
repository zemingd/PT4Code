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
  1.upto(W) do |w|
    if w - weights.fetch(i - 1) >= 0
      w0 = weights.fetch(i - 1)
      v0 = values.fetch(i - 1)

      dp[i][w] = dp[i - 1][w - w0] + v0
    end

    dp[i][w] = dp[i - 1][w] if dp[i][w] < dp[i - 1][w]
  end
end

print dp[N][W]
