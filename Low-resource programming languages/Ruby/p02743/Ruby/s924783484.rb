#!/usr/bin/env ruby
require 'complex'

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end
a = attrs[0][0].to_i
b = attrs[0][1].to_i
c = attrs[0][2].to_i

if (a >= c || b >= c) then
  puts 'No'
else
  if (a*4 < c && b*4 < c) then
    puts 'Yes'
  else
    if ( (Math.sqrt(a) + Math.sqrt(b)) < Math.sqrt(c)) then
      puts 'Yes'
    else
      puts 'No'
    end
  end
end

