#!/usr/bin/env ruby
# require 'pry'

# N
# a_1 b_1
# ...
# a_N b_N
# ↑を[[a_1,..a_N],[b_1,..b_N]]にする
# N = gets.to_i
# a, b = N.times.map{gets.split.map(&:to_i)}.transpose

n = gets.to_i
s = gets.chomp.split('')
abc = ['A','B','C']
count = 0
(n-3).times do |i|
  3.times do |j|
    break if s[i+j] != abc[j]
    count += 1 if j == 2
  end
end
puts count