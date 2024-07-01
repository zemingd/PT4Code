#!/usr/bin/env ruby
line1 = gets.split(" ")
min_num = line1[0].to_i
min = line1[0].chars
nums = gets.split(" ").map(&:to_i)
usable_nums = (0..9).to_a.filter{|i| !nums.include?(i) }

answer = []
min.each do |c|
  answer.push(usable_nums.find{ |n| n >= c.to_i })
end

answer = answer.join
if !answer || answer.to_i < min_num
  head = usable_nums.filter{ |n| n != 0 }.first.to_s
  min_num = usable_nums.first.to_s
  answer = [head,*min.map{|i| min_num }].join
end

puts answer