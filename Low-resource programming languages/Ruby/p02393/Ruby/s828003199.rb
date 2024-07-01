#!/usr/bin/env ruby

numbers = []
numbers[0],numbers[1],numbers[2] = gets.split.map(&:to_i)
numbers.sort!
puts "#{numbers[0]} #{numbers[1]} #{numbers[2]}"
