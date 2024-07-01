#!/usr/bin/env ruby

(n, i) = gets.chomp.split(/ /).map(&:to_i)

res = n - i + 1
puts res
