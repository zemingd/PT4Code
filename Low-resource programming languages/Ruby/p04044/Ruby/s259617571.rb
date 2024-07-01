#!/usr/bin/env ruby
nums = gets.split(" ")
strings = []
(0..(nums[0].to_i - 1)).each do |i|
  strings.push(gets.slice(0,nums[1].to_i))
end

puts strings.sort.join
