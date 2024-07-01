#!/usr/bin/ruby
#encoding: utf-8

# 貰うDPで書く

n = gets.to_i
h = gets.split.map(&:to_i)

dp = Array.new(n,1e9.to_i)

dp[0] = 0

(1..n-1).each do |i|
  dp[i] = [dp[i],dp[i-1] + (h[i]-h[i-1]).abs].min
  if i > 1
    dp[i] = [dp[i],dp[i-2] + (h[i]-h[i-2]).abs].min
  end
end

puts dp[n-1]