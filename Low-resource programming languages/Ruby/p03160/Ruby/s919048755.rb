n = gets.to_i
a = gets.split.map &:to_i
dp = Array.new(n){ 10**5 }
dp[0] = 0

n.times do |i|
  (1..2).each do |j|
    next if i + j >= n
    k = (a[i+j] - a[i]).abs + dp[i]
    dp[i+j] = k if dp[i+j] > k
  end
end

puts dp[n-1]