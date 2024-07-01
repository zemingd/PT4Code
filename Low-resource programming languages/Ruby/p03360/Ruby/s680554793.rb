#!/usr/bin/ruby
#encoding: utf-8

a,b,c = gets.split.map(&:to_i)
k = gets.to_i

sum = a + b + c
max = [a,b,c].max
sum -= max
sum += 2**k * max
puts sum

