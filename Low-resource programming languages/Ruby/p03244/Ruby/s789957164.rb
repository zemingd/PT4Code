#!/usr/bin/ruby
# encoding: utf-8

# ABC 111 C

n = gets.chomp.to_i
v = gets.split.map(&:to_i)

# vの要素がすべて同じ数字の時
if v.uniq.size == 1 then
  puts n/2
  exit
end 

p v.uniq.size - 2

#p modv
