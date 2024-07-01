#!/usr/bin/env ruby

(t, x) = gets.chomp.split(/ /).map(&:to_i)
ans = t * 1.0 / x
puts ans