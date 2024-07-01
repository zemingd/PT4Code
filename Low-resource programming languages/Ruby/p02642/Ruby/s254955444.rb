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

n = gets.to_i
ary = gets.split(' ').map(&:to_i)
if ary.uniq!
  puts 0
  exit
end
count = 0
ary.each do |el|
  ary.each do |el2|
    next if el == el2
    break if el % el2 == 0
    if ary[-1] == el2
      count+=1
    end
  end
end

puts count
