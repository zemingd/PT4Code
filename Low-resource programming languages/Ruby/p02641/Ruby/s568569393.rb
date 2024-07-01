#!/usr/bin/env ruby
x, n = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)

p = p.sort

ans = 0

if p.empty?
  puts x
else
  0.upto(101) do |i|
    next if p.include?(i)

    if (x - i).abs < (x - ans).abs
      ans = i
    elsif (x - i).abs == (x - ans).abs && i < ans
      ans = i
    end
  end
  puts ans
end

