n = gets.to_i
stair = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n,0)
dp[1] = (stair[0] - stair[1]).abs
if n == 2
  puts dp[1]
  exit
end
for i in 2..n-1
  if (dp[i-2]+((stair[i-2] - stair[i]).abs)) > (dp[i-1]+((stair[i-1] - stair[i]).abs))
      dp[i] = dp[i-1]+((stair[i-1] - stair[i]).abs)
  else
    dp[i] = dp[i-2]+((stair[i-2] - stair[i]).abs)
  end
end
puts dp[-1]
