#!/usr/bin/ruby
#encoding: utf-8

a,b = gets.split.map(&:to_i)

ans = 0
(1..a).each do |i|
  (1..b).each do |j|
    if i == j then
      ans += 1
    end
  end
end

puts ans
