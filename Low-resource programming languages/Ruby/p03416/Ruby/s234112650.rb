#!/usr/bin/ruby
#encoding: utf-8

a,b = gets.split.map(&:to_i)

cnt = 0
(a..b).each do |i|
  str = i.to_s
  if str[0] == str[4] and str[1] == str[3]
    cnt += 1
  end
end

puts cnt