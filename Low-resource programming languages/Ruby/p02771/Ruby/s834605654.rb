#!/usr/bin/env ruby

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

A = attrs[0][0]
B = attrs[0][1]
C = attrs[0][2]

if (A == B && A != C) || (A == C && A != B) || (C == B && A != C) then
  puts 'Yes'
else
  puts "No"
end