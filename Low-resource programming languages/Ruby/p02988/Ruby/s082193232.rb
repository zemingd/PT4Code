#!/usr/bin/ruby
#encoding: utf-8

#input
n = gets.to_i
p = gets.split.map(&:to_i)
ans = 0

(0..n-3).each do |i|
  if ((p[i] < p[i+1]) and (p[i+1] < p[i+2])) or ((p[i] > p[i+1]) and (p[i+1] > p[i+2]))
    ans += 1
  end
end

puts ans