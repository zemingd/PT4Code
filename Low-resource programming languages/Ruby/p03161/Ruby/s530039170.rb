n,m = gets.chomp.split(" ").map(&:to_i)
sta = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n,0)
for i in 1..n-1
  inst = 10**5
  for j in 1..i
    if inst > dp[i-j] + (sta[i] - sta[i-j]).abs
      inst = dp[i-j] + (sta[i] - sta[i-j]).abs
    end
    if j == m
      break
    end
  end
  dp[i] = inst
end
puts dp[-1]
