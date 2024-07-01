#!/usr/bin/env ruby

require 'pp'
attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i
A = attrs[1].map{|a| a.to_i}
B = Array.new(N, 0)
A.each do |a|
  B[a-1] += 1
end
B.each do |b|
  puts b
end