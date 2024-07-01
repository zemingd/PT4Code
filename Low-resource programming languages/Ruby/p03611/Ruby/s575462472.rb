n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
max_cnt = 0
dp = Array.new(as[-1]+2,0)
as.each do |a|
  dp[a] += 1
end
as[0].upto(as[-1]) do |i|
  cnt = dp[i-1] + dp[i] + dp[i+1]
  max_cnt = cnt if max_cnt < cnt
end
puts max_cnt
