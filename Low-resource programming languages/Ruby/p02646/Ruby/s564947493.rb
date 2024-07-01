#!/usr/bin/env ruby

A, V = gets.chomp.split.map(&:to_i)
B, W = gets.chomp.split.map(&:to_i)
T = gets.chomp.to_i

distance = (A - B).abs
velocity = V - W

if velocity * T >= distance
  puts 'YES'
else
  puts 'NO'
end
