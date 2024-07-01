#!/usr/bin/ruby
# encoding: utf-8

xs = []
3.times { xs << gets.to_i}

r = (xs[0] - xs[1]) % xs[2]

puts r