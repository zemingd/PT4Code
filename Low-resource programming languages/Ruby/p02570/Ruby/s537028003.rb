#!/usr/bin/env ruby
# require 'pry'

# dpテンプレ

# i = gets.chomp.split('')
d,t,s = gets.split(' ').map(&:to_i)
x= Rational(d,s)

puts x <= t ? 'Yes' : 'No'
