N, W = gets.split.map(&:to_i)

dp_old = [0] * (W + 1)

1.upto(N) do |i|
  w, v = gets.split.map(&:to_i)

  dp = dp_old.clone

  w.upto(W) do |w_max|
    res = dp_old[w_max - w] + v
    dp[w_max] = res if res < dp_old[w_max]
  end

  dp_old = dp
end

puts dp_old.last
