#!/usr/bin/env ruby

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0]

puts (N.to_i/2.0).ceil