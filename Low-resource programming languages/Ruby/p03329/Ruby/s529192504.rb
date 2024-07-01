n = gets.to_i

nums = [1,6,9,36,81,216,729,1296,6561,7776,46656,59049]
dp = []
dp[0] = 0

(1..100000).each do |i|
  dp[i] = Float::INFINITY
  nums.each do |num|
    next if i-num < 0
    next if dp[i-num] == nil
    dp[i] = [dp[i], 1 + dp[i-num]].min
  end
end

puts dp[n]