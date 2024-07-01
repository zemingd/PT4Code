#!/usr/bin/ruby
#encoding: utf-8

# input 
n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a = Array.new(n)
ans = 0
(0..n-1).each do |i|
  a[i] = gets.split.map(&:to_i)
end

(0..n-1).each do |i|
  sum = 0
  (0..m-1).each do |j|
    sum += a[i][j]*b[j]
  end
  sum += c
  
  if sum > 0 
    ans += 1
  end
end

puts ans
