n = gets.to_i
ss = n.times.map { gets.to_i }
sum_max = ss.reduce(&:+)
dp = Array.new(n) { Array.new(sum_max+1) { false } }
# dp[i][j]: i番目までの問題でj点が取れるか

dp[0][0], dp[0][ss[0]] = true, true
1.upto(n-1).each do |i|
  si = ss[i]
  0.upto(sum_max).each do |j|
    if dp[i-1][j]
      dp[i][j], dp[i][j+si] = true, true
    end
  end
end

10000.downto(0).each do |j|
  if (dp[n-1][j] && j%10 != 0) || j == 0
    puts j
    break
  end
end