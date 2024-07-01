#!/usr/bin/ruby
# encoding: utf-8

# ABC 111 C

n = gets.chomp.to_i
v = gets.split.map(&:to_i)

dup1 = Array.new(100001,0)
dup2 = Array.new(100001,0)

# vの要素がすべて同じ数字の時
if v.uniq.size == 1 then
  puts n/2
  exit
end 

i = 0
while i < n/2 do 
  dup1[v[2*i]] += 1
  dup2[v[2*i+1]] += 1
  i += 1
end

p n - dup1.max - dup2.max



#p modv
