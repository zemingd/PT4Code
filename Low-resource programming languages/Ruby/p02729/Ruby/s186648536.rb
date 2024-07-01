#!/usr/bin/env ruby
input = gets.chomp.split(" ")

n = input[0].to_i # even 
m = input[1].to_i # odd




result = n*(n-1)  + m* (m-1)
puts result