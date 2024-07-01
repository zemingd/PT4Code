#!/usr/bin/env ruby

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i
A = attrs[1]

flag = true
N.times do |i|
  a_i = A[i].to_i
  next unless a_i % 2 == 0
  next if (a_i % 3 == 0 || a_i % 5 == 0)
  flag = false
  break
end

puts (flag) ? 'APPROVED' : 'DENIED'