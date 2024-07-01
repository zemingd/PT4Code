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

n,m = gets.split(' ').map(&:to_i)
ary=[]
m.times do |num|
  ary<<gets.to_i
end
dp = Hash.new{ 0 }
dp[0] = 0

1.upto(n) do |i|
  if ary.include?(i)
    dp[i] = 0
    next
  elsif i == 1
    dp[i] = 1
    next
  elsif i == 2
    if dp[1] == 0
      dp[2] = 1
    else
      dp[2] = 2
    end
    next
  else
    dp[i] = [dp[i], (dp[i-1] + dp[i-2])].max
  end
end

puts dp[n] % 1_000_000_007
