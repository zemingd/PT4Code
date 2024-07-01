n, w = gets.chomp.split.map(&:to_i)
wvs = Array.new(n) { |i| gets.chomp.split.map(&:to_i) }
dp = Array.new(w + 1, 0)

0.upto(n - 1) do |i|
  wvs[i][0].upto(w) do |sum_w|
    tmp = dp[sum_w] + wvs[i][1]
    dp[sum_w] = tmp if tmp > dp[sum_w]
  end
end

puts dp[-1]