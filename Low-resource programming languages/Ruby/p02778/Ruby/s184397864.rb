#!/usr/bin/env ruby

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

S = attrs[0][0]
res = ''
S.length .times {|i| res +='x'}
puts res