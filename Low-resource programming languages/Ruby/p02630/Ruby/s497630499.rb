#!/usr/bin/env ruby
a = gets.chomp.split(' ')
nums = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

o = Array.new
q.times do
  o << gets.chomp.split(' ').map(&:to_i)
end

o.each do |i|
  nums.map!{|x| x==i[0] ? i[1] : x}
  puts nums.sum
end
