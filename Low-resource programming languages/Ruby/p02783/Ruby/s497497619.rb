#!/usr/bin/env ruby
h, a = gets.chomp.split(' ').map(&:to_i)

puts (h.to_f/a).ceil.to_i

