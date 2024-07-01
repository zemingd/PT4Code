#!/usr/bin/env ruby
a = gets.chomp.split(' ')
nums = gets.chomp
q = gets.chomp.to_i

o = Array.new
q.times do
  i = gets.chomp.split(' ')
  nums.gsub!(i[0], i[1])
  p nums.split(' ').map(&:to_i).sum
end