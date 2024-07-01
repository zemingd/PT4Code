#!/usr/bin/env ruby
n = gets.chomp

ans = 'No'
n.chars.each do |n_i|
  ans = 'Yes' if n_i == '7'
end

puts ans
