#!/usr/bin/env ruby
# require 'pry'

# dpテンプレ
# 最小化
# dp = Hash.new{ Float::INFINITY }
# dp[i] = [dp[i], dp[i-1] + hoge].min
# dp[0] = 0
# 最大化
# dp = Hash.new{ 0 }
# dp[i] = [dp[i], dp[i-1] + hoge].max
# dp[0] = 0

a,v = gets.chomp.split(" ").map(&:to_i)
b,w = gets.chomp.split(" ").map(&:to_i)
t = gets.to_i

if w >= v
  puts 'NO'
elsif ((a-b).abs - (v-w) * t) <= 0
  puts 'YES'
else
  puts 'NO'
end
