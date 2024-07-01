#!/usr/bin/env ruby

w, h, x, y, r = gets.chomp.split.map(&:to_i)

puts (r <= x && x <= w - r && r <= y && y <= h - r) ? 'Yes' : 'No'