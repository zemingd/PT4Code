#!/usr/bin/env ruby

n = gets.chomp.to_i
a = gets.chomp.split(/ /).map(&:to_i)
b = []
a.each_with_index do |num, idx|
  b[idx] = num - (idx + 1)
end
b.sort!
s = b.size
i = b[(s / 2).ceil - 1]

nums = 0
b.each do |n|
  nums += (n - i).abs
end
puts nums
