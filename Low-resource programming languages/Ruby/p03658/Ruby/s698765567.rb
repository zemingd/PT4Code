#!/usr/bin/env ruby
n = gets.split(' ').map{|i|i.to_i}[1]
puts gets.split(' ').map{|i|i.to_i}.sort[-n,n].inject(:+)