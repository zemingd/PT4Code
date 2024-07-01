def min(a,b); a < b ? a : b; end
V = [6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 46656, 59049]

N = gets.to_i
dp = Array.new(N + 1){|i| i}
V.each do |m|
  (m .. N).each do |i|
    dp[i] = min(dp[i - m] + 1, dp[i])
  end
end
puts dp[N]
