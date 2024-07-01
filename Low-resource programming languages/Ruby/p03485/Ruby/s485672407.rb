#!/usr/bin/ruby
#encoding: utf-8

a,b = gets.split.map(&:to_i)
puts ((a+b)/2.to_f).ceil
