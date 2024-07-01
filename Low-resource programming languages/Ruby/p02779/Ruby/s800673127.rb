#!/usr/bin/env ruby

#c
x = gets
nums = gets.chomp.split(/ /).map(&:to_i)
nums2 = nums.uniq

if nums.size != nums2.size
  puts "NO"
else
  puts "YES"
end
