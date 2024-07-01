n, k = gets.split.map(&:to_i)
h    = gets.split.map(&:to_i)

dp = [10**12] * (10**5+10)
dp[0] = 0

(n-1).times do |i|
  k = n-i-1 if k > n-i-1
  k.times do |j|
    dp[i+j+1] = dp[i] + (h[i+j+1] - h[i]).abs  if dp[i+j+1] > dp[i] + (h[i+j+1] - h[i]).abs 
  end
end
 
 
p dp[n-1]