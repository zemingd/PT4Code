#!/usr/bin/ruby
#encoding: utf-8

n,m = gets.split.map(&:to_i)
a = Array.new(m)
b = Array.new(m)
(0..m-1).each do |i|
  a[i],b[i] = gets.split.map(&:to_i)
  a[i] -= 1
  b[i] -= 1
end

ans = Array.new(n,0)
(0..n-1).each do |i|
  (0..m-1).each do |j|
    if a[j] == i or b[j] == i
      ans[i] += 1
    end
  end
end

(0..n-1).each do |i|
  puts ans[i]
end