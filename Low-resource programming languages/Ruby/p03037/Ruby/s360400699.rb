#!/usr/bin/ruby
# encoding: utf-8

#main

# input 
N,M = gets.split.map(&:to_i)
L = Array.new(M)
R = Array.new(M)

(0..M-1).each do |i|
  L[i],R[i] = gets.split.map(&:to_i)
end

ans = 0
ans max(R.min - L.max + 1 , 0)

puts ans  
