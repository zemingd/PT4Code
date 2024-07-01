#!/usr/bin/ruby
#encoding: utf-8

require 'matrix'

#input
n,d = gets.split.map(&:to_i)
x = Array.new(n)
v = Array.new(n)
(0..n-1).each do |i|
  x[i] = gets.split.map(&:to_i)
  v[i] = Vector.elements(x[i],true)
end

ans = 0

(0..n-1).each do |i|
  (i+1..n-1).each do |j|
    dist = (v[i] - v[j]).r
    if dist == dist.to_i
      ans += 1
    end
  end
end

puts ans