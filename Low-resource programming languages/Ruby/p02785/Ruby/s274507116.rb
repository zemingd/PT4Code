#!/usr/bin/env ruby
n, k = gets.chomp.split(' ').map(&:to_i)
h_array = gets.chomp.split(' ').map(&:to_i)
 
h_array = h_array.sort.reverse
arr =  h_array.slice(k, h_array.length)

puts arr ? arr.inject(:+) : 0


