#!/usr/bin/env ruby
# frozen_string_literal: true
n = gets.to_i
w = gets.split.map(&:to_i)
sum = w.inject(:+)
min = sum
diff = 0
(0...n-1).each do |i|
  diff += w[i]
  min = (diff-(sum-diff)).abs if (diff - (sum - diff)).abs < min
end
puts min

