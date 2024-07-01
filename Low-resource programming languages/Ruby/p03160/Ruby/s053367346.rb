N = gets.to_i
height_list = gets.split.take(N).map(&:to_i)

MAX_VALUE = 10 ** 4 + 1
dp = Array.new(N) { MAX_VALUE }
dp[0] = 0

(0..(N - 2)).each do |i|
  height = height_list[i]
  dp[i + 1] = [
    dp[i + 1],
    dp[i] + (height - height_list[i + 1]).abs
  ].min
  break if i == N - 2
  dp[i + 2] = [
    dp[i + 2],
    dp[i] + (height - height_list[i + 2]).abs
  ].min
end

puts dp[N - 1]
