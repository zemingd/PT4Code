#!/usr/bin/ruby
#encoding: utf-8

n,x = gets.split.map(&:to_i)
m = Array.new(n)
(0..n-1).each do |i|
  m[i] = gets.to_i
end

msum = m.inject(:+)
min = m.min
puts n + (x-msum)/min
