n = gets.to_i
a = gets.split.map &:to_i
dp = Array.new(n+2){ 10**5 }
dp[0] = 0

n.times do |i|
  1.upto(2) do |j|
    next if i + j >= n
    k = (a[i+j] - a[i]).abs
    dp[i+j] = k + dp[i] if dp[i+j] > k + dp[i]
  end
end

puts dp[n-1]