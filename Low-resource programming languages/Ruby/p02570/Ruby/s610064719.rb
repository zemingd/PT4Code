#!/usr/bin/env ruby
# require 'pry'

# dpテンプレ

# i = gets.chomp.split('')
d,t,s = gets.split(' ').map(&:to_i)
x= d/s
puts x <= t ? 'Yes' : 'No'
