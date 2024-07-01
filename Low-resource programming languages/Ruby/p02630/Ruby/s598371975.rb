#!/usr/bin/env ruby
a = gets.chomp.split(' ')
nums = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

o = Array.new
q.times do
  i = gets.chomp.split(' ').map(&:to_i)
  o << nums.map!{|x| x==i[0] ? i[1] : x}.sum
end

o.each do |i|
  puts i
end
