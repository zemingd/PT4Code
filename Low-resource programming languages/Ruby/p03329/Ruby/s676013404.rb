#!/usr/bin/env ruby
# require 'pry'

# dpテンプレ
# 最小化
# dp = Hash.new{ Float::INFINITY }
# dp[i] = [dp[i], dp[i-1] + hoge].min
# dp[0] = 0
# 最大化
dp = Hash.new{Float::INFINITY}
dp[0] = 0
n = gets.to_i
ary=[]
1.upto(10) do |num|
  break if (6**num) > 10**5
  ary << 6**num
  ary << 9**num
  dp[num] = num
end
dp[6]=1
dp[7]=2
dp[8]=3
dp[9]=1
10.upto(n) do |i|
  ary.each do |ele|
    break if ele > i
    dp[i] = [(dp[i-ele] + 1), (dp[i-1] + 1), dp[i]].min
  end
end

puts dp[n]
