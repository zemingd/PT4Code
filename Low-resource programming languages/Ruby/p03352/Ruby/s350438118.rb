#!/usr/bin/ruby 
#encoding: utf-8

x = gets.to_i
max = 0

(1..x).each do |i|
  (2..10).each do |j|
    a = i ** j
    if a <= x
      max = [max,a].max
    end
  end
end

puts max
