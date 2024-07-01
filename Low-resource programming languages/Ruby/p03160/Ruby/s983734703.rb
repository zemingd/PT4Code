ARG_N = gets.to_i
ARG_H = gets.split.map(&:to_i)

dp = Array.new(ARG_N)
dp[0] = 0

ARG_N.times do |n|
  if n >= 1
    dp[n] = dp[n-1] + (ARG_H[n] - ARG_H[n-1]).abs
  end
  if n >= 2
    dp[n] = [dp[n], dp[n-2] + (ARG_H[n] - ARG_H[n-2]).abs].min
  end
end

puts dp[ARG_N-1]