n, w = gets.chomp.split.map(&:to_i)
ws, vs = Array.new(n) { |i| gets.chomp.split.map(&:to_i) }.transpose
ws.unshift(0)
vs.unshift(0)

dp = Array.new(n + 1) { Array.new(w + 1, 0) }

1.upto(n) do |i|
  0.upto(w) do |sum_w|
    val = dp[i - 1][sum_w]
    if sum_w - ws[i] >= 0
      val = [dp[i - 1][sum_w - ws[i]] + vs[i], val].max
    end
    dp[i][sum_w] = val
  end
end

puts dp[n].max