N,W = gets.split.map(&:to_i)
values = []
weights = []

dp = Array.new(N+1).map {Array.new(W+1, 0)}

N.times do |n|
  w,v = gets.split.map(&:to_i)
  weights << w
  values << v
end

N.times do |n|
  1.upto(W) do |w|
    if weights[n] <= w
      idx_prev = w - weights[n]
      tmp_value = dp[n][idx_prev] + values[n]
      dp[n+1][w] = tmp_value if dp[n+1][w] < tmp_value
    end

    dp[n+1][w] = dp[n][w] if dp[n+1][w] < dp[n][w]
  end
end
puts dp[N][W]
