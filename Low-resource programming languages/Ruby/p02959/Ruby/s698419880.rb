#!/bin/env ruby

s = STDIN.readlines
n = s[0]
a = s[1].split(" ").map(&:to_i)
b = s[2].split(" ").map(&:to_i)

c = 0

b.each_index do |i|
  if b[i] <= a[i]
    c = c + b[i]
  elsif b[i] > a[i]
    if b[i] < a[i] + a[i+1]
      c = c + b[i]
      a[i+1] = a[i] + a[i+1] - b[i]
    elsif b[i] >= a[i] + a[i+1]
      c = c + a[i] + a[i+1]
      a[i+1] = 0
    end
  end
end

puts c
