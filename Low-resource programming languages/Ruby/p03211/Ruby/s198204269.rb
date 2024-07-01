#!/usr/bin/ruby
#encoding: utf-8

s = gets.chomp
Fav = 753

min = 1000
(0..s.size-3).each do |i|
  tmp = (s[i,3].to_i - Fav).abs
  if min >= tmp
    min = tmp
  end
end

puts min 
