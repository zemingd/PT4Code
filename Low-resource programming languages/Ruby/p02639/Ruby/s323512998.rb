#!/usr/bin/env ruby
input = gets.chomp.split(" ").map(&:to_i)

puts input.find_index(0) + 1
