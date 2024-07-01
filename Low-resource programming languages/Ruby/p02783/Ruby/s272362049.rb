#!/usr/bin/env ruby

H, A = gets.chomp.split.map(&:to_i)

puts (H.to_f / A).ceil
