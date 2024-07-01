#!/usr/bin/env ruby
line1 = gets.split(" ")
min = line1[0].chars
nums = gets.split(" ").map(&:to_i)
usable_nums = (0..9).to_a.filter{|i| !nums.include?(i) }

answer = []
min.each do |c|
  answer.push(usable_nums.find{ |n| n >= c.to_i })
end

puts answer.join