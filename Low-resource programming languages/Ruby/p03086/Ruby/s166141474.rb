#!/usr/bin/env ruby

input = gets.chomp

count = 0
result = 0
input.chars do |c|
  if 'ACGT'.index(c) then
    count += 1
  else
    result = count if count > result
    count = 0
  end
end
puts result