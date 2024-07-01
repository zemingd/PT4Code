n = gets.to_i
a = gets.split.map &:to_i
dp = Array.new(n+2){ 10**5 }
dp[0] = 0

(n-1).times do |i|
  if dp[i+1] > dp[i] + (a[i+1] - a[i]).abs
    dp[i+1] = dp[i] + (a[i+1] - a[i]).abs
  end
  next if i+2 >= n
  if dp[i+2] > dp[i] + (a[i+2] - a[i]).abs
    dp[i+2] = dp[i] + (a[i+2] - a[i]).abs
  end
end

puts dp[n-1]