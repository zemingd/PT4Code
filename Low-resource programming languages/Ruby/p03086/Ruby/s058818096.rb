#!/usr/bin/env ruby
# require 'pry'

# N
# a_1 b_1
# ...
# a_N b_N
# ↑を[[a_1,..a_N],[b_1,..b_N]]にする
# N = gets.to_i
# a, b = N.times.map{gets.split.map(&:to_i)}.transpose

s = gets.chomp.split('')
acgt = ['A','C','G','T']
count = 0
s.length.times do |i|
  sum = 0
  (s.length-i).times do |j|
    if acgt.include?(s[i+j])
      sum += 1
    else
      break
    end
  end
  count = sum if sum > count
end

puts count