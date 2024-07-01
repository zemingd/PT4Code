#!/usr/bin/env ruby

n = gets.chomp.to_i
h = gets.chomp.split(/ /).map(&:to_i)

max = h.shift
count = 1

h.each do |r|
  if max <= r
    count += 1
    max = r
  end
end

puts count
