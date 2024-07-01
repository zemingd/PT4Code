#!/usr/bin/ruby
#encoding: utf-8

n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

m.times do
  a[a.index(a.max)] /= 2
end

puts a.inject(&:+)