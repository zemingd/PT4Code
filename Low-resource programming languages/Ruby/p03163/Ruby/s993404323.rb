N, W = gets.chomp.split.map(&:to_i)

dp = [0] * (W+1)

1.upto(N) do |i|
  w_i, v_i = gets.chomp.split.map(&:to_i)

  W.downto(1) do |w|
    next if w_i > w

    dp[w] = dp[w-w_i] + v_i if dp[w] < dp[w-w_i] + v_i
  end
end

puts dp[W]