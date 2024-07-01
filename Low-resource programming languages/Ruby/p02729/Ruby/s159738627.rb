#!/usr/bin/env ruby
input = gets.chomp.split(" ")

n = input[0] # even 
m = input[1] # odd




result = n*(n-1)  + m* (m-1)
puts result