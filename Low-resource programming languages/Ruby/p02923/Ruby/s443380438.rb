#!/usr/bin/ruby
#encoding: utf-8

n = gets.to_i
h = gets.split.map(&:to_i)

ary = []
sum = Array.new(n,0)

(0..n-2).each do |i|
  if h[i] >= h[i+1]
    ary.push('T')
  else
    ary.push('F')
  end
end

(1..n-1).each do |i|
  if ary[i] == 'T'
    sum[i] = sum[i-1] + 1
  else
    sum[i] = 0
 end
end

puts sum.max