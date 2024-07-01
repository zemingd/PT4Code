#!/usr/bin/ruby
#encoding: utf-8

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0

(0..n-1).each do |i|
  if a[i] >= b[i] 
    ans += b[i]
  else
    ans += a[i]
    b[i] -= a[i]
    if a[i+1] >= b[i]
      ans += b[i]
      a[i+1] -= b[i]
    else
      ans += a[i+1]
      a[i+1] = 0
    end
  end
end

puts ans
