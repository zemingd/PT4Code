#!/usr/bin/env ruby
# require 'pry'

# N
# a_1 b_1
# ...
# a_N b_N
# ↑を[[a_1,..a_N],[b_1,..b_N]]にする
# N = gets.to_i
# a, b = N.times.map{gets.split.map(&:to_i)}.transpose

def has_8_divider?(num)
  count = 0
  1.upto(num) do |i|
    count +=1 if num % i == 0
  end
  count == 8 ? true : false
end

n = gets.to_i
ary = [*(1..n)].select(&:odd?)
output = 0
ary.map do |e|
  output +=1 if has_8_divider?(e)
end

puts output