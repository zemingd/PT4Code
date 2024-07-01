n,m = gets.split.map(&:to_i)
b = Array.new(n+2,true)
m.times do
    a = gets.to_i
    b[a] = false
end
dp = Array.new(n+2,0)
mod = 10**9+7
dp[0] = 1
(1..n).each do |i|
    dp[i] = (dp[i-1]+dp[i-2])%mod if b[i]
end
# p dp
puts dp[n]