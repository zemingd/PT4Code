#!/usr/bin/ruby
#encoding: utf-8

a,b,c = gets.split.map(&:to_i)
ans = 0
if a-b <= c
  ans = c-(a-b)
else
  ans = 0
end

puts ans