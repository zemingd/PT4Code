#!/usr/bin/env ruby

s = gets.chomp
t = gets.chomp
# nums = gets.split.map(&:to_i)

res = ""
added = t[-1]
if s + added == t
  res = "Yes"
else
  res = "No"
end
puts res