n, w = gets.chomp.split.map(&:to_i)
dp = Array.new(n + 1) { Array.new(w + 1, 0) }

1.upto(n) do |i|
  wi, vi = gets.chomp.split(" ").map(&:to_i)

  wi.upto(w) do |sum_w|
    val = dp[i - 1][sum_w]
    if sum_w - wi >= 0
      val = [dp[i - 1][sum_w - wi] + vi, val].max
    end
    dp[i][sum_w] = val
  end
end

puts dp[n].max