n,m = gets.split.map(&:to_i)
a = m.times.map{gets.to_i}
dp = Array.new(n+2,0)
mod = 10**9+7
dp[0] = 1
j = 0
n.times do |i|
    j += 1 if j < m && a[j] <= i
    if !(j < m && a[j] == i+1)
        dp[i+1] += dp[i]
        dp[i+1] %= mod
    end
    if !((j < m && a[j] == i+2) || (j+1 < m && a[j+1] == i+2))
        dp[i+2] += dp[i]
        dp[i+2] %=  mod
    end
end
# p dp
puts dp[n]