#!/usr/bin/env ruby

a, b = gets.chomp.split(/ /).map(&:to_i)

max = a + b
max =  (2 * a - 1) if max < (2 * a - 1)
max = (2 * b - 1) if max < (2 * b - 1)

puts max

