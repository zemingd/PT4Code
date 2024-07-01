#!/usr/bin/env ruby

n = gets.chomp
a = gets.chomp.split(/ /)
b = []
a.each do |i|
  i = i.to_i
  b << i if i % 2 == 0
end
#b.sort!

j = 0
b.each do |k|
  while(k % 2 == 0) do
    j += 1
    k /= 2
  end
end

puts j
