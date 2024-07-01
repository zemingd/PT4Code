#!/usr/bin/ruby
#encoding: utf-8

n = gets.to_i
tasks = Array.new
n.times do
  a,b = gets.split.map(&:to_i)
  tasks.push([a,b])
end

#p tasks
tasks.sort_by!{|a| a[1]}

sum = 0
(0..tasks.size-1).each do |i|
  sum += tasks[i][0]
  if sum > tasks[i][1]
    puts "No"
    exit
  end
end

puts "Yes"