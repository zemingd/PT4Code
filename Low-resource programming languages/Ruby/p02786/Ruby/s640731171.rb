dp = [0,1]
(2..40).each do |n|
  dp[n] = dp[n-1]*2 + 1
end

k = gets.to_i
count = 0
while k != 0
  k /= 2
  count += 1
end
puts dp[count]
