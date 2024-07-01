#!/usr/bin/env ruby
# require 'pry'

# dpテンプレ

# i = gets.chomp.split('')
d,t,s = gets.split(' ').map(&:to_i)
dis = t*s

puts dis >= d ? 'Yes' : 'No'
