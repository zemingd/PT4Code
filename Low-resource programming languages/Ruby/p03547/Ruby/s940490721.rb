#!/usr/bin/env ruby
x, y = STDIN.readline.strip.split(' ')
hex = ['A', 'B', 'C', 'D', 'E', 'F']
hx = hex.find_index(x)
hy = hex.find_index(y)
puts "#{hx < hy ? '<' : hx == hy ? '=' : '>'}"
