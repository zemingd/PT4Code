#!/usr/bin/env ruby

a, p = gets.chomp.split.map(&:to_i)

p2 = p + a * 3

pie = (p2 / 2.0).floor

puts pie