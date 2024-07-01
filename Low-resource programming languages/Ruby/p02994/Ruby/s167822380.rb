#!/usr/bin/env ruby
# frozen_string_literal: true
n,l= gets.split.map(&:to_i)
sum = 0
arr = []
n.times do |i|
  arr << l+i
  sum += l+i
end
sa = sum if l < 0 && n+l > 0
sa = sum - arr[-1] if l < 0 && n+l <= 0
sa = sum -arr[0] if l > 0
puts sa