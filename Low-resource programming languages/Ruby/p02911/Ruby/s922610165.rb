#!/usr/bin/ruby
#encoding: utf-8

n,k,q = gets.split.map(&:to_i)
a = Array.new(q)
(0..q-1).each do |i|
  a[i] = gets.to_i - 1
end

ans = Array.new(n,k)
(0..q-1).each do |i|
  (0..n-1).each do |j|
    if a[i] != j
      ans[j] -= 1
    end
  end
  #p ans
end

(0..n-1).each do |i|
  if ans[i] > 0
    puts "Yes"
  else
    puts "No"
  end
end