#!/usr/bin/env ruby

D, T, S = gets.chomp.split.map(&:to_i)

puts D <= T * S ? 'Yes' : 'No'
