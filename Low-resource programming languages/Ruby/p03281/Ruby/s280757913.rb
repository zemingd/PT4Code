#!/usr/bin/env ruby
require 'prime'

n = gets.chomp.to_i

counter = Array.new(n + 1, 0)

1.upto(n) do |i|
  1.upto(i) do |j|
    counter[i] += 1 if i % j == 0
  end
end

ans = 0
counter.each_with_index do |c_i, i|
  ans += 1 if i.odd? && c_i == 8
end

puts ans
