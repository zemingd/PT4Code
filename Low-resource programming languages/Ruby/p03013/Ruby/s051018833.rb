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

dp = Hash.new{ 0 }
dp[0] = 0
ary=[]
n,m = gets.split(' ').map(&:to_i)
m.times do |num|
  ary<<gets.to_i
end
ary.each { |i| dp[i] = 0 }

1.upto(n) do |i|
  next if dp.keys.include?(i)
  if i == 1
    dp[1] = 1
    next
  end
  if i == 2
    if dp[1] == 0
      dp[2] = 1
      next
    else
      dp[2] = 2
      next
    end
  end
  dp[i] = [dp[i], (dp[i-1] + dp[i-2])].max
end

# p dp
puts dp[n] % 1_000_000_007
