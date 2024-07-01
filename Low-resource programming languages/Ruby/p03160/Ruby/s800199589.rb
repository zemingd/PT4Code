n = gets.to_i
inputs = gets.split.map(&:to_i)

dp = Array.new(inputs.size, Float::INFINITY)
dp[0] = 0
dp[1] = (inputs[1] - inputs[0]).abs

(2...n).each do |i|
  dp[i] = [(inputs[i] - inputs[i - 1]).abs + dp[i - 1], (inputs[i] - inputs[i - 2]).abs + dp[i - 2]].min
end

puts dp[n - 1]