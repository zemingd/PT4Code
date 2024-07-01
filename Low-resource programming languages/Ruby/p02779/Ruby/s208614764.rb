#!/usr/bin/env ruby

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end
if attrs[1].uniq.length == attrs[0][0].to_i then
  puts 'YES'
else
  puts 'NO'
end