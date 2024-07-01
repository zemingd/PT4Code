N, W = gets.split.map(&:to_i)

goods = N.times.map { gets.split.map(&:to_i) }

dp = Array.new(W + 1, -1)
dp[0] = 0

goods.each do |w, v|
  (W - w).downto(0) do |i|
    next if dp[i] < 0

    nv = dp[i] + v
    nw = i + w

    dp[nw] = nv if dp[nw] < nv
  end
end

puts dp.max
