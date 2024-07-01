INF = 10 ** 6
n = gets.to_i
nums = gets.split.map(&:to_i).sort
tally = nums.tally
dp = Array.new(INF + 1, true)

ans = 0
nums.each do |num|
  next unless dp[num]
  tmp = num
  while tmp < INF + 1
    dp[tmp] = false
    tmp += num
  end
  ans += 1 if tally[num] == 1
end
puts ans
