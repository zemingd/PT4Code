n, w = gets.chomp.split.map(&:to_i)
wvs = Array.new(n) { |i| gets.chomp.split.map(&:to_i) }
wvs.unshift([0, 0])

dp = [Array.new(w + 1, 0)]

1.upto(n) do |i|
  dp[i] = dp[i - 1].clone
  wvs[i][0].upto(w) do |sum_w|
    dp[i][sum_w] = [dp[i - 1][sum_w - wvs[i][0]] + wvs[i][1], dp[i -1][sum_w]].max
  end
end

puts dp[n].max