n, w = gets.chomp.split(" ").map(&:to_i)
wv = n.times.map { gets.chomp.split(" ").map(&:to_i) }
dp = Array.new(w + 1) { 0 }
n.times do |i|
  t_dp = dp.clone
  wi, vi = wv[i]
  wi.upto(w) do |j|
    t_dp[j] = dp[j - wi] + vi if dp[j] < dp[j - wi] + vi
  end
  dp = t_dp
end
puts dp[w]