#!/usr/bin/env ruby
a, b = STDIN.readline.split().map(&:to_i)
puts (a*b).even?() ? 'Even' : 'Odd'
