#!/usr/bin/env ruby

a, b = gets.chomp.split.map(&:to_i)

puts "#{a/b} #{a%b} #{format('%.5f', a.to_f/b)}"