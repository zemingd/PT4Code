# knapsack

N, W = gets.split.map(&:to_i)
items = Array.new(N) { gets.split.map(&:to_i) }

dp = Array.new(N + 1) { Array.new(W + 1, 0) }
N.times do |i|
  w, v = items[i]
  0.upto(W) do |w_sum|
    dw = w_sum - w
    if dw >= 0 # choose
      # change max
      dp[i + 1][w_sum] = [dp[i + 1][w_sum], dp[i][dw] + v].max
    end
    # change max
    dp[i + 1][w_sum] = [dp[i + 1][w_sum], dp[i][w_sum]].max
  end
end

p dp.dig(N, W)
