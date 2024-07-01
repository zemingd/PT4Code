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

x = gets.split(' ').map(&:to_i)
puts x.index(0) + 1
