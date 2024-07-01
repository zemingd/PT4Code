#!/usr/bin/env ruby

X, N = gets.chomp.split.map(&:to_i)
P = gets.chomp.split.map(&:to_i)

L = (0..101).to_a - P

min = Float::INFINITY
ans = nil

L.each do |p|
  diff = (p - X).abs
  if min > diff
    min = diff
    ans = p
  end
end

puts ans
