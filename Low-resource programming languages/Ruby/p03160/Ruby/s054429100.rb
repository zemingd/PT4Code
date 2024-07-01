n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
dp = Array.new(n)
dp[0] = 0
dp[1] = (arr[0] - arr[1]).abs
(2...n).each do |i|
  dp[i] = [
      dp[i - 2] + (arr[i - 2] - arr[i]).abs,
      dp[i - 1] + (arr[i - 1] - arr[i]).abs
  ].min
end
puts dp[n - 1]