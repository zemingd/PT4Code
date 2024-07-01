def update_dp(i, j, n, c)
  return if $dp[i] <= j
  $dp[0] = [$dp[0], i+j].min if i < 6
  $dp[i] = j
  c.select{|x| x <= i}.map{|x| update_dp(i-x, j+1, n, c)}
end

n = gets.to_i
c = [59049, 46656, 7776, 6561, 1296, 729, 216, 81, 36, 9, 6]
$dp = Array.new(n+1, Float::INFINITY)
update_dp(n, 0, n, c)
p $dp[0]