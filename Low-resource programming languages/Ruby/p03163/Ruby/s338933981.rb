require "pry-byebug"

N,W = gets.split.map(&:to_i)
dp = Array.new(N+1).map {Array.new(W+1, 0)}

N.times do |n|
  w_n,v_n = gets.split.map(&:to_i)
  1.upto(W) do |w|
    if w_n <= w
      idx_prev = w - w_n
      tmp_value = dp[n][idx_prev] + v_n
      dp[n+1][w] = tmp_value if dp[n+1][w] < tmp_value
    end

    dp[n+1][w] = dp[n][w] if dp[n+1][w] < dp[n][w]
  end
end

=begin
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
=end
puts dp[N][W]
