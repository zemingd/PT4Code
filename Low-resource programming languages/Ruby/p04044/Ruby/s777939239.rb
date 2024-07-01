#!/usr/bin/env ruby
n, l = STDIN.readline.strip.split(' ').map(&:to_i)
s = []
n.times{s << STDIN.readline.strip }
puts "#{s.sort.join('')}"
