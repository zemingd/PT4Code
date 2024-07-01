#!/usr/bin/ruby
# encoding: utf-8

p,q,r = gets.split.map(&:to_i)
puts [p+q,p+r,q+r].min
