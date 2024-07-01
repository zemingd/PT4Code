INF = 99999999
n = gets.to_i

dp = Array.new(n+1,INF)
dp[0] = 0

for i in 0..(n-1)
  dp[i+1] = [dp[i+1], dp[i]+1].min
  
  max6 = -1
  while i+6**(max6+1) <= n
    max6 += 1
  end
  for j in 1..max6
    dp[i+6**j] = [dp[i+6**j], dp[i]+1].min
  end
  
  max9 = -1
  while i+9**(max9+1) <= n
    max9 += 1
  end
  for j in 1..max9
    dp[i+9**j] = [dp[i+9**j], dp[i]+1].min
  end
end

puts dp[n]