#!/usr/bin/env ruby

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

S = attrs[0][0]
T = attrs[0][1]

numS = attrs[1][0].to_i
numT = attrs[1][1].to_i

U = attrs[2][0]
if S == U then
    puts "#{numS - 1} #{numT}"
else
    puts "#{numS} #{numT - 1}"
end