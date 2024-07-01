#!/usr/bin/ruby
#encoding: utf-8

n = gets.to_i
h = Hash.new(0)

(0..n-1).each do |i|
  s = gets.chomp.split("")
  s2 = s.sort.join
  h[s2] += 1
end

ans = 0

h.each do |key,value|
  ans += value * (value-1)/2
end

puts ans