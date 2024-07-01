#!/usr/bin/env ruby

require 'pp'
attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i
S = attrs[1]

array = {}
max = 1

N.times do |i|
  a_i = attrs[i + 1][0]
  if array[a_i] == nil then
    array[a_i] = 1
  else
    array[a_i] += 1
    max = array[a_i] if max < array[a_i]
  end
end

array.delete_if { |_, num| max != num }

array.keys.sort.each{|v| puts v}