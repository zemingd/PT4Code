#!/usr/bin/env ruby

if $0 == __FILE__
  N = gets.to_i
  H = gets.split(' ').map &:to_i

  dp = Array.new(N, 100000)
  dp[0] = 0

  (0...(N-1)).each do |i|
    dp[i+1] = [dp[i+1], (H[i+1] - H[i]).abs + dp[i]].min
    dp[i+2] = [dp[i+2], (H[i+2] - H[i]).abs + dp[i]].min if i+2 <= N-1
  end

  puts dp[N-1]
end
