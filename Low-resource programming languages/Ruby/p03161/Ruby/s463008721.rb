#!/usr/bin/ruby
#encoding: utf-8

# 配るDPで書く

n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)+[0]

dp = Array.new(10010000,1e9.to_i)

#p h

dp[0] = 0

(0..n-2).each do |i|
  (1..k).each do |j|
    if i+j <= n-1
      dp[i+j] = [dp[i+j] , dp[i] + (h[i+j] - h[i]).abs].min
    end
  end
end

puts dp[n-1]
~