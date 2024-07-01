#!/usr/bin/env ruby

n = STDIN.gets.chomp.to_i
nums = STDIN.gets.chomp.split(' ').map &:to_i

if nums.include? 0
  puts nums.inject(0){|s, i| s+i.abs }
  exit
end

if nums.inject(1){|s, i| s * i / i.abs } > 0
  puts nums.inject(0){|s, i| s+i.abs }
else
  min = nums.map(&:abs).min
  puts nums.inject(0){|s, i| s+i.abs } - 2*min
end

