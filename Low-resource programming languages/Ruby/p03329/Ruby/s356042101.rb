number = gets.to_i
divi = [1, 6, 9, 6**2, 9**2, 6**3, 9**3, 6**4, 9**4, 6**5, 6**6, 9**5]
dp = Array.new(12).map{Array.new(number + 1, 10**7)}
for i in 0..11
  dp[i][0] = 0
end
for i in 1..number
  dp[0][i] = i
end

for i in 1..11
  for j in 1..number
    if (j >= divi[i]) && (dp[i - 1][j] > (dp[i][j - divi[i]] + 1))
      dp[i][j] = dp[i][j - divi[i]] + 1
    else
      dp[i][j] = dp[i - 1][j]
    end
  end
end

print dp[11][number]
