n, m = gets.chomp.split.map(&:to_i)
a = m.times.map { gets.to_i }
mod = 10**9 + 7
dp = Array.new
dp[n+1] = 0
dp[n] = 1
(n-1).downto(0).each do |i|
  if a.include?(i)
    dp[i] = 0
    next
  end
  dp[i] = (dp[i+1] + dp[i+2]) % mod
end
puts dp[0]