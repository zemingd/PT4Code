#!/usr/bin/env ruby
A = gets
N = gets.chomp.split.map(&:to_i)

if N.sort[0] == 0
  puts 0
  return
end

result = 1
N.each do |n|
  result *= n
  if 1e18 < result
    puts -1
    return
  end
end

puts result
